/*
 * test_module_hit_by_hit.c — exercises the App-E hit-by-hit CSV formatter.
 *
 * @spec 8.7 Appendix E — verifies the CSV format matches the spec example
 * exactly.
 */

#include "unity.h"
#include "storage/hit_by_hit.h"
#include <string.h>

void setUp(void)    { }
void tearDown(void) { }

/* @spec 8.7 App E — header line for a 5-cylinder engine (10 sensors). */
static void test_header_for_5_cylinder(void)
{
    char buf[256];
    int n = hit_by_hit_format_header(buf, sizeof buf, 10);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "date;time;rpm;dir;S1.1;S1.2;S2.1;S2.2;S3.1;S3.2;S4.1;S4.2;S5.1;S5.2;",
        buf);
}

/* @spec 8.7 App E — header line for a 12-cylinder engine (24 sensors). */
static void test_header_for_12_cylinder(void)
{
    char buf[512];
    int n = hit_by_hit_format_header(buf, sizeof buf, 24);
    TEST_ASSERT_GREATER_THAN(0, n);
    /* Count the S<n>.1;S<n>.2; pairs. */
    int colon_count = 0;
    for (int i = 0; buf[i]; i++) if (buf[i] == ';') colon_count++;
    /* 4 fixed (date,time,rpm,dir) + 24 sensor = 28 semicolons. */
    TEST_ASSERT_EQUAL_INT(28, colon_count);
    /* Spot-check first and last sensor tags. */
    TEST_ASSERT_NOT_NULL(strstr(buf, "S1.1;"));
    TEST_ASSERT_NOT_NULL(strstr(buf, "S12.2;"));
}

/* @spec 8.7 App E — odd sensor count rejected (must be paired). */
static void test_header_rejects_odd_sensor_count(void)
{
    char buf[256];
    int n = hit_by_hit_format_header(buf, sizeof buf, 7);
    TEST_ASSERT_LESS_THAN(0, n);
}

/* @spec 8.7 App E — exact format match against the spec example, line 1.
 * Spec example: 2016-08-30;22:42:52;88;1;59;27;212;-26;64;-169;-16;-166;157;-26; */
static void test_data_line_matches_spec_example_line1(void)
{
    char buf[256];
    Int16 sensors[10] = { 59, 27, 212, -26, 64, -169, -16, -166, 157, -26 };
    int n = hit_by_hit_format_line(buf, sizeof buf,
                                   2016, 8, 30, 22, 42, 52,
                                   /*rpm=*/88, /*direction=*/1,
                                   sensors, 10);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "2016-08-30;22:42:52;88;1;59;27;212;-26;64;-169;-16;-166;157;-26;",
        buf);
}

/* @spec 8.7 App E — date/time zero-padding (e.g. 2026-04-07 not 2026-4-7). */
static void test_zero_pads_date_and_time(void)
{
    char buf[256];
    Int16 sensors[2] = { 0, 0 };
    int n = hit_by_hit_format_line(buf, sizeof buf,
                                   2026, 4, 7, 1, 2, 3,
                                   100, 1, sensors, 2);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "2026-04-07;01:02:03;100;1;0;0;",
        buf);
}

/* @spec 8.7 App E — direction = -1 reverse. */
static void test_direction_reverse(void)
{
    char buf[128];
    Int16 sensors[2] = { 5, -5 };
    hit_by_hit_format_line(buf, sizeof buf, 2026, 1, 1, 0, 0, 0,
                           75, HIT_BY_HIT_DIR_REVERSE, sensors, 2);
    TEST_ASSERT_NOT_NULL(strstr(buf, ";75;-1;"));
}

/* @spec 8.7 App E — direction = 0 invalid. */
static void test_direction_invalid(void)
{
    char buf[128];
    Int16 sensors[2] = { 0, 0 };
    hit_by_hit_format_line(buf, sizeof buf, 2026, 1, 1, 0, 0, 0,
                           0, HIT_BY_HIT_DIR_INVALID, sensors, 2);
    TEST_ASSERT_NOT_NULL(strstr(buf, ";0;0;0;0;"));
}

/* @spec 8.7 App E — too-small buffer returns negative. */
static void test_buffer_overflow_returns_negative(void)
{
    char tiny[8];
    Int16 sensors[10] = { 0 };
    int n = hit_by_hit_format_line(tiny, sizeof tiny,
                                   2016, 8, 30, 22, 42, 52,
                                   88, 1, sensors, 10);
    TEST_ASSERT_LESS_THAN(0, n);
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    char buf[64];
    Int16 sensors[2] = { 0, 0 };
    TEST_ASSERT_LESS_THAN(0, hit_by_hit_format_header(NULL, 64, 2));
    TEST_ASSERT_LESS_THAN(0, hit_by_hit_format_line(NULL, 64,
                                                    2016, 8, 30, 22, 42, 52,
                                                    88, 1, sensors, 2));
    TEST_ASSERT_LESS_THAN(0, hit_by_hit_format_line(buf, 64,
                                                    2016, 8, 30, 22, 42, 52,
                                                    88, 1, NULL, 2));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_header_for_5_cylinder);
    RUN_TEST(test_header_for_12_cylinder);
    RUN_TEST(test_header_rejects_odd_sensor_count);
    RUN_TEST(test_data_line_matches_spec_example_line1);
    RUN_TEST(test_zero_pads_date_and_time);
    RUN_TEST(test_direction_reverse);
    RUN_TEST(test_direction_invalid);
    RUN_TEST(test_buffer_overflow_returns_negative);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
