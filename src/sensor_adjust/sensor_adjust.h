/*
 * src/sensor_adjust/sensor_adjust.h — Sensor adjustment / failure handling.
 *
 * @spec 8.5 §5 — Sensor Adjustment (single combined procedure)
 * @spec 8.6/8.7 §5 — Sensor Failure (split into 3 procedures + further actions)
 *
 * v6.20 implements the v8.5 form. Phase 4 (upgrade to v8.7) will
 * introduce the three-procedure split. Both forms are housed in this
 * module; the 8.5 form is the active default.
 */

#ifndef BWM_SENSOR_ADJUST_H
#define BWM_SENSOR_ADJUST_H

#include "core/types.h"

#define SENSOR_ADJUSTMENT_DURATION_HOURS_8_5  50
#define SENSOR_ADJUSTMENT_NEIGHBOUR_HOURS_8_5 500

/* Per-sensor adjustment state. */
typedef struct {
    int    in_adjustment;        /* 0 or 1 */
    Uint32 hours_in_adjustment;
    float  accumulated_offset;   /* O₁: physical offset of the new sensor */
    Uint32 sample_count;
} sensor_adjust_state_t;

void sensor_adjust_init(sensor_adjust_state_t *s);

/* Begin a sensor adjustment cycle. Slow-wear alarms suspended for
 * this sensor until the cycle completes. */
void sensor_adjust_begin(sensor_adjust_state_t *s);

/* Apply one revolution's compensated value during the 50-hour
 * accumulation. Tracks the running average. */
void sensor_adjust_apply_sample(sensor_adjust_state_t *s, float compensated_value);

/* Advance the adjustment-hours timer by one hour. Called by the integration
 * layer once per running hour. After SENSOR_ADJUSTMENT_DURATION_HOURS_8_5
 * (=50) calls, sensor_adjust_is_complete() will return 1.
 *
 * (Per PR review F-04: previously hours_in_adjustment was declared but
 * never incremented; tests bypassed the missing API by reaching into the
 * struct directly.) */
void sensor_adjust_tick_hour(sensor_adjust_state_t *s);

/*
 * @spec 8.5 §5 — wear offset formula:
 *   O = O_1 + a_1 * t_b + 500 * a_3
 * where:
 *   O_1 = current sensor offset (the running average from accumulation phase)
 *   a_1 = slope of last 500 hours of broken sensor before failure (mm/hr)
 *   t_b = time-of-breakage in hours
 *   a_3 = slope of cylinder-neighbour during time-of-breakage (mm/hr)
 */
float sensor_adjust_compute_offset_8_5(float O_1, float a_1, float t_b, float a_3);

/* Returns 1 when the 50-hour adjustment is complete. */
int sensor_adjust_is_complete(const sensor_adjust_state_t *s);

/* Returns 1 if slow-wear alarms should be suspended for this sensor. */
int sensor_adjust_alarms_should_be_suspended(const sensor_adjust_state_t *s);

#endif /* BWM_SENSOR_ADJUST_H */
