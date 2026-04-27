/*
 * test_module_sensor_adjust_8_7.c — verifies the v8.7 three-procedure
 * sensor adjustment logic.
 */

#include "unity.h"
#include "sensor_adjust/sensor_adjust_8_7.h"
#include "rapid_wear/rapid_wear.h"

void setUp(void) { }
void tearDown(void) { }

static void test_proc_refcurve_only_uses_history_avg(void)
{
    /* Accumulated 50h offset = 30 hundredths-mm.
     * Historical 6h-avgs: {10, 12, 14, 16} → avg = 13. */
    Int16 history[4] = { 10, 12, 14, 16 };
    Int16 result = sensor_adjust_8_7_refcurve_only(30, history, 4);
    /* Expected: 30 + 13 = 43. */
    TEST_ASSERT_EQUAL_INT16(43, result);
}

static void test_proc_refcurve_only_with_no_history(void)
{
    Int16 result = sensor_adjust_8_7_refcurve_only(30, 0, 0);
    TEST_ASSERT_EQUAL_INT16(30, result);
}

static void test_proc_refcurve_plus_extrap_adds_O_2(void)
{
    Int16 history[2] = { 10, 20 };
    Int16 O_2 = 7;
    Int16 result = sensor_adjust_8_7_refcurve_plus_extrap(30, history, 2, O_2);
    /* Expected: 30 + avg(10,20)=15 + 7 = 52. */
    TEST_ASSERT_EQUAL_INT16(52, result);
}

static void test_proc_refcurve_plus_reset_uses_only_accumulated(void)
{
    /* Reset variant — no historical correction at all. */
    Int16 result = sensor_adjust_8_7_refcurve_plus_reset(30);
    TEST_ASSERT_EQUAL_INT16(30, result);
}

static void test_apply_rapid_reset_zeroes_rapid_slow(void)
{
    rapid_wear_sensor_state_t s = { 1.0f, 2.0f, 1.0f };
    sensor_adjust_8_7_apply_rapid_reset(&s, 50.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, s.rapid_slow);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 50.0f, s.rapid_fast);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_proc_refcurve_only_uses_history_avg);
    RUN_TEST(test_proc_refcurve_only_with_no_history);
    RUN_TEST(test_proc_refcurve_plus_extrap_adds_O_2);
    RUN_TEST(test_proc_refcurve_plus_reset_uses_only_accumulated);
    RUN_TEST(test_apply_rapid_reset_zeroes_rapid_slow);
    return UNITY_END();
}
