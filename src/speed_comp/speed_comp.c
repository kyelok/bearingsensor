/*
 * src/speed_comp/speed_comp.c — implementation. See speed_comp.h.
 */

#include "speed_comp.h"
#include "word_mem.h"

void speed_comp_init(speed_comp_table_t *t)
{
    if (!t) return;
    word_zero((Uint16*)t->reference, BWM_SPEED_BANDS * BWM_MAX_SENSORS);
    t->anchor_band_low  = -1;
    t->anchor_band_mid  = -1;
    t->anchor_band_high = -1;
}

void speed_comp_learning_init(speed_comp_learning_state_t *l)
{
    if (!l) return;
    word_zero(l->count[0], BWM_SPEED_BANDS * BWM_MAX_SENSORS);
}

int speed_comp_rpm_to_band(Uint16 rpm, Uint16 nominal_rpm)
{
    if (nominal_rpm == 0) return -1;
    /* 20%–110% maps to bands 0..149. */
    Uint32 min_rpm = (Uint32)nominal_rpm * SPEED_COMP_MIN_NOMINAL_PCT / 100;
    Uint32 max_rpm = (Uint32)nominal_rpm * SPEED_COMP_MAX_NOMINAL_PCT / 100;
    if ((Uint32)rpm < min_rpm) return -1;

    if ((Uint32)rpm > max_rpm) return BWM_SPEED_BANDS - 1; /* clamp / extrapolate */

    Uint32 span = max_rpm - min_rpm;
    if (span == 0) return -1;
    Uint32 band = ((Uint32)rpm - min_rpm) * BWM_SPEED_BANDS / span;
    if (band >= BWM_SPEED_BANDS) band = BWM_SPEED_BANDS - 1;
    return (int)band;
}

Int16 speed_comp_lookup(const speed_comp_table_t *t, int band, bwm_sensor_id_t sensor)
{
    if (!t) return 0;
    if (band < 0 || band >= BWM_SPEED_BANDS) return 0;
    if (sensor >= BWM_MAX_SENSORS) return 0;
    return t->reference[band][sensor];
}

void speed_comp_record_fine_sample(speed_comp_table_t *t,
                                   speed_comp_learning_state_t *l,
                                   int band, bwm_sensor_id_t sensor,
                                   Int16 sample)
{
    if (!t || !l) return;
    if (band < 0 || band >= BWM_SPEED_BANDS) return;
    if (sensor >= BWM_MAX_SENSORS) return;

    /* Running average update (incremental). */
    Uint16 n = l->count[band][sensor];
    if (n < SPEED_COMP_FINE_SAMPLES_REQUIRED) {
        Int32 cur = t->reference[band][sensor];
        Int32 next = (cur * (Int32)n + sample) / (Int32)(n + 1);
        t->reference[band][sensor] = (Int16)next;
        l->count[band][sensor] = n + 1;
    }
}

int speed_comp_finalize_band_if_ready(const speed_comp_learning_state_t *l,
                                      int band, bwm_sensor_id_t sensor)
{
    if (!l) return 0;
    if (band < 0 || band >= BWM_SPEED_BANDS) return 0;
    if (sensor >= BWM_MAX_SENSORS) return 0;
    return l->count[band][sensor] >= SPEED_COMP_FINE_SAMPLES_REQUIRED;
}

Int16 speed_comp_interpolate(Int16 ref_low, int band_low,
                             Int16 ref_high, int band_high,
                             int target_band)
{
    if (band_high == band_low) return ref_low;
    Int32 num = (Int32)(ref_high - ref_low) * (Int32)(target_band - band_low);
    Int32 den = (Int32)(band_high - band_low);
    return (Int16)(ref_low + num / den);
}

Int16 speed_comp_apply(const speed_comp_table_t *t, bwm_sensor_id_t sensor,
                       Uint16 rpm, Uint16 nominal_rpm, Int16 raw)
{
    int band = speed_comp_rpm_to_band(rpm, nominal_rpm);
    if (band < 0) return raw; /* below threshold: no comp applied (caller disregards) */
    Int16 ref = speed_comp_lookup(t, band, sensor);
    return raw - ref;
}

/* ------------------------------------------------------------------ */
/* §2.2-A — sample stability gate                                      */
/* ------------------------------------------------------------------ */

void speed_comp_stability_init(speed_comp_stability_state_t *s)
{
    if (!s) return;
    s->pending_sample = 0;
    s->pending_rpm    = 0;
    s->has_pending    = 0;
}

int speed_comp_record_with_stability_gate(speed_comp_table_t *t,
                                          speed_comp_learning_state_t *l,
                                          speed_comp_stability_state_t *gate,
                                          bwm_sensor_id_t sensor,
                                          Uint16 current_rpm,
                                          Uint16 nominal_rpm,
                                          Int16 current_sample)
{
    if (!t || !l || !gate) return 0;
    if (nominal_rpm == 0) return 0;

    if (!gate->has_pending) {
        /* First sample: buffer and wait. */
        gate->pending_rpm    = current_rpm;
        gate->pending_sample = current_sample;
        gate->has_pending    = 1;
        return 0;
    }

    /* Compare current RPM vs buffered RPM. */
    Uint32 prev = gate->pending_rpm;
    Uint32 cur  = current_rpm;
    Uint32 delta = (cur > prev) ? (cur - prev) : (prev - cur);
    Uint32 threshold = (Uint32)nominal_rpm * SPEED_COMP_STABILITY_DELTA_PCT / 100;

    if (delta > threshold) {
        /* Spec: both samples are to be discarded. Drop buffer, drop current. */
        gate->has_pending    = 0;
        gate->pending_rpm    = 0;
        gate->pending_sample = 0;
        return 0;
    }

    /* Stable — commit the buffered sample. */
    int band = speed_comp_rpm_to_band(gate->pending_rpm, nominal_rpm);
    if (band < 0) {
        /* Buffered RPM out of valid range; can't commit, but the gate
         * itself produced a stable result, so the new sample replaces
         * the buffer (the engine has stabilised). */
        gate->pending_rpm    = current_rpm;
        gate->pending_sample = current_sample;
        return 0;
    }
    speed_comp_record_fine_sample(t, l, band, sensor, gate->pending_sample);
    gate->pending_rpm    = current_rpm;
    gate->pending_sample = current_sample;
    return 1;
}

/* ------------------------------------------------------------------ */
/* §2.3-A — final compensation curve weighted blend                    */
/* ------------------------------------------------------------------ */

Int16 speed_comp_blend_undersampled(Int16 value_avg_nhits,
                                    Uint16 n_hits,
                                    Int16 value_interp)
{
    if (n_hits == 0) return value_interp;
    if (n_hits >= SPEED_COMP_FINE_SAMPLES_REQUIRED) return value_avg_nhits;
    /* REF = (N·V_avg + (1000−N)·V_interp) / 1000 */
    Int32 nh    = (Int32)n_hits;
    Int32 rest  = (Int32)SPEED_COMP_FINE_SAMPLES_REQUIRED - nh;
    Int32 num   = nh * (Int32)value_avg_nhits + rest * (Int32)value_interp;
    Int32 blend = num / (Int32)SPEED_COMP_FINE_SAMPLES_REQUIRED;
    return (Int16)blend;
}

/* Pick the two anchor bands that bracket `band` for interp/extrapolation.
 * Returns 0 if usable anchors found, writes the chosen pair via the
 * `out_low_band` / `out_high_band` pointers. */
static int pick_anchors_for_band(const speed_comp_table_t *t,
                                 int band,
                                 int *out_low_band,
                                 int *out_high_band)
{
    int a_lo = t->anchor_band_low;
    int a_md = t->anchor_band_mid;
    int a_hi = t->anchor_band_high;
    if (a_lo < 0 || a_md < 0 || a_hi < 0) return -1;

    /* Three anchors → two segments. Pick the segment that contains the band,
     * or the nearest segment for extrapolation. */
    if (band <= a_md) {
        *out_low_band  = a_lo;
        *out_high_band = a_md;
    } else {
        *out_low_band  = a_md;
        *out_high_band = a_hi;
    }
    return 0;
}

void speed_comp_finalize_table(speed_comp_table_t *t,
                               const speed_comp_learning_state_t *l)
{
    if (!t || !l) return;
    int b, s;
    for (s = 0; s < BWM_MAX_SENSORS; s++) {
        for (b = 0; b < BWM_SPEED_BANDS; b++) {
            Uint16 n = l->count[b][s];
            if (n >= SPEED_COMP_FINE_SAMPLES_REQUIRED) continue;

            int lo_band, hi_band;
            if (pick_anchors_for_band(t, b, &lo_band, &hi_band) != 0) continue;
            Int16 ref_lo = t->reference[lo_band][s];
            Int16 ref_hi = t->reference[hi_band][s];
            Int16 v_interp = speed_comp_interpolate(ref_lo, lo_band,
                                                    ref_hi, hi_band, b);
            Int16 v_avg = t->reference[b][s];
            t->reference[b][s] = speed_comp_blend_undersampled(v_avg, n, v_interp);
        }
    }
}
