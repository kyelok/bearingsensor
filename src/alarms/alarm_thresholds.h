/*
 * src/alarms/alarm_thresholds.h — Alarm and slowdown threshold constants
 * (MAN BWM spec §7), and the latching state machine.
 *
 * @spec 8.5 §7.1 — Slow Wear Alarm Limits
 * @spec 8.5 §7.2 — Rapid Wear Alarm Limits
 *
 * Constants are split by spec version because the user shipped 8.5
 * to date; v8.7 adoption (Phase 4) introduces alarm_thresholds_8_7.h
 * with the tightened values. Both can coexist; the active set is
 * selected by the operational mode at runtime.
 */

#ifndef BWM_ALARM_THRESHOLDS_H
#define BWM_ALARM_THRESHOLDS_H

#include "core/types.h"

/* ===== Slow Wear thresholds (§7.1) — units: hundredths of mm ===== */

/* @spec 8.5 Table 7.2 — normal running */
#define ALARM_SLOW_FILTERED_NORMAL_8_5         50  /* 0.5 mm */
#define ALARM_SLOW_SENSDEV_NORMAL_8_5          40  /* 0.4 mm */
#define ALARM_SLOW_CYLDEV_NORMAL_8_5           30  /* 0.3 mm */
#define SLOWDOWN_SLOW_FILTERED_NORMAL_8_5      70  /* 0.7 mm */
#define SLOWDOWN_SLOW_SENSDEV_NORMAL_8_5       50  /* 0.5 mm */

/* @spec 8.5 Table 7.3 — learning */
#define ALARM_SLOW_FILTERED_LEARNING_8_5       80  /* 0.8 mm */
#define ALARM_SLOW_SENSDEV_LEARNING_8_5        50  /* 0.5 mm */
#define ALARM_SLOW_CYLDEV_LEARNING_8_5         40  /* 0.4 mm */
#define SLOWDOWN_SLOW_FILTERED_LEARNING_8_5    90  /* 0.9 mm */
#define SLOWDOWN_SLOW_SENSDEV_LEARNING_8_5     70  /* 0.7 mm */

/* @spec 8.5 Table 7.4 — pre-warning */
#define PRE_WARNING_LIMIT_8_5                  25  /* 0.25 mm */

/* ===== Rapid Wear basic thresholds (§7.2) — units: µm ===== */

#define ALARM_RAPID_BASIC_SINGLE_8_5    250
#define ALARM_RAPID_BASIC_CYL_8_5       180
#define ALARM_RAPID_BASIC_TWIN_8_5      250

/* ===== Alarm latching ===== */

typedef struct {
    Uint16 alarm_latched     :1;
    Uint16 slowdown_latched  :1;
    Uint16 prewarning_latched:1;
    Uint16 _reserved         :13;
} alarm_latch_state_t;

/* @spec 8.5 §3.3.1 — latching: once an alarm is released, the latch
 * persists until the operator clears it. Set/clear are explicit. */
void alarm_latch_set_alarm     (alarm_latch_state_t *s);
void alarm_latch_set_slowdown  (alarm_latch_state_t *s);
void alarm_latch_set_prewarning(alarm_latch_state_t *s);

/* Operator clear (must persist via FRAM in real firmware). */
void alarm_latch_clear_alarm     (alarm_latch_state_t *s);
void alarm_latch_clear_slowdown  (alarm_latch_state_t *s);
void alarm_latch_clear_prewarning(alarm_latch_state_t *s);

int alarm_latch_is_alarm     (const alarm_latch_state_t *s);
int alarm_latch_is_slowdown  (const alarm_latch_state_t *s);
int alarm_latch_is_prewarning(const alarm_latch_state_t *s);

#endif /* BWM_ALARM_THRESHOLDS_H */
