/*
 * src/slow_wear/slow_wear.c — implementation. See slow_wear.h.
 */

#include "slow_wear.h"
#include <stdlib.h>

void slow_wear_init_sensor(slow_wear_sensor_state_t *s)
{
    if (!s) return;
    s->filtered_value = 0.0f;
}

void slow_wear_apply_sample(slow_wear_sensor_state_t *s, float v)
{
    if (!s) return;
    s->filtered_value = s->filtered_value * (1.0f - SLOW_WEAR_FILTER_X)
                      + v * SLOW_WEAR_FILTER_X;
}

float slow_wear_sensor_deviation(const float *filtered_values,
                                 const Uint16 *is_valid,
                                 Uint16 num_sensors,
                                 bwm_sensor_id_t target)
{
    if (!filtered_values || target >= num_sensors) return 0.0f;

    float others_sum = 0.0f;
    Uint16 others_count = 0;
    for (Uint16 j = 0; j < num_sensors; j++) {
        if (j == target) continue;
        if (is_valid && !is_valid[j]) continue;
        others_sum += filtered_values[j];
        others_count++;
    }
    if (others_count == 0) return 0.0f;
    return filtered_values[target] - others_sum / (float)others_count;
}

float slow_wear_cylinder_deviation(const float *filtered_values,
                                   const Uint16 *is_valid,
                                   Uint16 num_sensors,
                                   bwm_cylinder_id_t target_cyl)
{
    if (!filtered_values) return 0.0f;
    bwm_sensor_id_t fore = BWM_CYL_FORE_SENSOR(target_cyl);
    bwm_sensor_id_t aft  = BWM_CYL_AFT_SENSOR(target_cyl);
    if (fore >= num_sensors || aft >= num_sensors) return 0.0f;

    /* Cylinder average — exclude any invalid sensor. */
    float cyl_sum = 0.0f;
    Uint16 cyl_count = 0;
    if (!is_valid || is_valid[fore]) { cyl_sum += filtered_values[fore]; cyl_count++; }
    if (!is_valid || is_valid[aft])  { cyl_sum += filtered_values[aft];  cyl_count++; }
    if (cyl_count == 0) return 0.0f;
    float cyl_avg = cyl_sum / (float)cyl_count;

    float others_sum = 0.0f;
    Uint16 others_count = 0;
    for (Uint16 j = 0; j < num_sensors; j++) {
        if (j == fore || j == aft) continue;
        if (is_valid && !is_valid[j]) continue;
        others_sum += filtered_values[j];
        others_count++;
    }
    if (others_count == 0) return 0.0f;
    return cyl_avg - others_sum / (float)others_count;
}

slow_wear_status_t slow_wear_classify(int value, int alarm_threshold, int slowdown_threshold)
{
    int magnitude = abs(value);
    if (magnitude >= slowdown_threshold) return SLOW_WEAR_SLOWDOWN;
    if (magnitude >= alarm_threshold)    return SLOW_WEAR_ALARM;
    return SLOW_WEAR_NORMAL;
}

int slow_wear_pre_warning_check(int six_hour_avg, int pre_warning_limit)
{
    return (abs(six_hour_avg) >= pre_warning_limit) ? 1 : 0;
}

int slow_wear_acknowledge_pre_warning(int current_limit)
{
    return current_limit + 25;  /* @spec 8.5 §3.3.2 — +0.25 mm */
}
