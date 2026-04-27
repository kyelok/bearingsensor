/*
 * src/rapid_wear/rapid_wear_8_7.h — Rapid wear algorithm per spec
 * revision 07 ("8.7"). Sits alongside rapid_wear.h (which is the
 * 8.5 implementation) and is the active code path after the v8.7
 * upgrade.
 *
 * Major deltas from 8.5 (= rapid_wear.h):
 *
 *   §4.2 — Rapid Wear deviation calculations (NEW in 8.6).
 *          dRS_n = RWS_n - mean(other RWS)
 *          dRC_m = (RWS_fore_m + RWS_aft_m)/2 - mean(others)
 *          dRT_m = (RWS_aft_m + RWS_fore_m+1 + ...)/4 - mean(others)
 *
 *   §4.3.1 — SingleRapid    = min(|RWS|, |dRS|)        (was abs(RWS))
 *   §4.3.2 — CylinderRapidAve     = min(|RWC|, |dRC|)  (was abs(RW_F+RW_A))
 *   §4.3.3 — TwinCylinderRapidAve = min(|RWT|, |dRT|)  (was 2-sensor sum)
 *           — RWT now uses 4-sensor average across two cylinders.
 *
 *   §4.4 — Dynamic alarm formula simplified:
 *          Alarm_Dynamic = Alarm_Basic * (1 + ΔRPM_PCT / k), k = 16
 *          (no max(), no exp(-Hits/β), no β.)
 *
 *   §4.4 — ΔRPM thresholds in % of nominal RPM:
 *          - if 16% ≤ ΔRPM_PCT ≤ 25% → set ΔRPM_PCT = 16
 *          - if ΔRPM_PCT > 25%       → pause damage monitoring
 *
 *   §4.5 — Rapid Slow reset on comp-curve update (changed in 8.7):
 *          rapid_fast = five_rev_avg
 *          rapid_slow = 0     ← 8.7 simplification (was the
 *                              5RevAvg - RW_avg in 8.5; was the
 *                              5RevAvg - RW in 8.6)
 *
 *   §7.2 — Tightened alarm-limit values; see alarm_thresholds_8_7.h.
 *
 *   Pre-existing per-sensor state (rapid_wear_sensor_state_t) is
 *   reused — only the algorithms change, not the core data shape.
 */

#ifndef BWM_RAPID_WEAR_8_7_H
#define BWM_RAPID_WEAR_8_7_H

#include "core/types.h"
#include "rapid_wear.h"   /* reuses rapid_wear_sensor_state_t */

/* ===== Spec 8.7 §4.4 dynamic alarm constants ===== */

#define RAPID_WEAR_K_8_7                          16.0f
#define RAPID_WEAR_DELTA_RPM_PCT_FLOOR_8_7        16.0f  /* if 16-25%, set to 16 */
#define RAPID_WEAR_DELTA_RPM_PCT_PAUSE_8_7        25.0f  /* > 25%: pause */

/* ===== Reset (§4.5, §5.2.4) ===== */

/* @spec 8.7 §4.5 / §5.2.4 — simplest of all: rapid_slow = 0. */
void rapid_wear_reset_8_7(rapid_wear_sensor_state_t *s, float five_rev_avg);

/* ===== Deviation calculations (§4.2) ===== */

/* @spec 8.7 §4.2 — Rapid Wear sensor deviation:
 *   dRS_n = RWS_n - mean(RWS_j for j != n, valid only)
 */
float rapid_wear_deviation_sensor_8_7(const float *rws, const Uint16 *valid,
                                      Uint16 num_sensors, bwm_sensor_id_t target);

/* @spec 8.7 §4.2 — Rapid Wear cylinder deviation:
 *   dRC_m = (RWS_fore + RWS_aft)/2 - mean(other valid sensors)
 */
float rapid_wear_deviation_cyl_8_7(const float *rws, const Uint16 *valid,
                                   Uint16 num_sensors, bwm_cylinder_id_t target_cyl);

/* @spec 8.7 §4.2 — Rapid Wear twin-cylinder deviation:
 *   dRT_m = (sum of 4 sensors at cyl m and m+1)/4 - mean(other valid)
 */
float rapid_wear_deviation_twin_8_7(const float *rws, const Uint16 *valid,
                                    Uint16 num_sensors, bwm_cylinder_id_t base_cyl);

/* ===== Combining (§4.3.x) ===== */

/* @spec 8.7 §4.3.1 — SingleRapid = min(|RWS|, |dRS|) */
float rapid_wear_single_8_7(float rws, float drs);

/* @spec 8.7 §4.3.2 — CylinderRapidAve = min(|RWC|, |dRC|) */
float rapid_wear_cyl_ave_8_7(float rwc, float drc);

/* @spec 8.7 §4.3.3 — TwinCylinderRapidAve = min(|RWT|, |dRT|) */
float rapid_wear_twin_ave_8_7(float rwt, float drt);

/* @spec 8.7 §4.1.3 — RWT (twin-cylinder average) over 4 sensors */
float rapid_wear_rwt_8_7(float rws_fore_n, float rws_aft_n,
                         float rws_fore_n1, float rws_aft_n1);

/* ===== Dynamic alarm level (§4.4) ===== */

/* @spec 8.7 §4.4 — Alarm_Dynamic = Alarm_Basic * (1 + ΔRPM_PCT / k).
 * `delta_rpm_percent` is the pre-clamped value; the function does the
 * 16-25% floor and the 25%-pause check internally. Returns -1.0 if
 * monitoring should be paused (caller must skip alarming this tick). */
float rapid_wear_dynamic_alarm_8_7(float basic, float delta_rpm_percent);

/* @spec 8.7 §4.4 — pause check: > 25% nominal */
int rapid_wear_should_pause_8_7(float delta_rpm_percent);

#endif /* BWM_RAPID_WEAR_8_7_H */
