/*
 * test_module_delta_rpm_tracker.c — verifies the ΔRPM tracking
 * state machine per spec 8.7 §4.4.
 */

#include "unity.h"
#include "rapid_wear/delta_rpm_tracker.h"

static delta_rpm_tracker_state_t s;

void setUp(void)    { delta_rpm_tracker_init(&s); }
void tearDown(void) { }

/* @spec 8.7 §4.4 — first sample seeds both tracks. */
static void test_first_sample_seeds_high_and_low(void)
{
    delta_rpm_tracker_update(&s, 100);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, s.rpm_low);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, s.rpm_high);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f,   delta_rpm_tracker_delta(&s));
}

/* @spec 8.7 §4.4 — steady RPM produces zero delta. */
static void test_steady_rpm_yields_zero_delta(void)
{
    for (int i = 0; i < 1000; i++) {
        delta_rpm_tracker_update(&s, 100);
    }
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 0.0f, delta_rpm_tracker_delta(&s));
}

/* @spec 8.7 §4.4 — sudden RPM jump up moves rpm_high immediately;
 * rpm_low slowly catches up via the EMA. */
static void test_sudden_jump_up_moves_high_immediately(void)
{
    delta_rpm_tracker_update(&s, 100);
    delta_rpm_tracker_update(&s, 130);
    /* rpm_high should have jumped to 130 (max() behavior). */
    TEST_ASSERT_FLOAT_WITHIN(0.1f, 130.0f, s.rpm_high);
    /* rpm_low EMA after one step at x=0.003: 100*(1-0.003)+130*0.003 = 100.09
     * but min() with r=130 means low stays at the EMA value (since EMA < r). */
    TEST_ASSERT_FLOAT_WITHIN(0.5f, 100.09f, s.rpm_low);
    TEST_ASSERT_FLOAT_WITHIN(0.5f, 30.0f, delta_rpm_tracker_delta(&s));
}

/* @spec 8.7 §4.4 — sudden RPM drop moves rpm_low immediately. */
static void test_sudden_jump_down_moves_low_immediately(void)
{
    delta_rpm_tracker_update(&s, 100);
    delta_rpm_tracker_update(&s, 70);
    /* rpm_low should have dropped to 70 (min() behavior). */
    TEST_ASSERT_FLOAT_WITHIN(0.1f, 70.0f, s.rpm_low);
    TEST_ASSERT_FLOAT_WITHIN(0.5f, 30.0f, delta_rpm_tracker_delta(&s));
}

/* @spec 8.7 §4.4 — after a transient, ΔRPM decays back toward 0
 * as the EMA catches up. */
static void test_delta_decays_toward_zero_after_transient(void)
{
    delta_rpm_tracker_update(&s, 100);
    delta_rpm_tracker_update(&s, 130);          /* spike */
    /* Then 1000 steady samples at 130. */
    for (int i = 0; i < 1000; i++) {
        delta_rpm_tracker_update(&s, 130);
    }
    /* Both tracks should now be very near 130, delta near 0. */
    TEST_ASSERT_FLOAT_WITHIN(2.0f, 0.0f, delta_rpm_tracker_delta(&s));
}

/* @spec 8.7 §4.4 — ΔRPM_PCT calculation. */
static void test_delta_pct_relative_to_nominal(void)
{
    delta_rpm_tracker_update(&s, 100);
    delta_rpm_tracker_update(&s, 116);
    /* Δ = 16 RPM, nominal = 100 → 16% */
    float pct = delta_rpm_tracker_pct(&s, 100);
    TEST_ASSERT_FLOAT_WITHIN(0.5f, 16.0f, pct);
}

static void test_delta_pct_with_zero_nominal_returns_zero(void)
{
    delta_rpm_tracker_update(&s, 100);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, delta_rpm_tracker_pct(&s, 0));
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    delta_rpm_tracker_init(NULL);
    delta_rpm_tracker_update(NULL, 100);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, delta_rpm_tracker_delta(NULL));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, delta_rpm_tracker_pct(NULL, 100));
    TEST_PASS_MESSAGE("NULL-arg guards do not crash");
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_first_sample_seeds_high_and_low);
    RUN_TEST(test_steady_rpm_yields_zero_delta);
    RUN_TEST(test_sudden_jump_up_moves_high_immediately);
    RUN_TEST(test_sudden_jump_down_moves_low_immediately);
    RUN_TEST(test_delta_decays_toward_zero_after_transient);
    RUN_TEST(test_delta_pct_relative_to_nominal);
    RUN_TEST(test_delta_pct_with_zero_nominal_returns_zero);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
