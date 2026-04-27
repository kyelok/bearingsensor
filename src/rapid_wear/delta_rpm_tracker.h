/*
 * src/rapid_wear/delta_rpm_tracker.h — ΔRPM tracking state machine.
 *
 * @spec 8.7 §4.4 — Dynamic Rapid Alarm limits, ΔRPM tracking.
 *
 * Per PR review F-07: previously the rapid_wear_dynamic_alarm_8_7
 * function took a pre-computed delta_rpm_percent as input, but the
 * source of that value (the spec's RPM_low / RPM_high EMA tracker)
 * wasn't implemented anywhere. This module fills that gap.
 *
 * Spec formula:
 *   RPM_low,n  = min( RPM_low,n-1  * (1-x) + x*RPM_n, RPM_n )
 *   RPM_high,n = max( RPM_high,n-1 * (1-x) + x*RPM_n, RPM_n )
 *   ΔRPM_n    = RPM_high,n - RPM_low,n
 *   ΔRPM_PCT_n = ΔRPM_n * 100 / RPM_NOM
 *   x = 0.003
 *
 * Use:
 *   delta_rpm_tracker_state_t s;
 *   delta_rpm_tracker_init(&s);
 *   for each new RPM measurement:
 *       delta_rpm_tracker_update(&s, current_rpm);
 *   delta_pct = delta_rpm_tracker_pct(&s, nominal_rpm);
 *   alarm = rapid_wear_dynamic_alarm_8_7(basic, delta_pct);
 */

#ifndef BWM_DELTA_RPM_TRACKER_H
#define BWM_DELTA_RPM_TRACKER_H

#include "core/types.h"

/* @spec 8.7 §4.4 — EMA update factor for RPM_low / RPM_high tracking. */
#define DELTA_RPM_TRACKER_X  0.003f

typedef struct {
    float rpm_low;
    float rpm_high;
    int   initialized;
} delta_rpm_tracker_state_t;

void delta_rpm_tracker_init(delta_rpm_tracker_state_t *s);

/* Update the tracker with one new RPM sample. */
void delta_rpm_tracker_update(delta_rpm_tracker_state_t *s, Uint16 current_rpm);

/* Get current ΔRPM (RPM_high - RPM_low) in raw RPM units. */
float delta_rpm_tracker_delta(const delta_rpm_tracker_state_t *s);

/* Get current ΔRPM as percent of nominal RPM. Returns 0 if nominal_rpm
 * is zero (defensive). */
float delta_rpm_tracker_pct(const delta_rpm_tracker_state_t *s, Uint16 nominal_rpm);

#endif /* BWM_DELTA_RPM_TRACKER_H */
