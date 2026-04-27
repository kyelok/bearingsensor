/*
 * test_module_sensor_adjust.c — exercises the refactored sensor_adjust module.
 */

#include "unity.h"
#include "sensor_adjust/sensor_adjust.h"

void setUp(void) { }
void tearDown(void) { }

static void test_init_state_clean(void)
{
    sensor_adjust_state_t s = { 1, 99, 99.0f, 99 };
    sensor_adjust_init(&s);
    TEST_ASSERT_FALSE(s.in_adjustment);
    TEST_ASSERT_EQUAL_UINT32(0, s.sample_count);
}

static void test_begin_starts_adjustment_phase(void)
{
    sensor_adjust_state_t s; sensor_adjust_init(&s);
    sensor_adjust_begin(&s);
    TEST_ASSERT_TRUE(s.in_adjustment);
    TEST_ASSERT_TRUE(sensor_adjust_alarms_should_be_suspended(&s));
}

static void test_apply_sample_running_average(void)
{
    sensor_adjust_state_t s; sensor_adjust_init(&s);
    sensor_adjust_begin(&s);
    sensor_adjust_apply_sample(&s, 100.0f);
    sensor_adjust_apply_sample(&s, 200.0f);
    /* avg of {100, 200} = 150 */
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 150.0f, s.accumulated_offset);
    TEST_ASSERT_EQUAL_UINT32(2, s.sample_count);
}

static void test_offset_formula_8_5_full(void)
{
    /* O = 0.5 + 0.0001*200 + 500*0.0001 = 0.5 + 0.02 + 0.05 = 0.57 */
    float O = sensor_adjust_compute_offset_8_5(0.5f, 0.0001f, 200.0f, 0.0001f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.57f, O);
}

static void test_offset_formula_with_zero_terms(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.5f, sensor_adjust_compute_offset_8_5(0.5f, 0.0f, 0.0f, 0.0f));
}

static void test_complete_after_50_hours(void)
{
    sensor_adjust_state_t s; sensor_adjust_init(&s);
    sensor_adjust_begin(&s);
    s.hours_in_adjustment = 50;
    TEST_ASSERT_TRUE(sensor_adjust_is_complete(&s));
}

static void test_not_complete_before_50_hours(void)
{
    sensor_adjust_state_t s; sensor_adjust_init(&s);
    sensor_adjust_begin(&s);
    s.hours_in_adjustment = 49;
    TEST_ASSERT_FALSE(sensor_adjust_is_complete(&s));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_init_state_clean);
    RUN_TEST(test_begin_starts_adjustment_phase);
    RUN_TEST(test_apply_sample_running_average);
    RUN_TEST(test_offset_formula_8_5_full);
    RUN_TEST(test_offset_formula_with_zero_terms);
    RUN_TEST(test_complete_after_50_hours);
    RUN_TEST(test_not_complete_before_50_hours);
    return UNITY_END();
}
