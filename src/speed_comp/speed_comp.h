/*
 * src/speed_comp/speed_comp.h — Speed (RPM) compensation (MAN BWM spec §2).
 *
 * The system compensates for the rpm-dependence of the BDC level by
 * subtracting a per-channel reference value from the raw sample. The
 * reference is built up during a multi-stage learning process:
 *
 *   §2.1 Rough cal: 3 fixed speeds, 10 min each, interpolated.
 *   §2.2 Refining: 500 hours of operation, 1000 samples per band.
 *   §2.3 Final curve: weighted blend for under-sampled bands.
 *
 * The lookup table has BWM_SPEED_BANDS rows × BWM_MAX_SENSORS columns
 * (150 × 28 in v6.20). Bands span [20%, 110%] of nominal engine speed.
 *
 * @spec 8.5 §2 — Speed (RPM) Compensation
 */

#ifndef BWM_SPEED_COMP_H
#define BWM_SPEED_COMP_H

#include "core/types.h"

/* @spec 8.5 §2.0 — sample acceptance gate */
#define SPEED_COMP_MIN_NOMINAL_PCT  20  /* below 20%: disregard */
#define SPEED_COMP_MAX_NOMINAL_PCT  110 /* above 110%: extrapolate */

#define SPEED_COMP_FINE_SAMPLES_REQUIRED  1000  /* @spec 8.5 §2.2 */
#define SPEED_COMP_REFINEMENT_HOURS       500   /* @spec 8.5 §2.2 */
#define SPEED_COMP_RECALC_INTERVAL_HOURS  50    /* @spec 8.5 §2.2 */
#define SPEED_COMP_REFINEMENT_DELTA_LIMIT_HUNDREDTHS  20  /* @spec 8.5 §2.2 — 0.2 mm */

/* @spec 8.5 §2.2-A — sample stability gate.
 * Δrpm > 5% of nominal between consecutive samples → both discarded. */
#define SPEED_COMP_STABILITY_DELTA_PCT  5

/* The reference value table — large (8400 bytes), placed in FRAM in
 * production. This is the data accessed at every revolution and is
 * the table physically loaded into the chip's compensation RAM. */
typedef struct {
    Int16 reference[BWM_SPEED_BANDS][BWM_MAX_SENSORS];
    Int16 anchor_band_low;
    Int16 anchor_band_mid;
    Int16 anchor_band_high;
} speed_comp_table_t;

/* Sample counts during learning. Lives in a different memory region
 * because it is only used during the 500-hour fine-learning phase and
 * can be placed in scratch FRAM or even on heap during learning, then
 * discarded. Separating from speed_comp_table_t halves the RAM
 * requirement for the always-resident table. */
typedef struct {
    Uint16 count[BWM_SPEED_BANDS][BWM_MAX_SENSORS];
} speed_comp_learning_state_t;

void speed_comp_init(speed_comp_table_t *t);
void speed_comp_learning_init(speed_comp_learning_state_t *l);

/**
 * @spec 8.5 §2.0
 * @brief Convert engine RPM to a band index in [0, BWM_SPEED_BANDS).
 * @return -1 if RPM is below the gate (< SPEED_COMP_MIN_NOMINAL_PCT % nominal). */
int speed_comp_rpm_to_band(Uint16 rpm, Uint16 nominal_rpm);

/**
 * @spec 8.5 §2.0
 * @brief Lookup the reference value for a (band, sensor) pair.
 * @return 0 if out of range. */
Int16 speed_comp_lookup(const speed_comp_table_t *t,
                        int band,
                        bwm_sensor_id_t sensor);

/**
 * @spec 8.5 §2.2
 * @brief Record one sample for a (band, sensor) pair during fine learning.
 * After SPEED_COMP_FINE_SAMPLES_REQUIRED samples, the average becomes the reference. */
void speed_comp_record_fine_sample(speed_comp_table_t *t,
                                   speed_comp_learning_state_t *l,
                                   int band,
                                   bwm_sensor_id_t sensor,
                                   Int16 sample_mm_hundredths);

/**
 * @spec 8.5 §2.2
 * @brief Check if a band has accumulated enough samples to be valid.
 * @return 1 if the band is valid; 0 otherwise. */
int speed_comp_finalize_band_if_ready(const speed_comp_learning_state_t *l,
                                      int band,
                                      bwm_sensor_id_t sensor);

/**
 * @spec 8.5 §2.2
 * @brief Linear interpolation between two anchor bands.
 * Used to fill bands that have not yet accumulated 1000 samples. */
Int16 speed_comp_interpolate(Int16 ref_low, int band_low,
                             Int16 ref_high, int band_high,
                             int target_band);

/**
 * @spec 8.5 §2
 * @brief Compute the speed-compensated value for a sample. */
Int16 speed_comp_apply(const speed_comp_table_t *t,
                       bwm_sensor_id_t sensor,
                       Uint16 rpm,
                       Uint16 nominal_rpm,
                       Int16 raw_sample_mm_hundredths);

/* ------------------------------------------------------------------ */
/* §2.2-A — sample stability gate                                      */
/* ------------------------------------------------------------------ */

/* Single-deep deferred-commit buffer. Holds the most recent sample
 * pending validation by the next sample's RPM. If the next RPM is
 * within 5% of nominal of the buffered RPM, the buffered sample is
 * recorded; otherwise both are discarded. */
typedef struct {
    Int16  pending_sample;
    Uint16 pending_rpm;
    int    has_pending;
} speed_comp_stability_state_t;

void speed_comp_stability_init(speed_comp_stability_state_t *s);

/**
 * @spec 8.5 §2.2-A
 * @brief Submit one fine-learning sample through the §2.2-A stability gate.
 *
 * Logic:
 *  - First call (no buffered prev): the sample is buffered. Returns 0.
 *  - Subsequent calls: |current_rpm − buffered_rpm| is compared against
 *    SPEED_COMP_STABILITY_DELTA_PCT % of nominal_rpm. If within tolerance,
 *    the buffered sample is recorded into the table at the band derived
 *    from buffered_rpm; the new sample replaces the buffer. Returns 1.
 *  - If outside tolerance, both buffered and current are discarded; the
 *    buffer is cleared. Returns 0.
 *
 * @return 1 if a buffered sample was committed to the table, 0 otherwise. */
int speed_comp_record_with_stability_gate(speed_comp_table_t *t,
                                          speed_comp_learning_state_t *l,
                                          speed_comp_stability_state_t *gate,
                                          bwm_sensor_id_t sensor,
                                          Uint16 current_rpm,
                                          Uint16 nominal_rpm,
                                          Int16 current_sample);

/* ------------------------------------------------------------------ */
/* §2.3-A — final compensation curve weighted blend                    */
/* ------------------------------------------------------------------ */

/**
 * @spec 8.5 §2.3-A
 * @brief Blend a partially-sampled band's running average with an
 * interpolated value to produce a final reference.
 *
 * Per spec: REF = (N_Hits·Value_AvgNHits + (1000−N_Hits)·Value_Interp) / 1000.
 *
 * Edge cases:
 *  - n_hits == 0 → returns value_interp (no samples; rely fully on interp).
 *  - n_hits ≥ SPEED_COMP_FINE_SAMPLES_REQUIRED → returns value_avg_nhits
 *    (already saturated; no blending needed). */
Int16 speed_comp_blend_undersampled(Int16 value_avg_nhits,
                                    Uint16 n_hits,
                                    Int16 value_interp);

/**
 * @spec 8.5 §2.3-A
 * @brief Finalize the compensation table at the end of refinement.
 *
 * Walks every (band, sensor) cell. For each cell where the sample count
 * is below SPEED_COMP_FINE_SAMPLES_REQUIRED, computes Value_Interp by
 * linearly interpolating between the table's stored anchor bands (or
 * extrapolating using slope1/slope2 outside them) and applies the
 * weighted blend. Cells with no samples and no usable anchor data are
 * left unchanged.
 *
 * @note Caller is responsible for ensuring the rough-cal anchor bands
 * (anchor_band_low/mid/high) are populated with valid reference values
 * before calling this. */
void speed_comp_finalize_table(speed_comp_table_t *t,
                               const speed_comp_learning_state_t *l);

#endif /* BWM_SPEED_COMP_H */
