/*
 * src/slow_wear/slow_wear.h — Slow wear monitoring (MAN BWM spec §3).
 *
 * Detects slow lining degradation by comparing the present BDC level
 * to the reference established during the speed-compensation learning
 * process. Filtered values, sensor deviation, and cylinder deviation
 * are each compared to alarm and slowdown thresholds.
 *
 * @spec 8.5 §3 — Slow Wear Monitoring
 *
 * Pipeline per sensor:
 *   raw_sample → speed_comp_subtract → filter → deviation calc → threshold check
 *
 * The filter is a single-pole low-pass with x = 0.05 (spec §3.1).
 */

#ifndef BWM_SLOW_WEAR_H
#define BWM_SLOW_WEAR_H

#include "core/types.h"

#define SLOW_WEAR_FILTER_X       0.05f
#define SLOW_WEAR_EVAL_INTERVAL  30   /* @spec 8.5 §3.3.1 — at least every 30 revs */

/* Per-sensor low-pass state. */
typedef struct {
    float filtered_value;
} slow_wear_sensor_state_t;

void slow_wear_init_sensor(slow_wear_sensor_state_t *s);

/**
 * @spec 8.5 §3.1
 * @brief Apply one revolution's speed-compensated sample.
 * Updates filtered_value via SF_new = SF_old * (1-x) + sample * x. */
void slow_wear_apply_sample(slow_wear_sensor_state_t *s, float speed_compensated_sample);

/* ===== Deviation calculations (§3.2) ===== */

/**
 * @spec 8.5 §3.2
 * @brief Sensor deviation: d(s_i) = s_i - mean(s_j for j!=i).
 *
 * `is_valid[i] == 0` excludes a sensor from the "others" pool (used
 * when a sensor has failed; spec 8.6 §5.1 formalizes this). */
float slow_wear_sensor_deviation(const float *filtered_values,
                                 const Uint16 *is_valid,
                                 Uint16 num_sensors,
                                 bwm_sensor_id_t target);

/**
 * @spec 8.5 §3.2
 * @brief Cylinder deviation: d(c) = (s_fore + s_aft)/2 - mean(remaining sensors).
 *
 * If a sensor in the target cylinder is invalid, the present-cylinder
 * average uses the remaining valid sensor. If both are invalid, the
 * function returns 0 (spec mandates a "reference lost" log entry,
 * handled elsewhere). */
float slow_wear_cylinder_deviation(const float *filtered_values,
                                   const Uint16 *is_valid,
                                   Uint16 num_sensors,
                                   bwm_cylinder_id_t target_cyl);

/* ===== Evaluation (§3.3) ===== */

typedef enum {
    SLOW_WEAR_NORMAL = 0,
    SLOW_WEAR_PRE_WARNING,
    SLOW_WEAR_ALARM,
    SLOW_WEAR_SLOWDOWN
} slow_wear_status_t;

/**
 * @spec 8.5 §3.3.1
 * @brief Classify a filtered/deviation value against alarm/slowdown thresholds.
 * Units: mm hundredths. */
slow_wear_status_t slow_wear_classify(int value_mm_hundredths,
                                      int alarm_threshold,
                                      int slowdown_threshold);

/**
 * @spec 8.5 §3.3.2
 * @brief Pre-warning check against the 6-hour average.
 * Returns 1 if pre-warning triggered. */
int slow_wear_pre_warning_check(int six_hour_average_mm_hundredths,
                                int pre_warning_limit);

/**
 * @spec 8.5 §3.3.2
 * @brief Acknowledging a pre-warning raises the limit by 0.25 mm (= 25 hundredths).
 * Returns the new limit. */
int slow_wear_acknowledge_pre_warning(int current_limit);

#endif /* BWM_SLOW_WEAR_H */
