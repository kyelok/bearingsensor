/*
 * src/sensor_adjust/sensor_adjust.c — implementation.
 */

#include "sensor_adjust.h"

void sensor_adjust_init(sensor_adjust_state_t *s)
{
    if (!s) return;
    s->in_adjustment = 0;
    s->hours_in_adjustment = 0;
    s->accumulated_offset = 0.0f;
    s->sample_count = 0;
}

void sensor_adjust_begin(sensor_adjust_state_t *s)
{
    if (!s) return;
    s->in_adjustment = 1;
    s->hours_in_adjustment = 0;
    s->accumulated_offset = 0.0f;
    s->sample_count = 0;
}

void sensor_adjust_apply_sample(sensor_adjust_state_t *s, float v)
{
    if (!s || !s->in_adjustment) return;
    /* Incremental running average. */
    Uint32 n = s->sample_count;
    s->accumulated_offset = (s->accumulated_offset * (float)n + v) / (float)(n + 1);
    s->sample_count = n + 1;
}

void sensor_adjust_tick_hour(sensor_adjust_state_t *s)
{
    if (!s || !s->in_adjustment) return;
    s->hours_in_adjustment += 1;
    /* When the 50-hour duration is reached, the integration layer
     * should call sensor_adjust_is_complete() to detect completion
     * and apply the offset to the speed compensation table. */
}

float sensor_adjust_compute_offset_8_5(float O_1, float a_1, float t_b, float a_3)
{
    return O_1 + a_1 * t_b + (float)SENSOR_ADJUSTMENT_NEIGHBOUR_HOURS_8_5 * a_3;
}

int sensor_adjust_is_complete(const sensor_adjust_state_t *s)
{
    return (s && s->hours_in_adjustment >= SENSOR_ADJUSTMENT_DURATION_HOURS_8_5) ? 1 : 0;
}

int sensor_adjust_alarms_should_be_suspended(const sensor_adjust_state_t *s)
{
    return (s && s->in_adjustment) ? 1 : 0;
}
