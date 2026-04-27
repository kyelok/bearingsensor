/*
 * src/storage/storage_classes.h — Data storage definitions.
 *
 * @spec 8.5 §6 — Storage and Presentation of Data
 * @spec 8.6/8.7 §6 — extended with hit-by-hit (App E) and comp-curve
 *                    change log (App F). Phase 4 adds those.
 *
 * Three storage classes per spec 8.5:
 *   - Short term: 24h, ≥1/30 revs, +5 min after alarm
 *   - Rapid Wear floating: 2h
 *   - Long term: 6h max/min/avg, ≥5 years back
 *
 * STATUS (per PR review F-13): TYPE DEFINITIONS ONLY. This module currently
 * defines the record shapes, event-type enum, and timing constants. It
 * does NOT implement storage I/O — no FRAM persistence, no SD card writes,
 * no event log emission. The integration layer (Phase B-6 per
 * host/docs/INTEGRATION_LAYER_DESIGN.md) wires these types to the legacy
 * sdcard.c for persistence; Phase B-7 adds the spec 8.6+ XML 4-part
 * format. Until then these types are documentation artifacts.
 */

#ifndef BWM_STORAGE_CLASSES_H
#define BWM_STORAGE_CLASSES_H

#include "core/types.h"

#define STORAGE_SHORT_TERM_HOURS         24
#define STORAGE_SHORT_TERM_MIN_PER_30REV 1   /* @spec 8.5 §6 */
#define STORAGE_POST_ALARM_EXTEND_MIN    5
#define STORAGE_RAPID_WEAR_HOURS         2
#define STORAGE_LONG_TERM_AVG_HOURS      6
#define STORAGE_LONG_TERM_BACK_YEARS     5

/* Long-term storage record (max/min/avg over 6h). */
typedef struct {
    Uint32 timestamp;            /* unix-ish seconds; firmware uses RTC fields */
    Int16  filtered_max_mm_h;    /* hundredths of mm */
    Int16  filtered_min_mm_h;
    Int16  filtered_avg_mm_h;
    Uint16 sensor_id;
} long_term_record_t;

/* Event log entry. */
typedef enum {
    STORAGE_EVENT_NONE = 0,
    STORAGE_EVENT_ALARM,
    STORAGE_EVENT_SLOWDOWN,
    STORAGE_EVENT_PRE_WARNING,
    STORAGE_EVENT_SENSOR_REPLACEMENT,
    STORAGE_EVENT_OFFSET_ADJUSTMENT,
    STORAGE_EVENT_REFERENCE_CHANGE,
    STORAGE_EVENT_PRE_WARNING_RESET,
    STORAGE_EVENT_LEARNING_STAGE_TRANSITION,
    STORAGE_EVENT_POWER_ON,
} storage_event_type_t;

typedef struct {
    Uint32 timestamp;
    Uint16 event_type;
    Uint16 sensor_id;          /* relevant sensor or BWM_MAX_SENSORS for system events */
    Int16  payload[4];         /* event-type-specific data */
} storage_event_record_t;

/* Helper: extension of frozen copy duration after an alarm clears. */
Uint32 storage_compute_post_alarm_extension_seconds(Uint16 alarm_class);

#endif /* BWM_STORAGE_CLASSES_H */
