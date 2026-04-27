/*
 * test_module_rapid_wear_8_7.c — verifies the v8.7 rapid-wear module
 * implements the deltas from v8.5.
 *
 * Covers feature_matrix req: R-§4.2-NEW
 */

#include "unity.h"
#include "rapid_wear/rapid_wear.h"
#include "rapid_wear/rapid_wear_8_7.h"

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.7 §4.5 — reset sets rapid_slow = 0 (the headline change). */
static void test_reset_8_7_zeroes_rapid_slow(void)
{
    rapid_wear_sensor_state_t s = { 0.5f, 1.0f, 0.5f };
    rapid_wear_reset_8_7(&s, 100.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f,    s.rapid_slow);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,  s.rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,  s.rapid_wear);
}

/* @spec 8.7 §4.2 — sensor deviation. */
static void test_deviation_sensor_8_7_basic(void)
{
    float rws[8]    = { 100, 100, 100, 100, 200, 100, 100, 100 };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    /* dRS_4 = 200 - mean(7 others = 100) = 100. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_deviation_sensor_8_7(rws, valid, 8, 4));
}

/* @spec 8.7 §4.2 — cylinder deviation. */
static void test_deviation_cyl_8_7_basic(void)
{
    /* 4-cyl engine, both sensors of cyl 2 (index 2: sensors 4,5) at 200, others 100. */
    float rws[8]    = { 100, 100, 100, 100, 200, 200, 100, 100 };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    /* dRC_2 = 200 - mean(others = 100) = 100. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_deviation_cyl_8_7(rws, valid, 8, 2));
}

/* @spec 8.7 §4.3.1 — Single = min(|RWS|, |dRS|). */
static void test_single_8_7_min_of_abs(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 50.0f, rapid_wear_single_8_7(100.0f, 50.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 50.0f, rapid_wear_single_8_7(50.0f, 100.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 30.0f, rapid_wear_single_8_7(-30.0f, 200.0f));
}

/* @spec 8.7 §4.3.2 — Cyl ave = min(|RWC|, |dRC|). */
static void test_cyl_ave_8_7_min_of_abs(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 40.0f, rapid_wear_cyl_ave_8_7(40.0f, 80.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 40.0f, rapid_wear_cyl_ave_8_7(80.0f, -40.0f));
}

/* @spec 8.7 §4.3.3 — Twin ave = min(|RWT|, |dRT|). */
static void test_twin_ave_8_7_min_of_abs(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 25.0f, rapid_wear_twin_ave_8_7(25.0f, 100.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 25.0f, rapid_wear_twin_ave_8_7(50.0f, -25.0f));
}

/* @spec 8.7 §4.1.3 — RWT averages 4 sensors. */
static void test_rwt_8_7_is_four_sensor_average(void)
{
    /* sensors all = 100 → average = 100 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_rwt_8_7(100, 100, 100, 100));
    /* one outlier */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 25.0f,
        rapid_wear_rwt_8_7(100, 0, 0, 0));
}

/* @spec 8.7 §4.4 — dynamic alarm formula k=16 simple. */
static void test_dynamic_alarm_8_7_formula(void)
{
    /* delta_rpm_pct = 0 → 1.0 multiplier → basic */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_dynamic_alarm_8_7(100.0f, 0.0f));
    /* delta_rpm_pct = 16 → 1 + 16/16 = 2.0 → 200 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 200.0f,
        rapid_wear_dynamic_alarm_8_7(100.0f, 16.0f));
}

/* @spec 8.7 §4.4 — 16-25% range floors to 16. */
static void test_dynamic_alarm_8_7_clamps_in_floor_range(void)
{
    float at_16 = rapid_wear_dynamic_alarm_8_7(100.0f, 16.0f);
    float at_20 = rapid_wear_dynamic_alarm_8_7(100.0f, 20.0f);
    float at_25 = rapid_wear_dynamic_alarm_8_7(100.0f, 25.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, at_16, at_20);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, at_16, at_25);
}

/* @spec 8.7 §4.4 — > 25% pause monitoring. */
static void test_dynamic_alarm_8_7_pauses_above_25_pct(void)
{
    float result = rapid_wear_dynamic_alarm_8_7(100.0f, 30.0f);
    TEST_ASSERT_TRUE(result < 0.0f);  /* sentinel */
}

static void test_should_pause_8_7_returns_correctly(void)
{
    TEST_ASSERT_FALSE(rapid_wear_should_pause_8_7(20.0f));
    TEST_ASSERT_TRUE (rapid_wear_should_pause_8_7(30.0f));
}

/* @spec 8.7 §4.2 — Rapid Wear twin-cylinder deviation
 * Coverage gap closed (was uncovered per coverage analysis 2026-04-28). */
static void test_deviation_twin_8_7_basic(void)
{
    /* 4-cyl engine. Twin pair (cyl 1, cyl 2) covers sensors 2,3,4,5
     * (zero-indexed). Set those high, others normal. */
    float rws[8]    = { 100, 100, 200, 200, 200, 200, 100, 100 };
    Uint16 valid[8] = { 1, 1, 1, 1, 1, 1, 1, 1 };
    /* dRT_1 = mean(rws[2..5])=200 - mean(rws[0,1,6,7])=100 = 100. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_deviation_twin_8_7(rws, valid, 8, 1));
}

static void test_deviation_twin_8_7_with_failed_sensor_excludes_it(void)
{
    /* Same as above but sensor 3 failed → excluded from twin avg. */
    float rws[8]    = { 100, 100, 200, 200, 200, 200, 100, 100 };
    Uint16 valid[8] = { 1, 1, 1, 0, 1, 1, 1, 1 };  /* sensor 3 invalid */
    /* twin avg: (200+200+200)/3 = 200; others avg: 100; dRT = 100. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f,
        rapid_wear_deviation_twin_8_7(rws, valid, 8, 1));
}

static void test_deviation_twin_8_7_returns_zero_when_all_twin_invalid(void)
{
    float rws[8]    = { 100, 100, 200, 200, 200, 200, 100, 100 };
    Uint16 valid[8] = { 1, 1, 0, 0, 0, 0, 1, 1 };  /* all twin sensors fail */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f,
        rapid_wear_deviation_twin_8_7(rws, valid, 8, 1));
}

/* NULL-arg defensive guards — coverage gap. */
static void test_null_args_dont_crash(void)
{
    /* Each of these should return cleanly, NOT segfault. */
    rapid_wear_init_sensor(NULL);
    rapid_wear_apply_sample(NULL, 5.0f);
    rapid_wear_reset_8_5(NULL, 5.0f, 1.0f);
    rapid_wear_reset_8_7(NULL, 5.0f);
    (void)rapid_wear_deviation_sensor_8_7(NULL, NULL, 0, 0);
    (void)rapid_wear_deviation_cyl_8_7(NULL, NULL, 0, 0);
    (void)rapid_wear_deviation_twin_8_7(NULL, NULL, 0, 0);
    TEST_PASS_MESSAGE("NULL-arg defensive guards do not crash");
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_reset_8_7_zeroes_rapid_slow);
    RUN_TEST(test_deviation_sensor_8_7_basic);
    RUN_TEST(test_deviation_cyl_8_7_basic);
    RUN_TEST(test_deviation_twin_8_7_basic);
    RUN_TEST(test_deviation_twin_8_7_with_failed_sensor_excludes_it);
    RUN_TEST(test_deviation_twin_8_7_returns_zero_when_all_twin_invalid);
    RUN_TEST(test_single_8_7_min_of_abs);
    RUN_TEST(test_cyl_ave_8_7_min_of_abs);
    RUN_TEST(test_twin_ave_8_7_min_of_abs);
    RUN_TEST(test_rwt_8_7_is_four_sensor_average);
    RUN_TEST(test_dynamic_alarm_8_7_formula);
    RUN_TEST(test_dynamic_alarm_8_7_clamps_in_floor_range);
    RUN_TEST(test_dynamic_alarm_8_7_pauses_above_25_pct);
    RUN_TEST(test_should_pause_8_7_returns_correctly);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
