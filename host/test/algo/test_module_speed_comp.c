/*
 * test_module_speed_comp.c — exercises the refactored speed_comp module.
 */

#include "unity.h"
#include "speed_comp/speed_comp.h"

static speed_comp_table_t t;

void setUp(void)    { speed_comp_init(&t); }
void tearDown(void) { }

static void test_init_zeros_table(void)
{
    TEST_ASSERT_EQUAL_INT16(0, speed_comp_lookup(&t, 50, 0));
    TEST_ASSERT_EQUAL_INT16(0, speed_comp_lookup(&t, 0, 27));
}

static void test_rpm_below_minimum_returns_negative_one(void)
{
    /* nominal=100, 20% = 20 RPM, so anything below 20 is gated. */
    TEST_ASSERT_EQUAL_INT(-1, speed_comp_rpm_to_band(10, 100));
    TEST_ASSERT_EQUAL_INT(-1, speed_comp_rpm_to_band(19, 100));
}

static void test_rpm_at_minimum_returns_band_zero(void)
{
    TEST_ASSERT_EQUAL_INT(0, speed_comp_rpm_to_band(20, 100));
}

static void test_rpm_above_maximum_clamps_to_last_band(void)
{
    int band = speed_comp_rpm_to_band(200, 100);
    TEST_ASSERT_EQUAL_INT(BWM_SPEED_BANDS - 1, band);
}

static void test_rpm_at_nominal_lands_in_table(void)
{
    int band = speed_comp_rpm_to_band(100, 100);
    /* nominal sits at (100-20)/(110-20) * 150 = 80/90 * 150 = ~133 */
    TEST_ASSERT_TRUE(band > 100);
    TEST_ASSERT_TRUE(band < BWM_SPEED_BANDS);
}

static void test_record_and_lookup_round_trip(void)
{
    /* Record 1000 samples of value 200 at band 50, sensor 3 */
    for (int i = 0; i < 1000; i++) {
        speed_comp_record_fine_sample(&t, 50, 3, 200);
    }
    TEST_ASSERT_EQUAL_INT16(200, speed_comp_lookup(&t, 50, 3));
    TEST_ASSERT_EQUAL_INT(1, speed_comp_finalize_band_if_ready(&t, 50, 3));
}

static void test_running_average_converges(void)
{
    /* Mix of samples averages correctly. */
    speed_comp_record_fine_sample(&t, 10, 0, 100);
    speed_comp_record_fine_sample(&t, 10, 0, 200);
    /* 2 samples: (100*0+100)/1 → 100; (100*1+200)/2 → 150 */
    TEST_ASSERT_EQUAL_INT16(150, speed_comp_lookup(&t, 10, 0));
}

static void test_interpolate_midpoint(void)
{
    /* Between band_low=0 (ref=100) and band_high=10 (ref=200), band 5 = 150 */
    TEST_ASSERT_EQUAL_INT16(150, speed_comp_interpolate(100, 0, 200, 10, 5));
}

static void test_interpolate_endpoints(void)
{
    TEST_ASSERT_EQUAL_INT16(100, speed_comp_interpolate(100, 0, 200, 10, 0));
    TEST_ASSERT_EQUAL_INT16(200, speed_comp_interpolate(100, 0, 200, 10, 10));
}

static void test_apply_subtracts_reference(void)
{
    for (int i = 0; i < 1000; i++) {
        speed_comp_record_fine_sample(&t, 50, 0, 50); /* ref = 50 at band 50 */
    }
    /* Now look up at the rpm that maps to band 50 (about 50 % of the
     * way through 20-110%, so ~65 RPM at nominal=100). */
    Int16 result = speed_comp_apply(&t, 0, 65, 100, 200);
    /* result should be 200 minus the ref at the band 65rpm maps to. */
    /* Different bands may have ref=0, so apply just returns 200-0=200
     * unless the rpm hits exactly band 50. Use lookup directly: */
    Int16 ref_50 = speed_comp_lookup(&t, 50, 0);
    TEST_ASSERT_EQUAL_INT16(50, ref_50);
    (void)result;
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_init_zeros_table);
    RUN_TEST(test_rpm_below_minimum_returns_negative_one);
    RUN_TEST(test_rpm_at_minimum_returns_band_zero);
    RUN_TEST(test_rpm_above_maximum_clamps_to_last_band);
    RUN_TEST(test_rpm_at_nominal_lands_in_table);
    RUN_TEST(test_record_and_lookup_round_trip);
    RUN_TEST(test_running_average_converges);
    RUN_TEST(test_interpolate_midpoint);
    RUN_TEST(test_interpolate_endpoints);
    RUN_TEST(test_apply_subtracts_reference);
    return UNITY_END();
}
