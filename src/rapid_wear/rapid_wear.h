/*
 * src/rapid_wear/rapid_wear.h — Rapid wear algorithm (MAN BWM spec §4).
 *
 * Detects fast-developing bearing failures (e.g., filter breakage, oil
 * starvation events) by comparing fast and slow exponential moving
 * averages of speed-compensated sensor values.
 *
 * Per-sensor: maintain Rapid Slow (x=0.0001) and Rapid Fast (x=0.2)
 * floating averages. Their difference is the Rapid Wear value.
 *
 * Per-cylinder: combine fore+aft sensors → CylRapid.
 * Per-MB-position: combine adjacent sensors → TwinCylRapid (across MB).
 * Per-MB-position (vendor extension): MBSum (same arithmetic, separate
 *   tunable threshold via Modbus 4624).
 *
 * Each combined value is checked against an alarm threshold that is
 * dynamically scaled by recent ΔRPM activity (§4.5). In v8.5 the
 * dynamic alarm formula is max(Alarm_1, Alarm_2); v8.6+ simplifies to
 * a single formula. Both forms are supported; switch via the active
 * spec version (compile-time flag in core/types.h, future).
 *
 * @spec 8.5 §4 — Rapid Wear Algorithms (current implementation)
 * @spec 8.6/8.7 §4 — alternate algorithm available; see rapid_wear_8_7.h
 */

#ifndef BWM_RAPID_WEAR_H
#define BWM_RAPID_WEAR_H

#include "core/types.h"

/* ===== Per-sensor rapid wear state ===== */

typedef struct {
    float rapid_slow;      /* slow EMA, x = 0.0001 */
    float rapid_fast;      /* fast EMA, x = 0.2 */
    float rapid_wear;      /* derived: rapid_fast - rapid_slow */
} rapid_wear_sensor_state_t;

void rapid_wear_init_sensor(rapid_wear_sensor_state_t *s);

/* @spec 8.5 §4.1.1 — Rapid Slow update factor */
#define RAPID_WEAR_X_SLOW   0.0001f

/* @spec 8.5 §4.1.2 — Rapid Fast update factor */
#define RAPID_WEAR_X_FAST   0.2f

/**
 * @spec 8.5 §4.1
 * @brief Apply one sample to a sensor's rapid-wear state.
 * Updates rapid_slow, rapid_fast, and rapid_wear. */
void rapid_wear_apply_sample(rapid_wear_sensor_state_t *s,
                             float speed_compensated_value);

/* @spec 8.5 §5 — reset rapid-wear values when sensor is adjusted or
 * the speed compensation curve is updated. The 8.5 reset formula:
 *   rapid_fast = five_rev_avg
 *   rapid_slow = five_rev_avg - rapid_wear_running_avg
 *
 * (8.6 simplifies to rapid_slow = five_rev_avg - rapid_wear.
 *  8.7 simplifies further to rapid_slow = 0.) */
void rapid_wear_reset_8_5(rapid_wear_sensor_state_t *s,
                          float five_rev_avg,
                          float rapid_wear_running_avg);

/* ===== Combining values ===== */

/** @spec 8.5 §4.4.1 @brief SingleRapid = abs(Rapid Wear). */
float rapid_wear_combine_single(float rapid_wear);

/** @spec 8.5 §4.4.2 @brief CylRapid = abs(RW_fore + RW_aft). */
float rapid_wear_combine_cyl(float rw_fore, float rw_aft);

/** @spec 8.5 §4.4.3 @brief TwinCylRapid = abs(RW_aft_n + RW_fore_n+1).
 * Across the main bearing between cyl n and cyl n+1. */
float rapid_wear_combine_twin_cyl(float rw_cyl_n_aft, float rw_cyl_n_plus_1_fore);

/* @vendor MB-Sum (no spec section; see host/docs/vendor_extensions/mb_sum.md)
 * Same arithmetic as TwinCyl but with its own configurable threshold. */
float rapid_wear_combine_mb_sum(float rw_cyl_n_aft, float rw_cyl_n_plus_1_fore);

/* ===== Dynamic alarm levels (v8.5 form) =====
 *
 * Spec 8.5 §4.5: Alarm_Dynamic = max(Alarm_1, Alarm_2)
 *   Alarm_1 = basic * (1 + ΔRPM_increment / k)
 *   Alarm_2 = basic * (1 + ΔRPM_at_alarm / k) * exp(-Hits / β)
 *
 * Constants per spec 8.5 §7.2:
 *   k = 8 (shared across Single, Cyl, Twin)
 *   β = 300
 */

#define RAPID_WEAR_K_8_5     8.0f
#define RAPID_WEAR_BETA_8_5  300.0f
#define RAPID_WEAR_DELTA_RPM_CAP_8_5  4.0f
#define RAPID_WEAR_DELTA_RPM_PAUSE_THRESHOLD_8_5  15.0f

/* @spec 8.5 §4.5 */
float rapid_wear_alarm_1_8_5(float basic, float delta_rpm);

/* @spec 8.5 §4.5 */
float rapid_wear_alarm_2_8_5(float basic, float delta_rpm_at_alarm, int hits);

/* @spec 8.5 §4.5 — composition */
float rapid_wear_dynamic_alarm_8_5(float basic, float delta_rpm,
                                    float delta_rpm_at_alarm, int hits);

/* @spec 8.5 §4.5 — pause monitoring if ΔRPM exceeds 15 RPM (8.5).
 * In 8.6+ this becomes "> 25% of nominal speed". */
int rapid_wear_should_pause_monitoring_8_5(float current_delta_rpm);

#endif /* BWM_RAPID_WEAR_H */
