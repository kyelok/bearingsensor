/*
 * test_module_alarm_thresholds.c — exercises the refactored
 * alarm_thresholds module (constants + latching state machine).
 */

#include "unity.h"
#include "alarms/alarm_thresholds.h"

void setUp(void) { }
void tearDown(void) { }

/* Constants — these are the regression net for any accidental edit. */

static void test_constants_slow_wear_normal(void)
{
    TEST_ASSERT_EQUAL_INT(50, ALARM_SLOW_FILTERED_NORMAL_8_5);
    TEST_ASSERT_EQUAL_INT(40, ALARM_SLOW_SENSDEV_NORMAL_8_5);
    TEST_ASSERT_EQUAL_INT(30, ALARM_SLOW_CYLDEV_NORMAL_8_5);
    TEST_ASSERT_EQUAL_INT(70, SLOWDOWN_SLOW_FILTERED_NORMAL_8_5);
    TEST_ASSERT_EQUAL_INT(50, SLOWDOWN_SLOW_SENSDEV_NORMAL_8_5);
}

static void test_constants_slow_wear_learning_higher(void)
{
    TEST_ASSERT_GREATER_THAN_INT(ALARM_SLOW_FILTERED_NORMAL_8_5, ALARM_SLOW_FILTERED_LEARNING_8_5);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_SLOW_SENSDEV_NORMAL_8_5,  ALARM_SLOW_SENSDEV_LEARNING_8_5);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_SLOW_CYLDEV_NORMAL_8_5,   ALARM_SLOW_CYLDEV_LEARNING_8_5);
}

static void test_constants_pre_warning(void)
{
    TEST_ASSERT_EQUAL_INT(25, PRE_WARNING_LIMIT_8_5);
}

static void test_constants_rapid_wear_basic(void)
{
    TEST_ASSERT_EQUAL_INT(250, ALARM_RAPID_BASIC_SINGLE_8_5);
    TEST_ASSERT_EQUAL_INT(180, ALARM_RAPID_BASIC_CYL_8_5);
    TEST_ASSERT_EQUAL_INT(250, ALARM_RAPID_BASIC_TWIN_8_5);
}

/* Latching state machine */

static void test_latch_init_state_all_clear(void)
{
    alarm_latch_state_t s = { 0 };
    TEST_ASSERT_FALSE(alarm_latch_is_alarm(&s));
    TEST_ASSERT_FALSE(alarm_latch_is_slowdown(&s));
    TEST_ASSERT_FALSE(alarm_latch_is_prewarning(&s));
}

static void test_latch_set_alarm_persists_until_cleared(void)
{
    alarm_latch_state_t s = { 0 };
    alarm_latch_set_alarm(&s);
    TEST_ASSERT_TRUE(alarm_latch_is_alarm(&s));
    alarm_latch_clear_alarm(&s);
    TEST_ASSERT_FALSE(alarm_latch_is_alarm(&s));
}

static void test_latch_three_classes_independent(void)
{
    alarm_latch_state_t s = { 0 };
    alarm_latch_set_alarm(&s);
    /* Setting alarm doesn't affect the other two. */
    TEST_ASSERT_TRUE(alarm_latch_is_alarm(&s));
    TEST_ASSERT_FALSE(alarm_latch_is_slowdown(&s));
    TEST_ASSERT_FALSE(alarm_latch_is_prewarning(&s));

    alarm_latch_set_slowdown(&s);
    TEST_ASSERT_TRUE(alarm_latch_is_alarm(&s));
    TEST_ASSERT_TRUE(alarm_latch_is_slowdown(&s));
    TEST_ASSERT_FALSE(alarm_latch_is_prewarning(&s));

    alarm_latch_clear_alarm(&s);
    /* Slowdown still latched. */
    TEST_ASSERT_FALSE(alarm_latch_is_alarm(&s));
    TEST_ASSERT_TRUE(alarm_latch_is_slowdown(&s));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_constants_slow_wear_normal);
    RUN_TEST(test_constants_slow_wear_learning_higher);
    RUN_TEST(test_constants_pre_warning);
    RUN_TEST(test_constants_rapid_wear_basic);
    RUN_TEST(test_latch_init_state_all_clear);
    RUN_TEST(test_latch_set_alarm_persists_until_cleared);
    RUN_TEST(test_latch_three_classes_independent);
    return UNITY_END();
}
