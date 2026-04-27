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

#endif /* BWM_SPEED_COMP_H */
