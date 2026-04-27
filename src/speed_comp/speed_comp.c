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
