/*
 * src/system/alarm_relays_8_7.h — Alarm/Slowdown/SystemFail relay
 * interface per spec rev 07 chapter 8 (NEW in v8.6, refined in v8.7).
 *
 * @spec 8.7 §8 — Interface to Alarm and Monitoring System
 *
 * The standalone BWM system must provide three relay outputs:
 *   - Alarm relay (XS8126), normally closed: triggered at pre-warning
 *     and alarm levels. Toggled (closed-opened-closed) on level
 *     escalation. Toggle period 1 s default, adjustable 0.1–5 s.
 *   - Slowdown relay (XS8127), normally open with terminals for
 *     supervision resistor: triggered at slowdown levels.
 *   - System Fail relay (XS8129), normally closed: triggered at
 *     power fail / watchdog fail / system unavailable.
 *
 * In integrated systems (where the BWM is part of a larger MAS), the
 * relays may not be physically present but the same functional
 * triggering must be preserved.
 *
 * v6.20 firmware has alarm output capability via digout.c, but the
 * XS81xx tag numbering and toggle semantics are NEW in 8.6 — Phase 4
 * task to fully comply.
 *
 * STATUS (per PR review F-08): this header models the relay STATE but
 * does NOT yet model the spec-mandated escalation toggle (closed-opened-
 * closed pulse on level transition). The toggle period is stored but
 * never consulted. The escalation transition handler is a Phase B-4
 * deliverable; track in host/docs/POST_AUTONOMOUS_TODO.md and
 * INTEGRATION_LAYER_DESIGN.md.
 *
 * Currently `set_alarm` and `set_prewarning` write the same enum value;
 * a future API revision will distinguish the two and arm a toggle pulse
 * on the pre-warning → alarm transition.
 */

#ifndef BWM_ALARM_RELAYS_8_7_H
#define BWM_ALARM_RELAYS_8_7_H

#include "core/types.h"

typedef enum {
    BWM_RELAY_NORMAL = 0,        /* nothing active */
    BWM_RELAY_PRE_WARNING_OR_ALARM,
    BWM_RELAY_SLOWDOWN,
    BWM_RELAY_SYSTEM_FAIL
} bwm_relay_state_t;

#define BWM_RELAY_TOGGLE_DEFAULT_SECONDS  1.0f
#define BWM_RELAY_TOGGLE_MIN_SECONDS      0.1f
#define BWM_RELAY_TOGGLE_MAX_SECONDS      5.0f

typedef struct {
    bwm_relay_state_t alarm_state;
    bwm_relay_state_t slowdown_state;
    bwm_relay_state_t fail_state;
    float             toggle_period_seconds;
} alarm_relay_state_t;

void alarm_relays_init(alarm_relay_state_t *s);

/* @spec 8.7 §8 — set / clear / toggle the three relays. */
void alarm_relays_set_alarm    (alarm_relay_state_t *s);
void alarm_relays_set_prewarning(alarm_relay_state_t *s);
void alarm_relays_clear_alarm  (alarm_relay_state_t *s);
void alarm_relays_set_slowdown (alarm_relay_state_t *s);
void alarm_relays_clear_slowdown(alarm_relay_state_t *s);
void alarm_relays_set_system_fail(alarm_relay_state_t *s);
void alarm_relays_clear_system_fail(alarm_relay_state_t *s);

/* @spec 8.7 §8 — toggle alarm relay on level escalation (closed-
 * opened-closed) for `toggle_period_seconds`. Returns 0 if the
 * configured toggle period is out of range. */
int alarm_relays_set_toggle_period(alarm_relay_state_t *s, float seconds);

#endif /* BWM_ALARM_RELAYS_8_7_H */
