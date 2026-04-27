/*
 * test_fakes_smoke.c — sanity checks for fake_rtc, fake_adc, synthetic_engine.
 * Proves each fake behaves as advertised before higher-level tests rely on them.
 */

#include "unity.h"
#include "platform.h"
#include "fake_rtc.h"
#include "fake_adc.h"
#include "synthetic_engine.h"

void setUp(void)    { fake_rtc_init(); fake_adc_init(); synthetic_engine_init(6); }
void tearDown(void) { }

/* ---- RTC ---- */

static void test_rtc_starts_at_origin(void)
{
    fake_clockstruct now;
    fake_rtc_get(&now);
    TEST_ASSERT_EQUAL_UINT16(2026, now.year);
    TEST_ASSERT_EQUAL_UINT16(1, now.month);
    TEST_ASSERT_EQUAL_UINT16(1, now.day_of_month);
}

static void test_rtc_advances_by_milliseconds(void)
{
    fake_rtc_advance_ms(60000); /* 1 minute */
    fake_clockstruct now;
    fake_rtc_get(&now);
    TEST_ASSERT_EQUAL_UINT16(1, now.minute);
    TEST_ASSERT_EQUAL_UINT16(0, now.second);
}

static void test_rtc_advances_across_hour_boundary(void)
{
    fake_rtc_advance_minutes(125); /* 2h 5m */
    fake_clockstruct now;
    fake_rtc_get(&now);
    TEST_ASSERT_EQUAL_UINT16(2, now.hour);
    TEST_ASSERT_EQUAL_UINT16(5, now.minute);
}

static void test_rtc_set_changes_origin(void)
{
    fake_rtc_set(2024, 12, 31, 23, 59, 30);
    fake_rtc_advance_ms(31000); /* 31 seconds */
    fake_clockstruct now;
    fake_rtc_get(&now);
    TEST_ASSERT_EQUAL_UINT16(2025, now.year);
    TEST_ASSERT_EQUAL_UINT16(1, now.month);
    TEST_ASSERT_EQUAL_UINT16(1, now.day_of_month);
    TEST_ASSERT_EQUAL_UINT16(0, now.hour);
    TEST_ASSERT_EQUAL_UINT16(0, now.minute);
    TEST_ASSERT_EQUAL_UINT16(1, now.second);
}

/* ---- ADC ---- */

static void test_adc_4mA_is_819_counts(void)
{
    fake_adc_set_channel_mA(0, 4.0f);
    TEST_ASSERT_EQUAL_UINT16(819, fake_adc_read_result(0));
}

static void test_adc_20mA_clamps_to_4095(void)
{
    fake_adc_set_channel_mA(0, 25.0f); /* over range */
    TEST_ASSERT_EQUAL_UINT16(4095, fake_adc_read_result(0));
}

static void test_adc_zero_mA_is_zero_counts(void)
{
    fake_adc_set_channel_mA(0, 0.0f);
    TEST_ASSERT_EQUAL_UINT16(0, fake_adc_read_result(0));
}

static void test_adc_round_trip_mA_value(void)
{
    fake_adc_set_channel_mA(3, 12.0f);
    TEST_ASSERT_FLOAT_WITHIN(0.01f, 12.0f, fake_adc_get_channel_mA(3));
}

/* ---- Synthetic engine ---- */

static void test_engine_initial_revolution_count_zero(void)
{
    TEST_ASSERT_EQUAL_UINT32(0, synthetic_engine_revolution_count());
}

static void test_engine_tick_increments_revolution_count(void)
{
    synthetic_engine_tick();
    synthetic_engine_tick();
    TEST_ASSERT_EQUAL_UINT32(2, synthetic_engine_revolution_count());
}

static void test_engine_failed_sensor_reads_zero(void)
{
    synthetic_engine_set_nominal_bdc_mm(2, 1.0f);
    synthetic_engine_set_sensor_failed(2, 1);
    synthetic_engine_set_rpm(80);
    synthetic_engine_set_nominal_rpm(100);
    synthetic_engine_tick();
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 0.0f, synthetic_engine_sensor_mm(2));
}

static void test_engine_wear_accumulates_into_sensor_reading(void)
{
    synthetic_engine_set_nominal_bdc_mm(3, 0.0f);
    synthetic_engine_set_sensor_wear(3, 0.5f);
    synthetic_engine_set_rpm(0);  /* avoids speed-comp contribution */
    synthetic_engine_set_nominal_rpm(100);
    synthetic_engine_tick();
    /* With rpm=0 and noise=0, sensor reads exactly the wear. */
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 0.5f, synthetic_engine_sensor_mm(3));
}

static void test_engine_speed_compensation_is_zero_below_minimum(void)
{
    synthetic_engine_set_nominal_bdc_mm(0, 1.0f);
    synthetic_engine_set_rpm(10); /* well below 20 % nominal */
    synthetic_engine_set_nominal_rpm(100);
    synthetic_engine_tick();
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 1.0f, synthetic_engine_sensor_mm(0));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_rtc_starts_at_origin);
    RUN_TEST(test_rtc_advances_by_milliseconds);
    RUN_TEST(test_rtc_advances_across_hour_boundary);
    RUN_TEST(test_rtc_set_changes_origin);
    RUN_TEST(test_adc_4mA_is_819_counts);
    RUN_TEST(test_adc_20mA_clamps_to_4095);
    RUN_TEST(test_adc_zero_mA_is_zero_counts);
    RUN_TEST(test_adc_round_trip_mA_value);
    RUN_TEST(test_engine_initial_revolution_count_zero);
    RUN_TEST(test_engine_tick_increments_revolution_count);
    RUN_TEST(test_engine_failed_sensor_reads_zero);
    RUN_TEST(test_engine_wear_accumulates_into_sensor_reading);
    RUN_TEST(test_engine_speed_compensation_is_zero_below_minimum);
    return UNITY_END();
}
