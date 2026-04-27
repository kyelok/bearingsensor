/*
 * fake_rtc.h — DS1306 real-time clock emulation.
 *
 * The SPU has an external DS1306 RTC chip on the SPI bus. The firmware
 * uses it to timestamp every event log entry, every short-term and
 * long-term storage record, and to compute the 6-hour pre-warning
 * average window.
 *
 * Real RTC emits seconds since 1970-01-01 00:00:00 UTC (loosely;
 * actual DS1306 has separate fields for sec/min/hour/day/month/year).
 * This fake simplifies to a monotonic millisecond counter that tests
 * advance explicitly.
 */

#ifndef BWM_FAKE_RTC_H
#define BWM_FAKE_RTC_H

#include "platform.h"

/* clockstruct mimics the firmware's RTC field shape (see globals.h).
 * Date/time fields are BCD-decoded values: e.g., second=37, year=2026. */
typedef struct {
    Uint16 second;
    Uint16 minute;
    Uint16 hour;
    Uint16 day_of_month;
    Uint16 month;
    Uint16 year;     /* full year, e.g., 2026 */
} fake_clockstruct;

void fake_rtc_init(void);

/* Set absolute time. */
void fake_rtc_set(Uint16 year, Uint16 month, Uint16 day,
                  Uint16 hour, Uint16 minute, Uint16 second);

/* Advance simulated time by some milliseconds. The 5-ms main-loop tick
 * + 33-µs ADC ISR rate are what tests typically simulate by calling
 * fake_rtc_advance_ms(5) per main-loop iteration. */
void fake_rtc_advance_ms(Uint32 ms);
void fake_rtc_advance_minutes(Uint32 m);
void fake_rtc_advance_hours(Uint32 h);

/* Queries used by firmware-style code. */
void   fake_rtc_get(fake_clockstruct *out);
Uint32 fake_rtc_millis_since_init(void);

#endif /* BWM_FAKE_RTC_H */
