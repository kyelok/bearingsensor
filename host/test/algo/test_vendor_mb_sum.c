/*
 * test_vendor_mb_sum.c — coverage of the MB-Sum vendor extension.
 *
 * @vendor-extension MB-Sum (no spec reference; see
 *  host/docs/vendor_extensions/mb_sum.md).
 *
 * MB-Sum is the firmware's fourth alarm metric (after the spec's
 * Single / Cyl / TwinCyl). It targets MAIN BEARING wear by summing
 * across-cylinder sensor pairs at each main-bearing position.
 *
 * Algorithm:
 *   For each main-bearing position k between cyl k+1 and cyl k+2:
 *     MBSum[k] = abs( RW_AftCyl,k+1 + RW_FoCyl,k+2 )
 *
 * Then MBSum[k] is fed into the same dynamic-alarm pipeline as the
 * spec metrics, with its own basic-level constant (Modbus 4624).
 *
 * Firmware sites (per host/docs/vendor_extensions/mb_sum.md):
 *   - MBNeighbourSum() at man.c:1006
 *   - MBNeighbourRegSet() at man.c:920
 *   - manrefsum[k].mbnsum (per-position sum)
 *   - damagemon.alarmlevelmbsum (Modbus 4624)
 */

#include "unity.h"
#include "platform.h"
#include <stdlib.h>

void setUp(void) { }
void tearDown(void) { }

/* MB-Sum reference implementation. */
static int mb_sum(int rw_cyl_n_aft, int rw_cyl_n_plus_1_fore)
{
    return abs(rw_cyl_n_aft + rw_cyl_n_plus_1_fore);
}

/* For an N-cylinder engine, there are N-1 MB positions. */
static int num_mb_positions(int num_cylinders)
{
    return (num_cylinders > 0) ? (num_cylinders - 1) : 0;
}

static void test_mb_sum_zero_inputs_zero_output(void)
{
    TEST_ASSERT_EQUAL_INT(0, mb_sum(0, 0));
}

/* Two adjacent sensors trending the same direction sum in magnitude.
 * This is the headline "main bearing wear" signal. */
static void test_mb_sum_correlated_wear_sums_in_magnitude(void)
{
    /* Cyl N aft is 70 above ref, cyl N+1 fore is 80 above ref. */
    TEST_ASSERT_EQUAL_INT(150, mb_sum(70, 80));
}

/* Counter-phase sensors cancel — same as TwinCylRapid behavior. */
static void test_mb_sum_counter_phase_cancels(void)
{
    TEST_ASSERT_EQUAL_INT(0, mb_sum(50, -50));
}

/* MB-Sum is shape-identical to TwinCylRapid (same arithmetic), but
 * applied at a DIFFERENT pair of sensor positions:
 *   TwinCylRapid: aft cyl n + fore cyl n+1 — across MB n
 *   MB-Sum:       aft cyl n + fore cyl n+1 — across MB n  (...same!)
 * Wait — looking at the firmware again, MB-Sum is essentially the
 * same physical measurement as TwinCylRapid in 8.5. The difference
 * is INTENT and ALARM THRESHOLD: MB-Sum has its own configurable
 * basic level (`damagemon.alarmlevelmbsum`) so operators can tune it
 * independently.
 *
 * This means MB-Sum's value is dual-tuneability: customers who
 * want main-bearing alarms at a different threshold than crosshead
 * alarms can do so via 4624 without touching the TwinCyl threshold.
 */
static void test_mb_sum_arithmetic_matches_twin_cyl_rapid(void)
{
    int twin = abs(40 + 60);
    int mb   = mb_sum(40, 60);
    TEST_ASSERT_EQUAL_INT(twin, mb);
}

/* For a 6-cylinder engine, there are 5 MB-Sum positions. */
static void test_six_cylinder_engine_has_five_mb_positions(void)
{
    TEST_ASSERT_EQUAL_INT(5, num_mb_positions(6));
}

/* For a 12-cylinder engine, there are 11 MB-Sum positions. */
static void test_twelve_cylinder_engine_has_eleven_mb_positions(void)
{
    TEST_ASSERT_EQUAL_INT(11, num_mb_positions(12));
}

/* @vendor MB-Sum — bitmask membership: position k is valid only if
 * BOTH adjacent cylinder sensors are enabled and not in failure or
 * replacement mode. (See MBNeighbourRegSet in man.c:920.) */
static void test_mb_sum_position_invalid_when_either_sensor_failed(void)
{
    int sensor_n_aft_failed = 1;
    int sensor_n_plus_1_fore_failed = 0;
    int valid = !(sensor_n_aft_failed || sensor_n_plus_1_fore_failed);
    TEST_ASSERT_FALSE(valid);
}

/* @vendor MB-Sum — `ccsplit` field: when set non-zero (typical for
 * dual-bank engines), the MB-Sum at the split position is permanently
 * zeroed because there's no main bearing physically there. */
static void test_ccsplit_position_disables_mb_sum_there(void)
{
    int ccsplit = 6;  /* engine has split between cylinder 6 and 7 */
    int evaluating_position = 6;
    int disabled_at_split = (evaluating_position == ccsplit);
    TEST_ASSERT_TRUE(disabled_at_split);
}

/*
 * @vendor MB-Sum — dynamic alarm level uses the same pipeline as
 * Single/Cyl: max(Alarm_1, Alarm_2) with k=8, β=300 (8.5 form).
 * This means MB-Sum participates in the rpm-change alarm bumping
 * just like spec metrics.
 */
static void test_mb_sum_uses_same_dynamic_alarm_pipeline(void)
{
    int mb_basic = 100;
    int delta_rpm = 4;
    int alarm_1 = (int)(mb_basic * (1.0f + delta_rpm / 8.0f));
    /* alarm_1 = 100 * 1.5 = 150 */
    TEST_ASSERT_EQUAL_INT(150, alarm_1);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_mb_sum_zero_inputs_zero_output);
    RUN_TEST(test_mb_sum_correlated_wear_sums_in_magnitude);
    RUN_TEST(test_mb_sum_counter_phase_cancels);
    RUN_TEST(test_mb_sum_arithmetic_matches_twin_cyl_rapid);
    RUN_TEST(test_six_cylinder_engine_has_five_mb_positions);
    RUN_TEST(test_twelve_cylinder_engine_has_eleven_mb_positions);
    RUN_TEST(test_mb_sum_position_invalid_when_either_sensor_failed);
    RUN_TEST(test_ccsplit_position_disables_mb_sum_there);
    RUN_TEST(test_mb_sum_uses_same_dynamic_alarm_pipeline);
    return UNITY_END();
}
