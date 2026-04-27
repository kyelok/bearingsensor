/*
 * test_module_rapid_wear.c — exercises the refactored rapid_wear module
 * directly through its public API.
 *
 * Where the spec-coverage tests in test_rapid_wear_ema.c, test_dynamic
 * _alarm_8_5.c, and test_spec4_rapid_wear_combining.c verified the
 * spec-defined behavior using inline reference implementations, this
 * file verifies that src/rapid_wear/ produces the same answers via its
 * public API. Together these tests are the regression net guaranteeing
 * the refactor preserves spec behavior.
 *
 * Covers feature_matrix reqs: R-§4.0-1 (rapid_wear = fast - slow per sensor),
 * R-§4.6-1 (8.5-only section alarm reporting; superseded in 8.6).
 */

#include "unity.h"
#include "rapid_wear/rapid_wear.h"
#include <math.h>

void setUp(void) { }
void tearDown(void) { }

static void test_init_zeros_state(void)
{
    rapid_wear_sensor_state_t s = { 99.0f, 99.0f, 99.0f };
    rapid_wear_init_sensor(&s);
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0f, s.rapid_slow);
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0f, s.rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0f, s.rapid_wear);
}

static void test_apply_sample_first_step_matches_spec(void)
{
    rapid_wear_sensor_state_t s;
    rapid_wear_init_sensor(&s);
    rapid_wear_apply_sample(&s, 100.0f);
    /* After one step:
     *   rapid_slow = 0 + 100*0.0001 = 0.01
     *   rapid_fast = 0 + 100*0.2    = 20
     *   rapid_wear = 20 - 0.01      = 19.99 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.01f,  s.rapid_slow);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 20.0f,  s.rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 19.99f, s.rapid_wear);
}

static void test_combine_single_is_abs(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 150.0f, rapid_wear_combine_single(150.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 150.0f, rapid_wear_combine_single(-150.0f));
}

static void test_combine_cyl_sums_in_magnitude(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 200.0f, rapid_wear_combine_cyl(100.0f, 100.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f,   rapid_wear_combine_cyl(150.0f, -150.0f));
}

static void test_combine_twin_cyl_sums_across_main_bearing(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 160.0f, rapid_wear_combine_twin_cyl(100.0f, 60.0f));
}

static void test_combine_mb_sum_arithmetic_matches_twin(void)
{
    float twin = rapid_wear_combine_twin_cyl(40.0f, 60.0f);
    float mb   = rapid_wear_combine_mb_sum(40.0f, 60.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, twin, mb);
}

static void test_alarm_1_at_zero_delta_equals_basic(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 250.0f, rapid_wear_alarm_1_8_5(250.0f, 0.0f));
}

static void test_alarm_1_at_capped_delta_yields_one_point_five_basic(void)
{
    /* basic * (1 + 4/8) = basic * 1.5 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 375.0f, rapid_wear_alarm_1_8_5(250.0f, 4.0f));
}

static void test_alarm_1_clamps_above_cap(void)
{
    float at_cap  = rapid_wear_alarm_1_8_5(250.0f, 4.0f);
    float at_huge = rapid_wear_alarm_1_8_5(250.0f, 100.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, at_cap, at_huge);
}

static void test_alarm_2_at_beta_hits_decays_to_one_over_e(void)
{
    float at_zero = rapid_wear_alarm_2_8_5(250.0f, 4.0f, 0);
    float at_beta = rapid_wear_alarm_2_8_5(250.0f, 4.0f, 300);
    TEST_ASSERT_FLOAT_WITHIN(1.0f, at_zero / 2.71828f, at_beta);
}

static void test_dynamic_alarm_picks_max(void)
{
    /* When ΔRPM is 0 and we have no history, both formulas equal basic.
     * Dynamic picks max → basic. */
    float dyn = rapid_wear_dynamic_alarm_8_5(250.0f, 0.0f, 0.0f, 0);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 250.0f, dyn);
}

static void test_should_pause_at_high_delta_rpm(void)
{
    TEST_ASSERT_TRUE (rapid_wear_should_pause_monitoring_8_5(20.0f));
    TEST_ASSERT_FALSE(rapid_wear_should_pause_monitoring_8_5(10.0f));
}

static void test_reset_8_5_uses_avg_minus_running_avg(void)
{
    rapid_wear_sensor_state_t s;
    rapid_wear_init_sensor(&s);
    rapid_wear_reset_8_5(&s, /*five_rev_avg=*/100.0f, /*rapid_wear_running_avg=*/15.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, s.rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 85.0f,  s.rapid_slow);
}

/* @PR-review F-05 — seeded init avoids startup transient. */
static void test_init_with_seed_avoids_startup_transient(void)
{
    rapid_wear_sensor_state_t s;
    rapid_wear_init_sensor_with_seed(&s, /*initial=*/100.0f);
    /* Both EMAs equal initial value → rapid_wear is zero (no transient). */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, s.rapid_slow);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, s.rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f,   s.rapid_wear);

    /* First sample at the seed value keeps rapid_wear near zero. */
    rapid_wear_apply_sample(&s, 100.0f);
    TEST_ASSERT_FLOAT_WITHIN(0.01f, 0.0f, s.rapid_wear);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_init_zeros_state);
    RUN_TEST(test_init_with_seed_avoids_startup_transient);
    RUN_TEST(test_apply_sample_first_step_matches_spec);
    RUN_TEST(test_combine_single_is_abs);
    RUN_TEST(test_combine_cyl_sums_in_magnitude);
    RUN_TEST(test_combine_twin_cyl_sums_across_main_bearing);
    RUN_TEST(test_combine_mb_sum_arithmetic_matches_twin);
    RUN_TEST(test_alarm_1_at_zero_delta_equals_basic);
    RUN_TEST(test_alarm_1_at_capped_delta_yields_one_point_five_basic);
    RUN_TEST(test_alarm_1_clamps_above_cap);
    RUN_TEST(test_alarm_2_at_beta_hits_decays_to_one_over_e);
    RUN_TEST(test_dynamic_alarm_picks_max);
    RUN_TEST(test_should_pause_at_high_delta_rpm);
    RUN_TEST(test_reset_8_5_uses_avg_minus_running_avg);
    return UNITY_END();
}
