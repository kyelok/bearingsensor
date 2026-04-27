/*
 * src/rapid_wear/delta_rpm_tracker.c — implementation.
 */

#include "delta_rpm_tracker.h"

void delta_rpm_tracker_init(delta_rpm_tracker_state_t *s)
{
    if (!s) return;
    s->rpm_low = 0.0f;
    s->rpm_high = 0.0f;
    s->initialized = 0;
}

void delta_rpm_tracker_update(delta_rpm_tracker_state_t *s, Uint16 current_rpm)
{
    if (!s) return;

    float r = (float)current_rpm;

    if (!s->initialized) {
        /* Seed both tracks at the first valid RPM so the EMA doesn't
         * have to chase from zero. */
        s->rpm_low  = r;
        s->rpm_high = r;
        s->initialized = 1;
        return;
    }

    /* Per spec §4.4:
     *   RPM_low_n  = min( RPM_low_(n-1)  * (1-x) + x*RPM_n, RPM_n )
     *   RPM_high_n = max( RPM_high_(n-1) * (1-x) + x*RPM_n, RPM_n )
     *
     * The min/max ensures that a sudden RPM change immediately moves
     * the tracker (in the right direction) — the EMA would otherwise
     * lag too far behind during fast transients. */

    float ema_low  = s->rpm_low  * (1.0f - DELTA_RPM_TRACKER_X) + r * DELTA_RPM_TRACKER_X;
    float ema_high = s->rpm_high * (1.0f - DELTA_RPM_TRACKER_X) + r * DELTA_RPM_TRACKER_X;

    s->rpm_low  = (ema_low  < r) ? ema_low  : r;
    s->rpm_high = (ema_high > r) ? ema_high : r;
}

float delta_rpm_tracker_delta(const delta_rpm_tracker_state_t *s)
{
    if (!s) return 0.0f;
    return s->rpm_high - s->rpm_low;
}

float delta_rpm_tracker_pct(const delta_rpm_tracker_state_t *s, Uint16 nominal_rpm)
{
    if (!s || nominal_rpm == 0) return 0.0f;
    return delta_rpm_tracker_delta(s) * 100.0f / (float)nominal_rpm;
}
