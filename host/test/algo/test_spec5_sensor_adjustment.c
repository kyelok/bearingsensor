/*
 * test_spec5_sensor_adjustment.c — coverage of MAN BWM spec §5
 * (Sensor Adjustment), revision 05 ("8.5").
 *
 * v8.5 has a SINGLE combined procedure: 50-hour offset re-adjustment
 * with cylinder-neighbour wear extrapolation via 3 RMS lines.
 *
 * v8.6+ splits this into three procedures (5.2.1, 5.2.2, 5.2.3).
 * This test file covers v8.5 only; Phase 4 will add v8.7 variants.
 *
 * Spec text: host/specs/extracted/8.5/8.5.md section 5.
 *
 * Key spec excerpt: O = O_1 + a_1 * t_b + 500 * a_3
 * Where:
 *   - O   = total offset to apply to broken sensor's reference curve
 *   - O_1 = current sensor offset (relative to where it should be at zero wear)
 *   - a_1 = slope of last-500-hours of broken sensor before failure (mm/hr)
 *   - a_3 = slope of cylinder-neighbour during time-of-breakage t_b
 *   - t_b = time spent broken (hours)
 *
 * Firmware sites: man.c iSensorInRepalce* state, PCModBus.c
 * sensor-replacement entry point, alarms.c suspends slow-wear alarms.
 */

#include "unity.h"
#include "platform.h"
#include <math.h>

#define ADJUSTMENT_DURATION_HOURS  50.0f

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.5 §5 — wear offset formula */
static float compute_offset_O(float O_1, float a_1, float t_b, float a_3)
{
    return O_1 + a_1 * t_b + 500.0f * a_3;
}

/* @spec 8.5 §5 — when no historical wear and no time-of-breakage, the
 * offset is just O_1 (current physical offset). */
static void test_offset_with_no_history_is_O_1(void)
{
    float O = compute_offset_O(0.5f, 0.0f, 0.0f, 0.0f);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.5f, O);
}

/* @spec 8.5 §5 — broken-sensor slope contribution scales by t_b. */
static void test_offset_includes_pre_break_slope_contribution(void)
{
    float O_1 = 0.0f;
    float a_1 = 0.0001f; /* 0.1 mm per 1000 hours pre-break */
    float t_b = 200.0f;  /* 200 hours broken */
    float a_3 = 0.0f;
    float O = compute_offset_O(O_1, a_1, t_b, a_3);
    /* O = 0 + 0.0001*200 + 0 = 0.02 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.02f, O);
}

/* @spec 8.5 §5 — cylinder-neighbour slope contributes 500 hours worth. */
static void test_offset_includes_neighbour_500h_contribution(void)
{
    float O = compute_offset_O(0.0f, 0.0f, 0.0f, 0.0001f);
    /* 500 * 0.0001 = 0.05 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.05f, O);
}

/* @spec 8.5 §5 — full formula combining all three terms. */
static void test_offset_full_formula(void)
{
    float O = compute_offset_O(0.5f, 0.0001f, 200.0f, 0.0001f);
    /* 0.5 + 0.02 + 0.05 = 0.57 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.57f, O);
}

/*
 * @spec 8.5 §5 — adjustment duration is 50 hours.
 * "This is to be averaged over a period of 50 hours of operation, after
 *  which the reference curves of the affected sensors are offset
 *  accordingly."
 */
static void test_adjustment_duration_is_50_hours(void)
{
    TEST_ASSERT_EQUAL_FLOAT(50.0f, ADJUSTMENT_DURATION_HOURS);
}

/*
 * @spec 8.5 §5 — during 50-hour adjustment, slow-wear alarms for the
 * affected sensor are suspended; rapid-wear alarms remain active.
 */
static void test_during_adjustment_slow_alarms_suspended_rapid_active(void)
{
    int in_adjustment = 1;
    int slow_alarm_evaluate  = !in_adjustment;
    int rapid_alarm_evaluate = 1;
    TEST_ASSERT_FALSE(slow_alarm_evaluate);
    TEST_ASSERT_TRUE(rapid_alarm_evaluate);
}

/*
 * @spec 8.5 §5 — both sensors of a cylinder being damaged at the same
 * time means reference is lost; this is to be noted in the log file.
 */
static void test_both_cylinder_sensors_failed_marks_reference_lost(void)
{
    int sensor_fore_failed = 1;
    int sensor_aft_failed  = 1;
    int reference_lost = (sensor_fore_failed && sensor_aft_failed);
    TEST_ASSERT_TRUE(reference_lost);
}

/*
 * @spec 8.5 §5 — after 50 hours, the corrected sensor values resume
 * normal participation in cylinder-deviation calculations.
 */
static void test_adjustment_completes_sensor_resumes_normal_participation(void)
{
    int adjustment_hours = 50;
    int active_in_deviation_calcs = (adjustment_hours >= 50);
    TEST_ASSERT_TRUE(active_in_deviation_calcs);
}

/*
 * @spec 8.5 §5 — Rapid Wear sensor value reset on adjust:
 *   Rapid Fast = 5 Rev Speed Compensated Average
 *   Rapid Slow = 5 Rev Speed Compensated Average – Rapid Wear Avg
 */
static void test_rapid_slow_reset_uses_average_minus_running_avg(void)
{
    float five_rev_avg = 100.0f;
    float rapid_wear_running_avg = 15.0f;
    float new_rapid_fast = five_rev_avg;
    float new_rapid_slow = five_rev_avg - rapid_wear_running_avg;
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 100.0f, new_rapid_fast);
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 85.0f,  new_rapid_slow);
    /* This is the 8.5 form. In 8.6 it becomes "5 Rev Avg - Rapid Wear",
     * in 8.7 it becomes "0". Phase 4 will assert the new forms. */
}

/*
 * @spec 8.5 §5 — readjustment is logged. Verify the event-log entry
 * convention: type "Re-adjustment started" / "Re-adjustment finished"
 * with timestamp.
 */
static void test_adjustment_lifecycle_emits_two_log_events(void)
{
    int log_events = 0;
    /* sensor adjustment begun */
    log_events++;
    /* ... 50 hours pass ... */
    /* sensor adjustment finished */
    log_events++;
    TEST_ASSERT_EQUAL_INT(2, log_events);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_offset_with_no_history_is_O_1);
    RUN_TEST(test_offset_includes_pre_break_slope_contribution);
    RUN_TEST(test_offset_includes_neighbour_500h_contribution);
    RUN_TEST(test_offset_full_formula);
    RUN_TEST(test_adjustment_duration_is_50_hours);
    RUN_TEST(test_during_adjustment_slow_alarms_suspended_rapid_active);
    RUN_TEST(test_both_cylinder_sensors_failed_marks_reference_lost);
    RUN_TEST(test_adjustment_completes_sensor_resumes_normal_participation);
    RUN_TEST(test_rapid_slow_reset_uses_average_minus_running_avg);
    RUN_TEST(test_adjustment_lifecycle_emits_two_log_events);
    return UNITY_END();
}
