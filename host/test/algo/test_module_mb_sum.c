/*
 * test_module_mb_sum.c — exercises the refactored mb_sum vendor module.
 */

#include "unity.h"
#include "vendor/mb_sum.h"

void setUp(void) { }
void tearDown(void) { }

static void test_num_positions_for_six_cylinders_is_five(void)
{
    TEST_ASSERT_EQUAL_UINT16(5, mb_sum_num_positions(6));
}

static void test_num_positions_for_twelve_cylinders_is_eleven(void)
{
    TEST_ASSERT_EQUAL_UINT16(11, mb_sum_num_positions(12));
}

static void test_num_positions_for_zero_cylinders_is_zero(void)
{
    TEST_ASSERT_EQUAL_UINT16(0, mb_sum_num_positions(0));
}

static void test_left_sensor_at_position_zero_is_aft_of_cyl_1(void)
{
    /* cyl 0 fore = sensor 0, cyl 0 aft = sensor 1
     * cyl 1 fore = sensor 2, cyl 1 aft = sensor 3
     * MB position 0 is between cyl 0 (aft, sensor 1) and cyl 1 (fore, sensor 2)
     * Wait, my header says left = 2k+1 = 1 (aft of cyl 0), right = 2k+2 = 2 (fore of cyl 1).
     * That matches MB position 0 between cyl 0 aft and cyl 1 fore. */
    TEST_ASSERT_EQUAL_UINT16(1, mb_sum_left_sensor(0));
    TEST_ASSERT_EQUAL_UINT16(2, mb_sum_right_sensor(0));
}

static void test_combine_correlated_wear_sums(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 150.0f, mb_sum_combine(70.0f, 80.0f));
}

static void test_combine_counter_phase_cancels(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, mb_sum_combine(50.0f, -50.0f));
}

static void test_position_invalid_when_left_failed(void)
{
    /* cc_split = 0 means no split. */
    TEST_ASSERT_EQUAL_INT(0, mb_sum_position_is_valid(1, 0, 0, 0, 0, 3));
}

static void test_position_invalid_when_right_replacing(void)
{
    TEST_ASSERT_EQUAL_INT(0, mb_sum_position_is_valid(0, 0, 0, 1, 0, 5));
}

static void test_position_valid_when_all_clean(void)
{
    TEST_ASSERT_EQUAL_INT(1, mb_sum_position_is_valid(0, 0, 0, 0, 0, 4));
}

static void test_ccsplit_disables_position(void)
{
    /* cc_split=6 means MB position k+1==6 is disabled, i.e. k==5. */
    TEST_ASSERT_EQUAL_INT(0, mb_sum_position_is_valid(0, 0, 0, 0, 6, 5));
    /* Positions other than k=5 are unaffected. */
    TEST_ASSERT_EQUAL_INT(1, mb_sum_position_is_valid(0, 0, 0, 0, 6, 4));
    TEST_ASSERT_EQUAL_INT(1, mb_sum_position_is_valid(0, 0, 0, 0, 6, 6));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_num_positions_for_six_cylinders_is_five);
    RUN_TEST(test_num_positions_for_twelve_cylinders_is_eleven);
    RUN_TEST(test_num_positions_for_zero_cylinders_is_zero);
    RUN_TEST(test_left_sensor_at_position_zero_is_aft_of_cyl_1);
    RUN_TEST(test_combine_correlated_wear_sums);
    RUN_TEST(test_combine_counter_phase_cancels);
    RUN_TEST(test_position_invalid_when_left_failed);
    RUN_TEST(test_position_invalid_when_right_replacing);
    RUN_TEST(test_position_valid_when_all_clean);
    RUN_TEST(test_ccsplit_disables_position);
    return UNITY_END();
}
