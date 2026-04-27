/*
 * test_module_alarm_thresholds_8_7.c — locks down spec 8.7 numeric constants.
 *
 * Coverage gap closure (per analysis 2026-04-28): NONE of the 8.7 alarm
 * threshold constants were exercised by any test, despite being the
 * substantive numeric delta from 8.5 to 8.7. This file mirrors
 * test_module_alarm_thresholds.c (which covers the 8.5 values).
 *
 * Covers feature_matrix req: R-§7.2-5
 */

#include "unity.h"
#include "alarms/alarm_thresholds_8_7.h"

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.7 §7.1 Table 7.2 — slow wear normal running. */
static void test_slow_alarm_filtered_normal_unchanged_from_8_5(void)
{
    TEST_ASSERT_EQUAL_INT(50, ALARM_SLOW_FILTERED_NORMAL_8_7);
}

static void test_slow_alarm_sensdev_normal_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(40, ALARM_SLOW_SENSDEV_NORMAL_8_7);
}

static void test_slow_alarm_cyldev_normal_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(30, ALARM_SLOW_CYLDEV_NORMAL_8_7);
}

static void test_slow_slowdown_filtered_normal_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(70, SLOWDOWN_SLOW_FILTERED_NORMAL_8_7);
}

/* @spec 8.7 — CHANGED from 8.5: was 50, now 60 (loosened slightly). */
static void test_slow_slowdown_sensdev_normal_changed_to_60(void)
{
    TEST_ASSERT_EQUAL_INT(60, SLOWDOWN_SLOW_SENSDEV_NORMAL_8_7);
}

/* @spec 8.7 §7.1 Table 7.3 — slow wear during learning. */
static void test_slow_alarm_filtered_learning_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(80, ALARM_SLOW_FILTERED_LEARNING_8_7);
}

static void test_slow_alarm_sensdev_learning_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(50, ALARM_SLOW_SENSDEV_LEARNING_8_7);
}

static void test_slow_alarm_cyldev_learning_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(40, ALARM_SLOW_CYLDEV_LEARNING_8_7);
}

static void test_slow_slowdown_filtered_learning_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(90, SLOWDOWN_SLOW_FILTERED_LEARNING_8_7);
}

/* @spec 8.7 — CHANGED from 8.5: was 70, now 50 (tightened). */
static void test_slow_slowdown_sensdev_learning_changed_to_50(void)
{
    TEST_ASSERT_EQUAL_INT(50, SLOWDOWN_SLOW_SENSDEV_LEARNING_8_7);
}

static void test_pre_warning_unchanged(void)
{
    TEST_ASSERT_EQUAL_INT(25, PRE_WARNING_LIMIT_8_7);
}

/* @spec 8.7 §7.2 Table 7.5 — rapid wear normal running.
 * MAJOR change from 8.5 (Single 250→200, Cyl 180→90, Twin 250→75). */
static void test_rapid_basic_single_normal_changed_to_200(void)
{
    TEST_ASSERT_EQUAL_INT(200, ALARM_RAPID_BASIC_SINGLE_NORMAL_8_7);
}

static void test_rapid_basic_cyl_normal_changed_to_90(void)
{
    TEST_ASSERT_EQUAL_INT(90, ALARM_RAPID_BASIC_CYL_NORMAL_8_7);
}

static void test_rapid_basic_twin_normal_changed_to_75(void)
{
    TEST_ASSERT_EQUAL_INT(75, ALARM_RAPID_BASIC_TWIN_NORMAL_8_7);
}

/* @spec 8.7 §7.2 Table 7.6 — rapid wear during refining of comp curve. */
static void test_rapid_basic_single_refining(void)
{
    TEST_ASSERT_EQUAL_INT(230, ALARM_RAPID_BASIC_SINGLE_REFINING_8_7);
}

static void test_rapid_basic_cyl_refining(void)
{
    TEST_ASSERT_EQUAL_INT(120, ALARM_RAPID_BASIC_CYL_REFINING_8_7);
}

static void test_rapid_basic_twin_refining(void)
{
    TEST_ASSERT_EQUAL_INT(105, ALARM_RAPID_BASIC_TWIN_REFINING_8_7);
}

/* @spec 8.7 §7.2 Table 7.7 — rapid wear during rough comp curve creation. */
static void test_rapid_basic_single_rough(void)
{
    TEST_ASSERT_EQUAL_INT(260, ALARM_RAPID_BASIC_SINGLE_ROUGH_8_7);
}

static void test_rapid_basic_cyl_rough(void)
{
    TEST_ASSERT_EQUAL_INT(150, ALARM_RAPID_BASIC_CYL_ROUGH_8_7);
}

static void test_rapid_basic_twin_rough(void)
{
    TEST_ASSERT_EQUAL_INT(135, ALARM_RAPID_BASIC_TWIN_ROUGH_8_7);
}

/* Sanity: refining > normal (operator gets less-tight thresholds during
 * the noisier phases) and rough > refining (rough phase is noisiest).
 * Unity's TEST_ASSERT_GREATER_THAN_INT(threshold, actual) asserts actual > threshold. */
static void test_thresholds_relax_in_earlier_phases(void)
{
    /* ROUGH > REFINING > NORMAL for all three metrics. */
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_SINGLE_REFINING_8_7, ALARM_RAPID_BASIC_SINGLE_ROUGH_8_7);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_SINGLE_NORMAL_8_7,   ALARM_RAPID_BASIC_SINGLE_REFINING_8_7);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_CYL_REFINING_8_7,    ALARM_RAPID_BASIC_CYL_ROUGH_8_7);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_CYL_NORMAL_8_7,      ALARM_RAPID_BASIC_CYL_REFINING_8_7);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_TWIN_REFINING_8_7,   ALARM_RAPID_BASIC_TWIN_ROUGH_8_7);
    TEST_ASSERT_GREATER_THAN_INT(ALARM_RAPID_BASIC_TWIN_NORMAL_8_7,     ALARM_RAPID_BASIC_TWIN_REFINING_8_7);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_slow_alarm_filtered_normal_unchanged_from_8_5);
    RUN_TEST(test_slow_alarm_sensdev_normal_unchanged);
    RUN_TEST(test_slow_alarm_cyldev_normal_unchanged);
    RUN_TEST(test_slow_slowdown_filtered_normal_unchanged);
    RUN_TEST(test_slow_slowdown_sensdev_normal_changed_to_60);
    RUN_TEST(test_slow_alarm_filtered_learning_unchanged);
    RUN_TEST(test_slow_alarm_sensdev_learning_unchanged);
    RUN_TEST(test_slow_alarm_cyldev_learning_unchanged);
    RUN_TEST(test_slow_slowdown_filtered_learning_unchanged);
    RUN_TEST(test_slow_slowdown_sensdev_learning_changed_to_50);
    RUN_TEST(test_pre_warning_unchanged);
    RUN_TEST(test_rapid_basic_single_normal_changed_to_200);
    RUN_TEST(test_rapid_basic_cyl_normal_changed_to_90);
    RUN_TEST(test_rapid_basic_twin_normal_changed_to_75);
    RUN_TEST(test_rapid_basic_single_refining);
    RUN_TEST(test_rapid_basic_cyl_refining);
    RUN_TEST(test_rapid_basic_twin_refining);
    RUN_TEST(test_rapid_basic_single_rough);
    RUN_TEST(test_rapid_basic_cyl_rough);
    RUN_TEST(test_rapid_basic_twin_rough);
    RUN_TEST(test_thresholds_relax_in_earlier_phases);
    return UNITY_END();
}
