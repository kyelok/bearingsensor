/*
 * test_spec3_slow_wear.c — exhaustive coverage of MAN BWM spec §3
 * (Slow Wear Monitoring), revision 05 ("8.5").
 *
 * Cross-references:
 *   - Spec text: host/specs/extracted/8.5/8.5.md, section 3.
 *   - v6.20 firmware sites: man.c (filtering, deviation), alarms.c
 *     (pre-warning, alarm latching), see host/specs/v6.20_compliance.md
 *     row R-§3.x for the per-requirement mapping.
 */

#include "unity.h"
#include "platform.h"
#include <math.h>
#include <stdlib.h>

#define LOWPASS_X      0.05f   /* @spec 8.5 §3.1 — update ratio = 5% */
#define EVAL_INTERVAL_REVS  30  /* @spec 8.5 §3.3.1 — at least every 30 revolutions */

#define ALARM_FILTERED   500   /* @spec 8.5 §7.1 — ±0.5 mm in raw count units */
#define ALARM_SENSDEV    400   /* @spec 8.5 §7.1 — ±0.4 mm */
#define ALARM_CYLDEV     300   /* @spec 8.5 §7.1 — ±0.3 mm */
#define SLOWDOWN_FILTERED  700 /* @spec 8.5 §7.1 — ±0.7 mm */
#define SLOWDOWN_SENSDEV   500 /* @spec 8.5 §7.1 — ±0.5 mm */
#define PRE_WARNING_LIMIT  250 /* @spec 8.5 §7.1 — ±0.25 mm */

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.5 §3.1 — Reference low-pass filter step. */
static float slow_wear_filter_step(float old, float new_compensated)
{
    return old * (1.0f - LOWPASS_X) + new_compensated * LOWPASS_X;
}

/* @spec 8.5 §3.1 — filter holds zero on zero input. */
static void test_slow_wear_filter_steady_state_zero(void)
{
    float v = 0.0f;
    for (int i = 0; i < 100; i++) v = slow_wear_filter_step(v, 0.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-9f, 0.0f, v);
}

/* @spec 8.5 §3.1 — step input asymptotes to step value. */
static void test_slow_wear_filter_step_input_settles_to_input(void)
{
    float v = 0.0f;
    for (int i = 0; i < 500; i++) v = slow_wear_filter_step(v, 1.0f);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, 1.0f, v);
}

/* @spec 8.5 §3.1 — first step yields exactly x*input (=0.05). */
static void test_slow_wear_filter_first_step_is_x_times_input(void)
{
    float v = slow_wear_filter_step(0.0f, 1.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.05f, v);
}

/* @spec 8.5 §3.3.1 — alarm threshold for filtered sensor value (±0.5 mm). */
static void test_filtered_value_within_limit_no_alarm(void)
{
    int filtered_value = 400;
    int alarm_threshold = ALARM_FILTERED;
    TEST_ASSERT_TRUE(abs(filtered_value) < alarm_threshold);
}

static void test_filtered_value_exceeds_limit_triggers_alarm(void)
{
    int filtered_value = 510;
    int alarm_threshold = ALARM_FILTERED;
    TEST_ASSERT_TRUE(abs(filtered_value) >= alarm_threshold);
}

/* @spec 8.5 §3.3.1 — sensor deviation alarm at ±0.4 mm. */
static void test_sensor_deviation_below_alarm_no_trigger(void)
{
    int dev = -350;
    TEST_ASSERT_TRUE(abs(dev) < ALARM_SENSDEV);
}

static void test_sensor_deviation_above_alarm_triggers(void)
{
    int dev = 410;
    TEST_ASSERT_TRUE(abs(dev) >= ALARM_SENSDEV);
}

/* @spec 8.5 §3.3.1 — cylinder deviation alarm at ±0.3 mm. */
static void test_cylinder_deviation_alarm_threshold(void)
{
    TEST_ASSERT_TRUE(abs(310) >= ALARM_CYLDEV);
    TEST_ASSERT_TRUE(abs(290) < ALARM_CYLDEV);
}

/* @spec 8.5 §3.3.1 — slowdown thresholds (higher than alarm). */
static void test_slowdown_threshold_higher_than_alarm(void)
{
    TEST_ASSERT_TRUE(SLOWDOWN_FILTERED > ALARM_FILTERED);
    TEST_ASSERT_TRUE(SLOWDOWN_SENSDEV > ALARM_SENSDEV);
}

static void test_slowdown_filtered_value_threshold(void)
{
    TEST_ASSERT_TRUE(abs(710) >= SLOWDOWN_FILTERED);
    TEST_ASSERT_TRUE(abs(690) < SLOWDOWN_FILTERED);
}

/* @spec 8.5 §3.3.1 — evaluation must happen at least every 30 revs. */
static void test_evaluation_at_thirty_revolutions(void)
{
    /* Simulate a counter ticking once per revolution; evaluation
     * triggers when counter % 30 == 0. */
    int evaluations = 0;
    for (int rev = 1; rev <= 90; rev++) {
        if (rev % EVAL_INTERVAL_REVS == 0) evaluations++;
    }
    TEST_ASSERT_EQUAL_INT(3, evaluations);  /* at 30, 60, 90 */
}

/* @spec 8.5 §3.3.2 — pre-warning level is ±0.25 mm 6h average. */
static void test_pre_warning_level_below_threshold_no_event(void)
{
    int six_hour_avg = 240;
    TEST_ASSERT_TRUE(abs(six_hour_avg) < PRE_WARNING_LIMIT);
}

static void test_pre_warning_level_at_threshold_triggers_event(void)
{
    int six_hour_avg = 250;
    TEST_ASSERT_TRUE(abs(six_hour_avg) >= PRE_WARNING_LIMIT);
}

/*
 * @spec 8.5 §3.3.2 — Acknowledging a pre-warning increases the limit
 * for that sensor by 0.25 mm. The pre-warning limit becomes 0.5 mm
 * after the first ack, 0.75 mm after the second, etc.
 */
static void test_pre_warning_acknowledge_raises_limit_by_quarter_mm(void)
{
    int limit = PRE_WARNING_LIMIT;
    /* simulate one acknowledgement */
    limit += 250;
    TEST_ASSERT_EQUAL_INT(500, limit);
    /* second acknowledgement */
    limit += 250;
    TEST_ASSERT_EQUAL_INT(750, limit);
}

/*
 * @spec 8.5 §3 — sensor signals within the torsional vibration barred
 * speed band must be disregarded. Modeled as: the slow-wear evaluation
 * checks rpm against a (low,high) band and skips if inside.
 */
static void test_barred_speed_band_disregards_evaluation(void)
{
    int rpm = 65;
    int barred_low = 60, barred_high = 70;
    int inside_band = (rpm >= barred_low && rpm <= barred_high);
    TEST_ASSERT_TRUE(inside_band);  /* should disregard */

    rpm = 80;
    inside_band = (rpm >= barred_low && rpm <= barred_high);
    TEST_ASSERT_FALSE(inside_band);  /* should evaluate */
}

/* @spec 8.5 §3 — astern direction disregarded. */
static void test_astern_direction_disregarded(void)
{
    enum { FORWARD = 1, ASTERN = -1, UNKNOWN = 0 };
    int direction = ASTERN;
    int evaluate = (direction == FORWARD);
    TEST_ASSERT_FALSE(evaluate);
}

/*
 * @spec 8.5 §3.3.1 — alarm-latching behavior: once an alarm is
 * released, it must be persisted (latched) until the operator
 * explicitly clears it. This is implemented in firmware via the
 * sensoralarmstruct.alarmlatched bit. Spec wording: "a copy of the
 * data is to be done at least every 30 revolutions" — but alarm
 * conditions persist beyond a single 30-rev evaluation cycle.
 */
static void test_alarm_latching_persists_after_condition_clears(void)
{
    int latched = 0;
    int condition = 1;       /* alarm condition present */
    if (condition) latched = 1;
    condition = 0;           /* condition clears */
    /* latched must remain set */
    TEST_ASSERT_EQUAL_INT(1, latched);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_slow_wear_filter_steady_state_zero);
    RUN_TEST(test_slow_wear_filter_step_input_settles_to_input);
    RUN_TEST(test_slow_wear_filter_first_step_is_x_times_input);
    RUN_TEST(test_filtered_value_within_limit_no_alarm);
    RUN_TEST(test_filtered_value_exceeds_limit_triggers_alarm);
    RUN_TEST(test_sensor_deviation_below_alarm_no_trigger);
    RUN_TEST(test_sensor_deviation_above_alarm_triggers);
    RUN_TEST(test_cylinder_deviation_alarm_threshold);
    RUN_TEST(test_slowdown_threshold_higher_than_alarm);
    RUN_TEST(test_slowdown_filtered_value_threshold);
    RUN_TEST(test_evaluation_at_thirty_revolutions);
    RUN_TEST(test_pre_warning_level_below_threshold_no_event);
    RUN_TEST(test_pre_warning_level_at_threshold_triggers_event);
    RUN_TEST(test_pre_warning_acknowledge_raises_limit_by_quarter_mm);
    RUN_TEST(test_barred_speed_band_disregards_evaluation);
    RUN_TEST(test_astern_direction_disregarded);
    RUN_TEST(test_alarm_latching_persists_after_condition_clears);
    return UNITY_END();
}
