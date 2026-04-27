/*
 * test_module_speed_comp_finalize.c — exercises §2.3-A weighted blend
 * for under-sampled bands at end of refinement phase.
 *
 * @spec 8.5 §2.3-A — REF = (N·V_avg + (1000−N)·V_interp) / 1000.
 */

#include "unity.h"
#include "speed_comp/speed_comp.h"

static speed_comp_table_t          t;
static speed_comp_learning_state_t learning;

void setUp(void)
{
    speed_comp_init(&t);
    speed_comp_learning_init(&learning);
}
void tearDown(void) { }

/* @spec 8.5 §2.3-A — blend formula: N=0 → all interp. */
static void test_blend_zero_hits_returns_interp(void)
{
    Int16 r = speed_comp_blend_undersampled(/*avg=*/9999, /*n=*/0, /*interp=*/250);
    TEST_ASSERT_EQUAL_INT16(250, r);
}

/* @spec 8.5 §2.3-A — N=1000 (saturated) → all avg. */
static void test_blend_full_hits_returns_avg(void)
{
    Int16 r = speed_comp_blend_undersampled(500, 1000, 9999);
    TEST_ASSERT_EQUAL_INT16(500, r);
}

/* @spec 8.5 §2.3-A — N=500 (half) → straight 50/50 average. */
static void test_blend_half_hits_is_simple_mean(void)
{
    /* (500·100 + 500·200) / 1000 = (50000+100000)/1000 = 150 */
    Int16 r = speed_comp_blend_undersampled(100, 500, 200);
    TEST_ASSERT_EQUAL_INT16(150, r);
}

/* @spec 8.5 §2.3-A — N small biases toward interp. */
static void test_blend_small_n_favours_interp(void)
{
    /* N=10: (10·100 + 990·200)/1000 = (1000+198000)/1000 = 199 */
    Int16 r = speed_comp_blend_undersampled(100, 10, 200);
    TEST_ASSERT_EQUAL_INT16(199, r);
}

/* @spec 8.5 §2.3-A — N close to 1000 biases toward avg. */
static void test_blend_large_n_favours_avg(void)
{
    /* N=999: (999·100 + 1·200)/1000 = (99900+200)/1000 = 100.1 → truncated 100 */
    Int16 r = speed_comp_blend_undersampled(100, 999, 200);
    TEST_ASSERT_EQUAL_INT16(100, r);
}

/* @spec 8.5 §2.3-A — finalize_table fills under-sampled cells using anchors. */
static void test_finalize_table_fills_undersampled_using_anchors(void)
{
    /* Set up: anchors at bands 10, 75, 140. Assign known anchor values
     * for sensor 0. */
    t.anchor_band_low  = 10;
    t.anchor_band_mid  = 75;
    t.anchor_band_high = 140;

    /* Mark anchor bands as "fully sampled" so finalize leaves them alone. */
    for (int b = 0; b < BWM_SPEED_BANDS; b++) {
        learning.count[b][0] = 0;
    }
    learning.count[10][0]  = SPEED_COMP_FINE_SAMPLES_REQUIRED;
    learning.count[75][0]  = SPEED_COMP_FINE_SAMPLES_REQUIRED;
    learning.count[140][0] = SPEED_COMP_FINE_SAMPLES_REQUIRED;

    /* Anchor refs: linear ramp 100 → 175 across bands 10 → 140. So
     * slope is 75 / 130 ≈ 0.577. */
    t.reference[10][0]  = 100;
    t.reference[75][0]  = 137; /* approximately on the line */
    t.reference[140][0] = 175;

    /* An under-sampled band 50: avg=130, n=200. */
    t.reference[50][0] = 130;
    learning.count[50][0] = 200;

    speed_comp_finalize_table(&t, &learning);

    /* Anchor cells unchanged. */
    TEST_ASSERT_EQUAL_INT16(100, t.reference[10][0]);
    TEST_ASSERT_EQUAL_INT16(137, t.reference[75][0]);
    TEST_ASSERT_EQUAL_INT16(175, t.reference[140][0]);

    /* Band 50 should be blended. interp = 100 + (137-100)·(50-10)/(75-10)
     *                              = 100 + 37·40/65 = 100 + 22.77 ≈ 122.
     * blend = (200·130 + 800·122)/1000 = (26000+97600)/1000 = 123.6 → 123. */
    TEST_ASSERT_INT16_WITHIN(2, 123, t.reference[50][0]);
}

/* @spec 8.5 §2.3-A — bands fully sampled are left untouched. */
static void test_finalize_leaves_saturated_bands_alone(void)
{
    t.anchor_band_low  = 0;
    t.anchor_band_mid  = 75;
    t.anchor_band_high = BWM_SPEED_BANDS - 1;

    /* Saturate band 30 and write a distinctive value. */
    learning.count[30][7] = SPEED_COMP_FINE_SAMPLES_REQUIRED;
    t.reference[30][7]    = 4242;

    speed_comp_finalize_table(&t, &learning);
    TEST_ASSERT_EQUAL_INT16(4242, t.reference[30][7]);
}

/* @spec 8.5 §2.3-A — without anchors set, finalize is a no-op. */
static void test_finalize_no_anchors_is_noop(void)
{
    /* No anchor values set (init leaves them at -1). */
    learning.count[20][2] = 100;
    t.reference[20][2]    = 555;

    speed_comp_finalize_table(&t, &learning);
    TEST_ASSERT_EQUAL_INT16(555, t.reference[20][2]);
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    speed_comp_finalize_table(NULL, NULL);
    speed_comp_finalize_table(&t, NULL);
    speed_comp_finalize_table(NULL, &learning);
    TEST_PASS_MESSAGE("NULL-arg guards do not crash");
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_blend_zero_hits_returns_interp);
    RUN_TEST(test_blend_full_hits_returns_avg);
    RUN_TEST(test_blend_half_hits_is_simple_mean);
    RUN_TEST(test_blend_small_n_favours_interp);
    RUN_TEST(test_blend_large_n_favours_avg);
    RUN_TEST(test_finalize_table_fills_undersampled_using_anchors);
    RUN_TEST(test_finalize_leaves_saturated_bands_alone);
    RUN_TEST(test_finalize_no_anchors_is_noop);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
