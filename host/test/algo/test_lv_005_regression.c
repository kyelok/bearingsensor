/*
 * test_lv_005_regression.c
 *
 * Regression test for Bug Lv-005 (per host/docs/LEGACY_BUGS.md): legacy
 * mancal.c wrote past the end of `manrefsum[]` (declared size 14) when
 * looping with bound `MAX_NUM_CHANNELS` (28). Buffer overflow during
 * calibration restart.
 *
 * The bug existed because legacy code mixed two different array bounds:
 * - per-sensor arrays sized MAX_NUM_CHANNELS (28)
 * - per-cylinder arrays sized MAX_NUM_CYLINDERS (14) = num cylinders, not num sensors
 *
 * In the refactored src/, this class of bug is structurally prevented by:
 * 1. Distinct named constants in core/types.h: BWM_MAX_SENSORS, BWM_MAX_CYLINDERS,
 *    BWM_MAX_MB_POSITIONS — type-system catches misuse.
 * 2. Helper functions like mb_sum_num_positions() that derive bounds from
 *    cylinder count, not from a separate macro.
 * 3. The struct-layout regression tests in test_struct_layout.c that
 *    catch any size mismatch.
 *
 * This test asserts the design properties that prevent Lv-005-class bugs.
 */

#include "unity.h"
#include "core/types.h"
#include "vendor/mb_sum.h"

void setUp(void) { }
void tearDown(void) { }

/* @bug Lv-005 — distinct constants prevent misuse */
static void test_max_sensors_and_max_cylinders_are_distinct(void)
{
    /* Documenting that BWM_MAX_SENSORS != BWM_MAX_CYLINDERS prevents
     * the legacy "use 28 where you needed 14" pattern. */
    TEST_ASSERT_NOT_EQUAL(BWM_MAX_SENSORS, BWM_MAX_CYLINDERS);
    /* Specifically: 2 sensors per cylinder. */
    TEST_ASSERT_EQUAL_INT(BWM_SENSORS_PER_CYL * BWM_MAX_CYLINDERS, BWM_MAX_SENSORS);
}

/* @bug Lv-005 — MB position count derived from cylinder count */
static void test_mb_position_count_derived_from_cylinders_not_sensors(void)
{
    /* For an N-cylinder engine, there are exactly N-1 main bearings.
     * The legacy bug tried to use sensor count (=2N) as bound; the
     * refactored helper derives correctly. */
    TEST_ASSERT_EQUAL_UINT16(13, mb_sum_num_positions(14));   /* full 14-cyl engine */
    TEST_ASSERT_EQUAL_UINT16(BWM_MAX_MB_POSITIONS, mb_sum_num_positions(BWM_MAX_CYLINDERS));
    /* Edge cases */
    TEST_ASSERT_EQUAL_UINT16(0, mb_sum_num_positions(0));
    TEST_ASSERT_EQUAL_UINT16(0, mb_sum_num_positions(1));
    TEST_ASSERT_EQUAL_UINT16(5, mb_sum_num_positions(6));
}

/*
 * @bug Lv-005 — per-cylinder bounds are exactly (sensors / 2).
 * If anyone ever changes BWM_SENSORS_PER_CYL or refactors the relationship,
 * this test fires and forces a deliberate review.
 */
static void test_cylinder_id_derived_from_sensor_id_correctly(void)
{
    TEST_ASSERT_EQUAL_UINT16(0, BWM_SENSOR_CYL(0));
    TEST_ASSERT_EQUAL_UINT16(0, BWM_SENSOR_CYL(1));
    TEST_ASSERT_EQUAL_UINT16(1, BWM_SENSOR_CYL(2));
    TEST_ASSERT_EQUAL_UINT16(1, BWM_SENSOR_CYL(3));
    TEST_ASSERT_EQUAL_UINT16(BWM_MAX_CYLINDERS - 1, BWM_SENSOR_CYL(BWM_MAX_SENSORS - 1));
}

/*
 * @bug Lv-005 — fore/aft sensor index helpers map cylinders to sensors
 * with no off-by-one risk. Check the inverse holds.
 */
static void test_sensor_id_helpers_are_inverse_of_cylinder_id(void)
{
    for (bwm_cylinder_id_t c = 0; c < BWM_MAX_CYLINDERS; c++) {
        bwm_sensor_id_t fore = BWM_CYL_FORE_SENSOR(c);
        bwm_sensor_id_t aft  = BWM_CYL_AFT_SENSOR(c);
        TEST_ASSERT_EQUAL_UINT16(c, BWM_SENSOR_CYL(fore));
        TEST_ASSERT_EQUAL_UINT16(c, BWM_SENSOR_CYL(aft));
        TEST_ASSERT_TRUE(BWM_SENSOR_IS_FORE(fore));
        TEST_ASSERT_TRUE(BWM_SENSOR_IS_AFT(aft));
        TEST_ASSERT_FALSE(BWM_SENSOR_IS_AFT(fore));
        TEST_ASSERT_FALSE(BWM_SENSOR_IS_FORE(aft));
    }
}

/*
 * @bug Lv-005 — MB position k corresponds to sensors (2k+1, 2k+2),
 * which are the aft of cylinder k and fore of cylinder k+1.
 * Confirm both helpers stay consistent across the full range.
 */
static void test_mb_position_sensors_are_in_range(void)
{
    for (bwm_mb_id_t k = 0; k < BWM_MAX_MB_POSITIONS; k++) {
        bwm_sensor_id_t left  = mb_sum_left_sensor(k);
        bwm_sensor_id_t right = mb_sum_right_sensor(k);
        TEST_ASSERT_TRUE(left  < BWM_MAX_SENSORS);
        TEST_ASSERT_TRUE(right < BWM_MAX_SENSORS);
        TEST_ASSERT_EQUAL_UINT16(left + 1, right);  /* adjacent */
    }
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_max_sensors_and_max_cylinders_are_distinct);
    RUN_TEST(test_mb_position_count_derived_from_cylinders_not_sensors);
    RUN_TEST(test_cylinder_id_derived_from_sensor_id_correctly);
    RUN_TEST(test_sensor_id_helpers_are_inverse_of_cylinder_id);
    RUN_TEST(test_mb_position_sensors_are_in_range);
    return UNITY_END();
}
