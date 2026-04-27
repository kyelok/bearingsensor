/*
 * src/alarms/alarm_thresholds.c — implementation. See alarm_thresholds.h.
 */

#include "alarm_thresholds.h"

void alarm_latch_set_alarm     (alarm_latch_state_t *s) { if (s) s->alarm_latched = 1; }
void alarm_latch_set_slowdown  (alarm_latch_state_t *s) { if (s) s->slowdown_latched = 1; }
void alarm_latch_set_prewarning(alarm_latch_state_t *s) { if (s) s->prewarning_latched = 1; }

void alarm_latch_clear_alarm     (alarm_latch_state_t *s) { if (s) s->alarm_latched = 0; }
void alarm_latch_clear_slowdown  (alarm_latch_state_t *s) { if (s) s->slowdown_latched = 0; }
void alarm_latch_clear_prewarning(alarm_latch_state_t *s) { if (s) s->prewarning_latched = 0; }

int alarm_latch_is_alarm     (const alarm_latch_state_t *s) { return s && s->alarm_latched; }
int alarm_latch_is_slowdown  (const alarm_latch_state_t *s) { return s && s->slowdown_latched; }
int alarm_latch_is_prewarning(const alarm_latch_state_t *s) { return s && s->prewarning_latched; }
