/*
 * fake_rtc.c — implementation. Stores time as ms-since-init plus a
 * settable absolute origin (so tests can declare "the year is 2026").
 */

#include "fake_rtc.h"

static Uint32 g_millis_since_init;
static fake_clockstruct g_origin;

/* Days in month (non-leap-year baseline). Tests don't need calendar
 * accuracy beyond this for the BWM use cases. */
static const int days_in_month[12] = { 31,28,31,30,31,30,31,31,30,31,30,31 };

void fake_rtc_init(void)
{
    g_millis_since_init = 0;
    g_origin.year = 2026; g_origin.month = 1; g_origin.day_of_month = 1;
    g_origin.hour = 0; g_origin.minute = 0; g_origin.second = 0;
}

void fake_rtc_set(Uint16 year, Uint16 month, Uint16 day,
                  Uint16 hour, Uint16 minute, Uint16 second)
{
    g_millis_since_init = 0;
    g_origin.year = year; g_origin.month = month; g_origin.day_of_month = day;
    g_origin.hour = hour; g_origin.minute = minute; g_origin.second = second;
}

void fake_rtc_advance_ms(Uint32 ms)       { g_millis_since_init += ms; }
void fake_rtc_advance_minutes(Uint32 m)   { g_millis_since_init += m * 60UL * 1000UL; }
void fake_rtc_advance_hours(Uint32 h)     { g_millis_since_init += h * 3600UL * 1000UL; }

Uint32 fake_rtc_millis_since_init(void)   { return g_millis_since_init; }

void fake_rtc_get(fake_clockstruct *out)
{
    if (!out) return;

    /* Compute (origin + ms) → broken-down time. Simple cascade math;
     * good enough for BWM testing (we don't span years often). */
    Uint32 total_seconds = g_millis_since_init / 1000;
    Uint16 second = (Uint16)(g_origin.second + total_seconds % 60);
    Uint32 carry_min = total_seconds / 60 + (second / 60);
    second %= 60;

    Uint16 minute = (Uint16)(g_origin.minute + carry_min % 60);
    Uint32 carry_hour = carry_min / 60 + (minute / 60);
    minute %= 60;

    Uint16 hour = (Uint16)(g_origin.hour + carry_hour % 24);
    Uint32 carry_day = carry_hour / 24 + (hour / 24);
    hour %= 24;

    Uint16 day = (Uint16)(g_origin.day_of_month + carry_day);
    Uint16 month = g_origin.month;
    Uint16 year = g_origin.year;
    while (1) {
        int month_idx = (month >= 1 && month <= 12) ? (month - 1) : 0;
        Uint16 dim = (Uint16)days_in_month[month_idx];
        if (day <= dim) break;
        day -= dim;
        month++;
        if (month > 12) { month = 1; year++; }
    }

    out->second       = second;
    out->minute       = minute;
    out->hour         = hour;
    out->day_of_month = day;
    out->month        = month;
    out->year         = year;
}
