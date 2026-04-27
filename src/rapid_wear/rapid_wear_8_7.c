/*
 * src/rapid_wear/rapid_wear_8_7.c — implementation per spec rev 07.
 */

#include "rapid_wear_8_7.h"
#include <math.h>

void rapid_wear_reset_8_7(rapid_wear_sensor_state_t *s, float five_rev_avg)
{
    if (!s) return;
    s->rapid_fast = five_rev_avg;
    s->rapid_slow = 0.0f;            /* @spec 8.7 §4.5 — the headline change */
    s->rapid_wear = s->rapid_fast - s->rapid_slow;
}

float rapid_wear_deviation_sensor_8_7(const float *rws, const Uint16 *valid,
                                       Uint16 num_sensors, bwm_sensor_id_t target)
{
    if (!rws || target >= num_sensors) return 0.0f;
    float others_sum = 0.0f;
    Uint16 others_count = 0;
    for (Uint16 j = 0; j < num_sensors; j++) {
        if (j == target) continue;
        if (valid && !valid[j]) continue;
        others_sum += rws[j];
        others_count++;
    }
    if (others_count == 0) return 0.0f;
    return rws[target] - others_sum / (float)others_count;
}

float rapid_wear_deviation_cyl_8_7(const float *rws, const Uint16 *valid,
                                   Uint16 num_sensors, bwm_cylinder_id_t target_cyl)
{
    bwm_sensor_id_t fore = BWM_CYL_FORE_SENSOR(target_cyl);
    bwm_sensor_id_t aft  = BWM_CYL_AFT_SENSOR(target_cyl);
    if (!rws || fore >= num_sensors || aft >= num_sensors) return 0.0f;

    /* cylinder average across valid sensors */
    float cyl_sum = 0.0f;
    Uint16 cyl_n = 0;
    if (!valid || valid[fore]) { cyl_sum += rws[fore]; cyl_n++; }
    if (!valid || valid[aft])  { cyl_sum += rws[aft];  cyl_n++; }
    if (cyl_n == 0) return 0.0f;
    float cyl_avg = cyl_sum / (float)cyl_n;

    float others_sum = 0.0f;
    Uint16 others_n = 0;
    for (Uint16 j = 0; j < num_sensors; j++) {
        if (j == fore || j == aft) continue;
        if (valid && !valid[j]) continue;
        others_sum += rws[j]; others_n++;
    }
    if (others_n == 0) return 0.0f;
    return cyl_avg - others_sum / (float)others_n;
}

float rapid_wear_deviation_twin_8_7(const float *rws, const Uint16 *valid,
                                    Uint16 num_sensors, bwm_cylinder_id_t base_cyl)
{
    bwm_sensor_id_t s0 = BWM_CYL_FORE_SENSOR(base_cyl);
    bwm_sensor_id_t s1 = BWM_CYL_AFT_SENSOR(base_cyl);
    bwm_sensor_id_t s2 = BWM_CYL_FORE_SENSOR(base_cyl + 1);
    bwm_sensor_id_t s3 = BWM_CYL_AFT_SENSOR(base_cyl + 1);
    if (!rws || s3 >= num_sensors) return 0.0f;

    /* 4-sensor average across the two cylinders */
    float twin_sum = 0.0f;
    Uint16 twin_n = 0;
    if (!valid || valid[s0]) { twin_sum += rws[s0]; twin_n++; }
    if (!valid || valid[s1]) { twin_sum += rws[s1]; twin_n++; }
    if (!valid || valid[s2]) { twin_sum += rws[s2]; twin_n++; }
    if (!valid || valid[s3]) { twin_sum += rws[s3]; twin_n++; }
    if (twin_n == 0) return 0.0f;
    float twin_avg = twin_sum / (float)twin_n;

    float others_sum = 0.0f;
    Uint16 others_n = 0;
    for (Uint16 j = 0; j < num_sensors; j++) {
        if (j == s0 || j == s1 || j == s2 || j == s3) continue;
        if (valid && !valid[j]) continue;
        others_sum += rws[j]; others_n++;
    }
    if (others_n == 0) return 0.0f;
    return twin_avg - others_sum / (float)others_n;
}

float rapid_wear_rwt_8_7(float rws_fore_n, float rws_aft_n,
                         float rws_fore_n1, float rws_aft_n1)
{
    return (rws_fore_n + rws_aft_n + rws_fore_n1 + rws_aft_n1) / 4.0f;
}

static inline float min_abs(float a, float b)
{
    float aa = fabsf(a);
    float ab = fabsf(b);
    return (aa < ab) ? aa : ab;
}

float rapid_wear_single_8_7(float rws, float drs)        { return min_abs(rws, drs); }
float rapid_wear_cyl_ave_8_7(float rwc, float drc)       { return min_abs(rwc, drc); }
float rapid_wear_twin_ave_8_7(float rwt, float drt)      { return min_abs(rwt, drt); }

int rapid_wear_should_pause_8_7(float delta_rpm_percent)
{
    return (delta_rpm_percent > RAPID_WEAR_DELTA_RPM_PCT_PAUSE_8_7) ? 1 : 0;
}

float rapid_wear_dynamic_alarm_8_7(float basic, float delta_rpm_percent)
{
    if (rapid_wear_should_pause_8_7(delta_rpm_percent)) return -1.0f;

    /* Apply the 16-25% floor: anything in [16, 25] becomes 16. */
    if (delta_rpm_percent >= RAPID_WEAR_DELTA_RPM_PCT_FLOOR_8_7) {
        delta_rpm_percent = RAPID_WEAR_DELTA_RPM_PCT_FLOOR_8_7;
    }
    return basic * (1.0f + delta_rpm_percent / RAPID_WEAR_K_8_7);
}
