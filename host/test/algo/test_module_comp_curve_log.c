/*
 * test_module_comp_curve_log.c — exercises the App-F compensation curve
 * snapshot CSV formatter.
 *
 * @spec 8.7 Appendix F.
 */

#include "unity.h"
#include "storage/comp_curve_log.h"
#include <string.h>

void setUp(void)    { }
void tearDown(void) { }

/* @spec 8.7 App F — filename for the spec example timestamp. */
static void test_filename_matches_spec_example(void)
{
    char buf[64];
    int n = comp_curve_format_filename(buf, sizeof buf,
                                       2016, 8, 30, 22, 42, 52);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING("compensation_curves_20160830_224252.txt", buf);
}

/* @spec 8.7 App F — filename zero-pads single-digit fields. */
static void test_filename_zero_pads(void)
{
    char buf[64];
    comp_curve_format_filename(buf, sizeof buf, 2026, 1, 5, 9, 30, 7);
    TEST_ASSERT_EQUAL_STRING("compensation_curves_20260105_093007.txt", buf);
}

/* @spec 8.7 App F — header for 5-cylinder engine. */
static void test_header_for_5_cylinder(void)
{
    char buf[256];
    int n = comp_curve_format_header(buf, sizeof buf, 10);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "Rpm1;Rpm2;S1.1;S1.2;S2.1;S2.2;S3.1;S3.2;S4.1;S4.2;S5.1;S5.2;",
        buf);
}

/* @spec 8.7 App F — body line: comma-decimal RPM range, integer µm. */
static void test_body_line_uses_comma_decimal_rpm(void)
{
    /* From spec example: "19,8; 20,6; -47;-81;-32;-97;-45;-71;-135;-10;-353; -29;"
     * Note: spec example has spaces after semicolons in some columns; ours
     * does not (whitespace-tolerant readers don't care). */
    char buf[256];
    Int16 sensors[10] = { -47, -81, -32, -97, -45, -71, -135, -10, -353, -29 };
    int n = comp_curve_format_line(buf, sizeof buf,
                                   /*rpm1_tenths=*/198,
                                   /*rpm2_tenths=*/206,
                                   sensors, 10);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "19,8;20,6;-47;-81;-32;-97;-45;-71;-135;-10;-353;-29;",
        buf);
}

/* @spec 8.7 App F — RPM tenths zero-aligns ".0" suffix. */
static void test_rpm_with_zero_tenths(void)
{
    char buf[64];
    Int16 sensors[2] = { 100, 200 };
    comp_curve_format_line(buf, sizeof buf, 1000, 1100, sensors, 2);
    TEST_ASSERT_EQUAL_STRING("100,0;110,0;100;200;", buf);
}

/* @spec 8.7 App F — odd sensor count rejected. */
static void test_header_rejects_odd_sensor_count(void)
{
    char buf[256];
    int n = comp_curve_format_header(buf, sizeof buf, 5);
    TEST_ASSERT_LESS_THAN(0, n);
}

/* @spec 8.7 App F — body line accepts max-channel count (28 = 14 cyl). */
static void test_full_28_channel_body_line(void)
{
    char buf[512];
    Int16 sensors[28];
    for (int i = 0; i < 28; i++) sensors[i] = (Int16)(i * 10);
    int n = comp_curve_format_line(buf, sizeof buf, 100, 108, sensors, 28);
    TEST_ASSERT_GREATER_THAN(0, n);
    /* Should start with "10,0;10,8;0;10;...". */
    TEST_ASSERT_EQUAL_INT_MESSAGE(0, strncmp(buf, "10,0;10,8;", 10),
                                  "header bytes mismatch");
    /* Last sensor is 270 (i=27). */
    TEST_ASSERT_NOT_NULL(strstr(buf, ";270;"));
}

/* @spec 8.7 App F — buffer too small returns negative. */
static void test_overflow_returns_negative(void)
{
    char tiny[8];
    Int16 sensors[2] = { 1, 2 };
    int n = comp_curve_format_line(tiny, sizeof tiny, 100, 110, sensors, 2);
    TEST_ASSERT_LESS_THAN(0, n);
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    Int16 sensors[2] = { 0, 0 };
    TEST_ASSERT_LESS_THAN(0,
        comp_curve_format_filename(NULL, 64, 2016, 8, 30, 22, 42, 52));
    TEST_ASSERT_LESS_THAN(0,
        comp_curve_format_header(NULL, 64, 2));
    TEST_ASSERT_LESS_THAN(0,
        comp_curve_format_line(NULL, 64, 100, 110, sensors, 2));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_filename_matches_spec_example);
    RUN_TEST(test_filename_zero_pads);
    RUN_TEST(test_header_for_5_cylinder);
    RUN_TEST(test_body_line_uses_comma_decimal_rpm);
    RUN_TEST(test_rpm_with_zero_tenths);
    RUN_TEST(test_header_rejects_odd_sensor_count);
    RUN_TEST(test_full_28_channel_body_line);
    RUN_TEST(test_overflow_returns_negative);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
