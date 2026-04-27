/*
 * src/alarms/alarm_thresholds_8_7.h — alarm constants per spec rev 07.
 *
 * Sits alongside alarm_thresholds.h (which carries the 8.5 values).
 *
 * 8.5 → 8.6/8.7 numeric changes (per spec §7.2 tables and §7.1):
 *   Slow Wear:
 *     - SLOWDOWN_SLOW_SENSDEV_NORMAL:      50 → 60   (loosened by 0.1 mm)
 *     - SLOWDOWN_SLOW_SENSDEV_LEARNING:    70 → 50   (tightened by 0.2 mm)
 *
 *   Rapid Wear (basic, normal running):
 *     - SingleRapid:   250 → 200 µm
 *     - CylRapidAve:   180 →  90 µm   (50% reduction)
 *     - TwinCylRapidAve:250 →  75 µm   (70% reduction)
 *
 *   Rapid Wear has THREE tables in 8.6+ (single set in 8.5):
 *     - Normal running   — Tables above
 *     - Refining (during 500h fine-learning)
 *     - Rough creation (during initial 30-min rough cal)
 */

#ifndef BWM_ALARM_THRESHOLDS_8_7_H
#define BWM_ALARM_THRESHOLDS_8_7_H

#include "core/types.h"

/* ===== Slow wear (§7.1) — units: hundredths of mm ===== */
/* Most slow-wear values are unchanged from 8.5. */
#define ALARM_SLOW_FILTERED_NORMAL_8_7         50  /* 0.5 mm */
#define ALARM_SLOW_SENSDEV_NORMAL_8_7          40  /* 0.4 mm */
#define ALARM_SLOW_CYLDEV_NORMAL_8_7           30  /* 0.3 mm */
#define SLOWDOWN_SLOW_FILTERED_NORMAL_8_7      70  /* 0.7 mm */
#define SLOWDOWN_SLOW_SENSDEV_NORMAL_8_7       60  /* 0.6 mm */    /* CHANGED from 8.5 (50) */

#define ALARM_SLOW_FILTERED_LEARNING_8_7       80
#define ALARM_SLOW_SENSDEV_LEARNING_8_7        50
#define ALARM_SLOW_CYLDEV_LEARNING_8_7         40
#define SLOWDOWN_SLOW_FILTERED_LEARNING_8_7    90
#define SLOWDOWN_SLOW_SENSDEV_LEARNING_8_7     50  /* CHANGED from 8.5 (70) */

#define PRE_WARNING_LIMIT_8_7                  25  /* unchanged */

/* ===== Rapid wear (§7.2) — units: µm ===== */

/* @spec 8.7 Table 7.5 — normal running */
#define ALARM_RAPID_BASIC_SINGLE_NORMAL_8_7    200
#define ALARM_RAPID_BASIC_CYL_NORMAL_8_7       90
#define ALARM_RAPID_BASIC_TWIN_NORMAL_8_7      75

/* @spec 8.7 Table 7.6 — refining of compensation curve */
#define ALARM_RAPID_BASIC_SINGLE_REFINING_8_7  230
#define ALARM_RAPID_BASIC_CYL_REFINING_8_7     120
#define ALARM_RAPID_BASIC_TWIN_REFINING_8_7    105

/* @spec 8.7 Table 7.7 — creation of rough compensation curve */
#define ALARM_RAPID_BASIC_SINGLE_ROUGH_8_7     260
#define ALARM_RAPID_BASIC_CYL_ROUGH_8_7        150
#define ALARM_RAPID_BASIC_TWIN_ROUGH_8_7       135

#endif /* BWM_ALARM_THRESHOLDS_8_7_H */
