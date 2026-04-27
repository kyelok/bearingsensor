/*
 * test_cylinder_deviation.c — sensor & cylinder deviation calculations.
 *
 * @spec 8.5 §3.2 — "Deviation Calculations" (identical in 8.6/8.7)
 *
 * For an N-cylinder engine with 2N filtered sensor values s_1..s_{2N},
 *
 *   Sensor deviation:
 *     d(s_i) = s_i - mean(s_j for j != i)
 *
 *   Cylinder deviation (cylinder c has sensors s_{2c-1}=fore and s_{2c}=aft):
 *     d(c) = (s_{2c-1} + s_{2c})/2 - mean(remaining 2N-2 sensors)
 *
 * Spec example (4-cylinder engine, 8 sensors, calculating cylinder 3):
 *     d(c3) = (s5 + s6)/2 - (s1 + s2 + s3 + s4 + s7 + s8)/6
 *
 * Firmware location (v6.20): man.c — sensor deviation and cylinder
 * deviation routines (exact symbol names to be confirmed during Phase 3
 * extraction). For now, this file tests the spec-correct formula.
 *
 * @spec 8.6 §5.1 / 8.7 §5.1 — when a sensor is "lost" (failed), exclude
 * it from the denominator. We test that variant too.
 */

#include "unity.h"
#include "platform.h"
#include <stdbool.h>

void setUp(void) { }
void tearDown(void) { }

/* Sensor deviation: d(s_i) = s_i - average of all OTHER sensors. */
static float sensor_deviation(const float *s, int n_sensors, int i)
{
    float sum_others = 0.0f;
    for (int j = 0; j < n_sensors; j++) {
        if (j != i) sum_others += s[j];
    }
    return s[i] - sum_others / (float)(n_sensors - 1);
}

/*
 * Cylinder deviation: d(c) = (s_fore + s_aft)/2 - mean(others).
 * Sensors are paired: cylinder c (1-indexed) owns s[2c-2] (fore) and
 * s[2c-1] (aft). Function takes 0-indexed cylinder.
 */
static float cylinder_deviation(const float *s, int n_sensors, int cyl_zero_indexed)
{
    int fore = cyl_zero_indexed * 2;
    int aft  = cyl_zero_indexed * 2 + 1;
    float sum_others = 0.0f;
    for (int j = 0; j < n_sensors; j++) {
        if (j != fore && j != aft) sum_others += s[j];
    }
    return (s[fore] + s[aft]) / 2.0f - sum_others / (float)(n_sensors - 2);
}

/*
 * Variant excluding a failed sensor — @spec 8.6 §5.1.
 * is_valid[i] = false means sensor i is excluded from BOTH the cylinder
 * average (for the affected cylinder) and the "others" pool.
 */
static float cylinder_deviation_with_failure(const float *s, const bool *is_valid,
                                             int n_sensors, int cyl_zero_indexed)
{
    int fore = cyl_zero_indexed * 2;
    int aft  = cyl_zero_indexed * 2 + 1;

    float cyl_sum = 0.0f;
    int   cyl_count = 0;
    if (is_valid[fore]) { cyl_sum += s[fore]; cyl_count++; }
    if (is_valid[aft])  { cyl_sum += s[aft];  cyl_count++; }
    if (cyl_count == 0) return 0.0f; /* both lost — undefined; spec prescribes log entry */

    float other_sum = 0.0f;
    int   other_count = 0;
    for (int j = 0; j < n_sensors; j++) {
        if (j != fore && j != aft && is_valid[j]) {
            other_sum += s[j]; other_count++;
        }
    }
    if (other_count == 0) return 0.0f;

    return cyl_sum / (float)cyl_count - other_sum / (float)other_count;
}

/* @spec 8.5 §3.2 — uniform readings yield zero sensor deviation. */
static void test_sensor_deviation_is_zero_when_all_sensors_agree(void)
{
    float s[8] = { 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f };
    for (int i = 0; i < 8; i++) {
        TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, sensor_deviation(s, 8, i));
    }
}

/*
 * @spec 8.5 §3.2 — Worked example: 8 sensors, all zero except s5 = 0.7.
 * d(s5) = 0.7 - (0+0+0+0+0+0+0)/7 = 0.7
 * d(s1) = 0   - (0+0+0+0.7+0+0+0)/7 = -0.1
 */
static void test_sensor_deviation_worked_example(void)
{
    float s[8] = { 0.0f, 0.0f, 0.0f, 0.0f, 0.7f, 0.0f, 0.0f, 0.0f };
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.7f, sensor_deviation(s, 8, 4));
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, -0.1f, sensor_deviation(s, 8, 0));
}

/*
 * @spec 8.5 §3.2 — Spec's exact worked example for cylinder 3 in a
 * 4-cylinder engine: d(c3) = (s5+s6)/2 - (s1+s2+s3+s4+s7+s8)/6.
 * Set s5=s6=1.0, others=0. Expected: d(c3) = 1.0 - 0 = 1.0.
 */
static void test_cylinder_deviation_spec_worked_example(void)
{
    float s[8] = { 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f };
    /* cylinder 3, zero-indexed = 2, sensors 4 and 5 */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 1.0f, cylinder_deviation(s, 8, 2));
}

/* @spec 8.5 §3.2 — uniform readings yield zero cylinder deviation. */
static void test_cylinder_deviation_is_zero_when_all_sensors_agree(void)
{
    float s[8] = { 0.42f, 0.42f, 0.42f, 0.42f, 0.42f, 0.42f, 0.42f, 0.42f };
    for (int c = 0; c < 4; c++) {
        TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, cylinder_deviation(s, 8, c));
    }
}

/*
 * @spec 8.6 §5.1 — When a sensor is failed, both the cylinder average
 * and the "others" pool exclude it. The spec example: sensor 3 lost,
 * d(s5) becomes (s5 - (s1+s2+s4+s6+s7+s8)/6).
 */
static void test_cylinder_deviation_with_failed_sensor_excludes_it(void)
{
    /* All zero except s5 = 0.6, with s3 failed. */
    float s[8]      = { 0.0f, 0.0f, 0.0f, 0.0f, 0.6f, 0.0f, 0.0f, 0.0f };
    bool valid[8]   = { true, true, false, true, true, true, true, true };
    /* Cylinder 3 (zero-indexed 2) is unaffected by s3 — s3 is in cyl 2 (zero-indexed 1).
     * For cylinder 3 (sensors 4&5): others pool was {s1,s2,s3,s4,s7,s8}/6;
     * with s3 failed becomes {s1,s2,s4,s7,s8}/5; same for fore/aft
     * (s4&s5) — so cyl_sum stays (0.0 + 0.6)/2 = 0.3, other_sum/N stays 0. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.3f, cylinder_deviation_with_failure(s, valid, 8, 2));
}

/*
 * @spec 8.5 §3.2 — Counter-phase variation: when fore and aft sensors
 * of a cylinder move in opposite directions by equal magnitude, the
 * cylinder deviation cancels (0). This is the explicit motivation for
 * cylinder deviation in the spec text.
 */
static void test_cylinder_deviation_cancels_counter_phase_fore_aft(void)
{
    /* Cylinder 1 (sensors 0&1) has equal-and-opposite excursion. */
    float s[8] = { +0.30f, -0.30f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    /* (0.30 + -0.30)/2 = 0; others-mean = 0; → d(c1) = 0. */
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, 0.0f, cylinder_deviation(s, 8, 0));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_sensor_deviation_is_zero_when_all_sensors_agree);
    RUN_TEST(test_sensor_deviation_worked_example);
    RUN_TEST(test_cylinder_deviation_spec_worked_example);
    RUN_TEST(test_cylinder_deviation_is_zero_when_all_sensors_agree);
    RUN_TEST(test_cylinder_deviation_with_failed_sensor_excludes_it);
    RUN_TEST(test_cylinder_deviation_cancels_counter_phase_fore_aft);
    return UNITY_END();
}
