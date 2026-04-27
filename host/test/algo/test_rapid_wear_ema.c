/*
 * test_rapid_wear_ema.c — exponential moving averages for rapid wear.
 *
 * @spec 8.5 §4.1 (and identical in 8.6/8.7 §4.1)
 *
 * The rapid-wear pathway computes two EMAs per sensor:
 *   Avg_new = Avg_old * (1 - x) + Value_new * x
 *   - Rapid Slow: x = 0.0001  (slow-changing reference)
 *   - Rapid Fast: x = 0.2     (fast-tracking signal)
 * And a derived rapid-wear value:
 *   Rapid Wear = Rapid Fast - Rapid Slow
 *
 * Firmware location (v6.20): man.c, around the rapid-wear update loop.
 * Once the function is extracted (Phase 3.2), point the test at the
 * extracted symbol directly. Until then, test the spec-defined formula.
 */

#include "unity.h"
#include "platform.h"
#include <math.h>

#define RAPID_SLOW_X    0.0001f
#define RAPID_FAST_X    0.2f

static float rapid_ema_step(float avg_old, float value_new, float x)
{
    return avg_old * (1.0f - x) + value_new * x;
}

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.5 §4.1.1 — Rapid Slow update factor x = 0.0001 */
static void test_rapid_slow_factor_is_one_ten_thousandth(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0001f, RAPID_SLOW_X);
}

/* @spec 8.5 §4.1.2 — Rapid Fast update factor x = 0.2 */
static void test_rapid_fast_factor_is_one_fifth(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.2f, RAPID_FAST_X);
}

/* @spec 8.5 §4.1 — EMA preserves a constant input */
static void test_ema_holds_constant_input_at_steady_state(void)
{
    float avg = 100.0f;
    for (int i = 0; i < 1000; i++) {
        avg = rapid_ema_step(avg, 100.0f, RAPID_FAST_X);
    }
    TEST_ASSERT_FLOAT_WITHIN(0.01f, 100.0f, avg);
}

/*
 * @spec 8.5 §4.1.2 — A step input traverses the gap at rate x per sample.
 * After one step:    avg = 0*(1-0.2) + 100*0.2 = 20
 * After two steps:   avg = 20*(1-0.2) + 100*0.2 = 36
 * After three steps: avg = 36*(1-0.2) + 100*0.2 = 48.8
 */
static void test_rapid_fast_step_response_matches_closed_form(void)
{
    float avg = 0.0f;
    avg = rapid_ema_step(avg, 100.0f, RAPID_FAST_X);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 20.0f, avg);
    avg = rapid_ema_step(avg, 100.0f, RAPID_FAST_X);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 36.0f, avg);
    avg = rapid_ema_step(avg, 100.0f, RAPID_FAST_X);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 48.8f, avg);
}

/*
 * @spec 8.5 §4.1.1 — Rapid Slow with x=0.0001 takes ~10000 samples to
 * approach 63 % of a step (1 - 1/e). After exactly 10000 samples the
 * value should be near 100 * (1 - exp(-1)) ≈ 63.21.
 */
static void test_rapid_slow_step_response_approaches_one_minus_one_over_e(void)
{
    float avg = 0.0f;
    for (int i = 0; i < 10000; i++) {
        avg = rapid_ema_step(avg, 100.0f, RAPID_SLOW_X);
    }
    float expected = 100.0f * (1.0f - 1.0f / 2.71828f);
    TEST_ASSERT_FLOAT_WITHIN(0.5f, expected, avg);
}

/*
 * @spec 8.5 §4.1.3 — Rapid Wear Sensor = Rapid Fast - Rapid Slow.
 * On a step input from 0 to 100, Rapid Fast climbs much faster than
 * Rapid Slow, so Rapid Wear is large initially and shrinks over time.
 */
static void test_rapid_wear_value_is_difference_of_fast_minus_slow(void)
{
    float fast = 0.0f, slow = 0.0f;
    /* one step of input */
    fast = rapid_ema_step(fast, 100.0f, RAPID_FAST_X);
    slow = rapid_ema_step(slow, 100.0f, RAPID_SLOW_X);
    float rapid_wear = fast - slow;
    /* fast has jumped to 20, slow has only moved to 0.01 */
    TEST_ASSERT_FLOAT_WITHIN(0.01f, 19.99f, rapid_wear);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_rapid_slow_factor_is_one_ten_thousandth);
    RUN_TEST(test_rapid_fast_factor_is_one_fifth);
    RUN_TEST(test_ema_holds_constant_input_at_steady_state);
    RUN_TEST(test_rapid_fast_step_response_matches_closed_form);
    RUN_TEST(test_rapid_slow_step_response_approaches_one_minus_one_over_e);
    RUN_TEST(test_rapid_wear_value_is_difference_of_fast_minus_slow);
    return UNITY_END();
}
