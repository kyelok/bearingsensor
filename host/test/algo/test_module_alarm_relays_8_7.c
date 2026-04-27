/*
 * test_module_alarm_relays_8_7.c — verifies the v8.7 chapter 8
 * alarm-relay state machine.
 */

#include "unity.h"
#include "system/alarm_relays_8_7.h"

void setUp(void) { }
void tearDown(void) { }

static void test_init_state_all_normal(void)
{
    alarm_relay_state_t s;
    alarm_relays_init(&s);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_NORMAL, s.alarm_state);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_NORMAL, s.slowdown_state);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_NORMAL, s.fail_state);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 1.0f, s.toggle_period_seconds);
}

static void test_set_clear_alarm_round_trip(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    alarm_relays_set_alarm(&s);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_PRE_WARNING_OR_ALARM, s.alarm_state);
    alarm_relays_clear_alarm(&s);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_NORMAL, s.alarm_state);
}

static void test_three_relays_independent(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    alarm_relays_set_alarm(&s);
    alarm_relays_set_slowdown(&s);
    /* Setting these doesn't trip system fail. */
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_NORMAL, s.fail_state);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_PRE_WARNING_OR_ALARM, s.alarm_state);
    TEST_ASSERT_EQUAL_INT(BWM_RELAY_SLOWDOWN, s.slowdown_state);
}

static void test_toggle_period_default_one_second(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 1.0f, s.toggle_period_seconds);
}

static void test_toggle_period_within_range_accepted(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    TEST_ASSERT_EQUAL_INT(1, alarm_relays_set_toggle_period(&s, 0.5f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.5f, s.toggle_period_seconds);
    TEST_ASSERT_EQUAL_INT(1, alarm_relays_set_toggle_period(&s, 4.0f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 4.0f, s.toggle_period_seconds);
}

static void test_toggle_period_below_minimum_rejected(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    TEST_ASSERT_EQUAL_INT(0, alarm_relays_set_toggle_period(&s, 0.05f));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 1.0f, s.toggle_period_seconds);  /* unchanged */
}

static void test_toggle_period_above_maximum_rejected(void)
{
    alarm_relay_state_t s; alarm_relays_init(&s);
    TEST_ASSERT_EQUAL_INT(0, alarm_relays_set_toggle_period(&s, 10.0f));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_init_state_all_normal);
    RUN_TEST(test_set_clear_alarm_round_trip);
    RUN_TEST(test_three_relays_independent);
    RUN_TEST(test_toggle_period_default_one_second);
    RUN_TEST(test_toggle_period_within_range_accepted);
    RUN_TEST(test_toggle_period_below_minimum_rejected);
    RUN_TEST(test_toggle_period_above_maximum_rejected);
    return UNITY_END();
}
