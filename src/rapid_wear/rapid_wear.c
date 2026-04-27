/*
 * src/rapid_wear/rapid_wear.c — implementation per the spec sections
 * cited in rapid_wear.h.
 */

#include "rapid_wear.h"
#include <math.h>
#include <stdlib.h>

/* ===== Per-sensor state ===== */

void rapid_wear_init_sensor(rapid_wear_sensor_state_t *s)
{
    if (!s) return;
    s->rapid_slow = 0.0f;
    s->rapid_fast = 0.0f;
    s->rapid_wear = 0.0f;
}

void rapid_wear_init_sensor_with_seed(rapid_wear_sensor_state_t *s, float initial_value)
{
    if (!s) return;
    s->rapid_slow = initial_value;
    s->rapid_fast = initial_value;
    s->rapid_wear = 0.0f;  /* both EMAs equal → rapid_wear is 0, no startup transient */
}

void rapid_wear_apply_sample(rapid_wear_sensor_state_t *s, float v)
{
    if (!s) return;
    s->rapid_slow = s->rapid_slow * (1.0f - RAPID_WEAR_X_SLOW) + v * RAPID_WEAR_X_SLOW;
    s->rapid_fast = s->rapid_fast * (1.0f - RAPID_WEAR_X_FAST) + v * RAPID_WEAR_X_FAST;
    s->rapid_wear = s->rapid_fast - s->rapid_slow;
}

void rapid_wear_reset_8_5(rapid_wear_sensor_state_t *s,
                          float five_rev_avg,
                          float rapid_wear_running_avg)
{
    if (!s) return;
    s->rapid_fast = five_rev_avg;
    s->rapid_slow = five_rev_avg - rapid_wear_running_avg;
    s->rapid_wear = s->rapid_fast - s->rapid_slow;
}

/* ===== Combining ===== */

float rapid_wear_combine_single(float rw)
{
    return fabsf(rw);
}

float rapid_wear_combine_cyl(float rw_fore, float rw_aft)
{
    return fabsf(rw_fore + rw_aft);
}

float rapid_wear_combine_twin_cyl(float rw_aft_n, float rw_fore_n_plus_1)
{
    return fabsf(rw_aft_n + rw_fore_n_plus_1);
}

float rapid_wear_combine_mb_sum(float rw_aft_n, float rw_fore_n_plus_1)
{
    /* Same arithmetic as TwinCyl by design (vendor extension reuses the
     * geometric pair). The DIFFERENCE is the alarm threshold (`damagemon
     * .alarmlevelmbsum`, Modbus 4624) is independently tunable.
     *
     * See host/docs/vendor_extensions/mb_sum.md. */
    return fabsf(rw_aft_n + rw_fore_n_plus_1);
}

/* ===== Dynamic alarm levels ===== */

float rapid_wear_alarm_1_8_5(float basic, float delta_rpm)
{
    if (delta_rpm > RAPID_WEAR_DELTA_RPM_CAP_8_5) {
        delta_rpm = RAPID_WEAR_DELTA_RPM_CAP_8_5;
    }
    return basic * (1.0f + delta_rpm / RAPID_WEAR_K_8_5);
}

float rapid_wear_alarm_2_8_5(float basic, float delta_rpm_at_alarm, int hits)
{
    if (delta_rpm_at_alarm > RAPID_WEAR_DELTA_RPM_CAP_8_5) {
        delta_rpm_at_alarm = RAPID_WEAR_DELTA_RPM_CAP_8_5;
    }
    return basic * (1.0f + delta_rpm_at_alarm / RAPID_WEAR_K_8_5)
                 * expf(-(float)hits / RAPID_WEAR_BETA_8_5);
}

float rapid_wear_dynamic_alarm_8_5(float basic, float delta_rpm,
                                    float delta_rpm_at_alarm, int hits)
{
    float a1 = rapid_wear_alarm_1_8_5(basic, delta_rpm);
    float a2 = rapid_wear_alarm_2_8_5(basic, delta_rpm_at_alarm, hits);
    return (a1 > a2) ? a1 : a2;
}

int rapid_wear_should_pause_monitoring_8_5(float delta_rpm)
{
    return (delta_rpm > RAPID_WEAR_DELTA_RPM_PAUSE_THRESHOLD_8_5) ? 1 : 0;
}
