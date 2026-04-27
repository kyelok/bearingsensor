/*
 * src/system/alarm_relays_8_7.c — implementation.
 */

#include "alarm_relays_8_7.h"

void alarm_relays_init(alarm_relay_state_t *s)
{
    if (!s) return;
    s->alarm_state    = BWM_RELAY_NORMAL;
    s->slowdown_state = BWM_RELAY_NORMAL;
    s->fail_state     = BWM_RELAY_NORMAL;
    s->toggle_period_seconds = BWM_RELAY_TOGGLE_DEFAULT_SECONDS;
}

void alarm_relays_set_alarm    (alarm_relay_state_t *s) { if (s) s->alarm_state = BWM_RELAY_PRE_WARNING_OR_ALARM; }
void alarm_relays_set_prewarning(alarm_relay_state_t *s){ if (s) s->alarm_state = BWM_RELAY_PRE_WARNING_OR_ALARM; }
void alarm_relays_clear_alarm  (alarm_relay_state_t *s) { if (s) s->alarm_state = BWM_RELAY_NORMAL; }

void alarm_relays_set_slowdown (alarm_relay_state_t *s) { if (s) s->slowdown_state = BWM_RELAY_SLOWDOWN; }
void alarm_relays_clear_slowdown(alarm_relay_state_t *s){ if (s) s->slowdown_state = BWM_RELAY_NORMAL; }

void alarm_relays_set_system_fail(alarm_relay_state_t *s) { if (s) s->fail_state = BWM_RELAY_SYSTEM_FAIL; }
void alarm_relays_clear_system_fail(alarm_relay_state_t *s) { if (s) s->fail_state = BWM_RELAY_NORMAL; }

int alarm_relays_set_toggle_period(alarm_relay_state_t *s, float seconds)
{
    if (!s) return 0;
    if (seconds < BWM_RELAY_TOGGLE_MIN_SECONDS) return 0;
    if (seconds > BWM_RELAY_TOGGLE_MAX_SECONDS) return 0;
    s->toggle_period_seconds = seconds;
    return 1;
}
