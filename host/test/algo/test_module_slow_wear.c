/*
 * test_module_slow_wear.c — exercises the refactored slow_wear module.
 */

#include "unity.h"
#include "slow_wear/slow_wear.h"

void setUp(void) { }
void tearDown(void) { }

static void test_filter_init_zero(void)
{
    slow_wear_sensor_state_t s = { 99.0f };
    slow_wear_init_sensor(&s);
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0f, s.filtered_value);
}

static void test_filter_first_step_is_x_times_input(void)
{
    slow_wear_sensor_state_t s;
    slow_wear_init_sensor(&s);
    slow_wear_apply_sample(&s, 1.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.05f, s.filtered_value);
}

static void test_sensor_deviation_zero_when_uniform(void)
{
    float values[8] = { 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, slow_wear_sensor_deviation(values, valid, 8, 4));
}

static void test_sensor_deviation_picks_up_outlier(void)
{
    float values[8] = { 0, 0, 0, 0, 0.7f, 0, 0, 0 };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.7f, slow_wear_sensor_deviation(values, valid, 8, 4));
}

static void test_cylinder_deviation_spec_worked_example(void)
{
    /* spec 8.5 §3.2 example: cyl 3 in 4-cyl engine, sensors 4,5 = 1.0 */
    float values[8] = { 0, 0, 0, 0, 1.0f, 1.0f, 0, 0 };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 1.0f, slow_wear_cylinder_deviation(values, valid, 8, 2));
}

static void test_cylinder_deviation_excludes_failed_sensor(void)
{
    float values[8] = { 0, 0, 0, 0, 0.6f, 0, 0, 0 };
    Uint16 valid[8] = { 1, 1, 0, 1, 1, 1, 1, 1 };  /* sensor 2 failed */
    /* cylinder 3 (sensors 4 & 5) result unaffected */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.3f, slow_wear_cylinder_deviation(values, valid, 8, 2));
}

static void test_classify_normal_alarm_slowdown(void)
{
    TEST_ASSERT_EQUAL_INT(SLOW_WEAR_NORMAL,   slow_wear_classify(40, 50, 70));
    TEST_ASSERT_EQUAL_INT(SLOW_WEAR_ALARM,    slow_wear_classify(55, 50, 70));
    TEST_ASSERT_EQUAL_INT(SLOW_WEAR_SLOWDOWN, slow_wear_classify(75, 50, 70));
    TEST_ASSERT_EQUAL_INT(SLOW_WEAR_SLOWDOWN, slow_wear_classify(-75, 50, 70));
}

static void test_pre_warning_check(void)
{
    TEST_ASSERT_TRUE (slow_wear_pre_warning_check(30, 25));
    TEST_ASSERT_TRUE (slow_wear_pre_warning_check(-30, 25));
    TEST_ASSERT_FALSE(slow_wear_pre_warning_check(20, 25));
}

static void test_acknowledge_pre_warning_raises_limit_by_25(void)
{
    int limit = slow_wear_acknowledge_pre_warning(25);
    TEST_ASSERT_EQUAL_INT(50, limit);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_filter_init_zero);
    RUN_TEST(test_filter_first_step_is_x_times_input);
    RUN_TEST(test_sensor_deviation_zero_when_uniform);
    RUN_TEST(test_sensor_deviation_picks_up_outlier);
    RUN_TEST(test_cylinder_deviation_spec_worked_example);
    RUN_TEST(test_cylinder_deviation_excludes_failed_sensor);
    RUN_TEST(test_classify_normal_alarm_slowdown);
    RUN_TEST(test_pre_warning_check);
    RUN_TEST(test_acknowledge_pre_warning_raises_limit_by_25);
    return UNITY_END();
}
