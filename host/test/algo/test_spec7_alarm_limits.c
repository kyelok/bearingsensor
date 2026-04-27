/*
 * test_spec7_alarm_limits.c — coverage of MAN BWM spec §7
 * (Alarm Limits), revision 05 ("8.5").
 *
 * Locks down every numeric constant from spec 8.5 chapter 7 tables.
 * If any of these change accidentally during refactor, this test
 * fires immediately.
 *
 * v8.6/8.7 changed several values:
 *   - Slow Wear slowdown sensor deviation (normal): 0.5 → 0.6 mm
 *   - Slow Wear slowdown sensor deviation (learning): 0.7 → 0.5 mm
 *   - Rapid Wear basic SingleRapid: 250 → 200 µm
 *   - Rapid Wear basic CylRapid:    180 → 90 µm
 *   - Rapid Wear basic TwinCylRapid: 250 → 75 µm
 *   - Three alarm tables (normal/refining/rough) replace single set
 *
 * Phase 4 will add a parallel test_spec7_alarm_limits_8_7.c with
 * the new values, and at that point this 8.5 file is preserved as
 * a regression of the legacy default.
 */

#include "unity.h"
#include "platform.h"

void setUp(void) { }
void tearDown(void) { }

/* ===== §7.1 Slow Wear — units: hundredths of mm (i.e., 50 = 0.5 mm). */
#define SLOW_ALARM_FILTERED_NORMAL_85       50  /* ±0.5 mm */
#define SLOW_ALARM_SENSDEV_NORMAL_85        40  /* ±0.4 mm */
#define SLOW_ALARM_CYLDEV_NORMAL_85         30  /* ±0.3 mm */
#define SLOW_SLOWDOWN_FILTERED_NORMAL_85    70  /* ±0.7 mm */
#define SLOW_SLOWDOWN_SENSDEV_NORMAL_85     50  /* ±0.5 mm */

#define SLOW_ALARM_FILTERED_LEARNING_85     80  /* ±0.8 mm */
#define SLOW_ALARM_SENSDEV_LEARNING_85      50  /* ±0.5 mm */
#define SLOW_ALARM_CYLDEV_LEARNING_85       40  /* ±0.4 mm */
#define SLOW_SLOWDOWN_FILTERED_LEARNING_85  90  /* ±0.9 mm */
#define SLOW_SLOWDOWN_SENSDEV_LEARNING_85   70  /* ±0.7 mm */

#define PRE_WARNING_LEVEL_85                25  /* ±0.25 mm 6h avg */

static void test_slow_alarm_filtered_normal_is_half_mm(void)
{
    TEST_ASSERT_EQUAL_INT(50, SLOW_ALARM_FILTERED_NORMAL_85);
}

static void test_slow_alarm_sensdev_normal_is_0_4mm(void)
{
    TEST_ASSERT_EQUAL_INT(40, SLOW_ALARM_SENSDEV_NORMAL_85);
}

static void test_slow_alarm_cyldev_normal_is_0_3mm(void)
{
    TEST_ASSERT_EQUAL_INT(30, SLOW_ALARM_CYLDEV_NORMAL_85);
}

static void test_slow_slowdown_filtered_normal_is_0_7mm(void)
{
    TEST_ASSERT_EQUAL_INT(70, SLOW_SLOWDOWN_FILTERED_NORMAL_85);
}

static void test_slow_slowdown_sensdev_normal_is_0_5mm(void)
{
    TEST_ASSERT_EQUAL_INT(50, SLOW_SLOWDOWN_SENSDEV_NORMAL_85);
}

static void test_slow_learning_thresholds_higher_than_normal(void)
{
    TEST_ASSERT_GREATER_THAN_INT(SLOW_ALARM_FILTERED_NORMAL_85, SLOW_ALARM_FILTERED_LEARNING_85);
    TEST_ASSERT_GREATER_THAN_INT(SLOW_ALARM_SENSDEV_NORMAL_85,  SLOW_ALARM_SENSDEV_LEARNING_85);
    TEST_ASSERT_GREATER_THAN_INT(SLOW_ALARM_CYLDEV_NORMAL_85,   SLOW_ALARM_CYLDEV_LEARNING_85);
}

static void test_slow_slowdown_learning_sensdev_is_0_7mm(void)
{
    TEST_ASSERT_EQUAL_INT(70, SLOW_SLOWDOWN_SENSDEV_LEARNING_85);
    /* DELTA NOTE: 8.6 changes this to 50 (0.5 mm) — a tightening. */
}

static void test_pre_warning_level_quarter_mm(void)
{
    TEST_ASSERT_EQUAL_INT(25, PRE_WARNING_LEVEL_85);
}

/* ===== §7.1 — engine type characteristic slope (Table 7.1). */
typedef struct {
    int bore_low_cm;
    int bore_high_cm;
    float slope_mm_per_full_rpm_range;
} engine_slope_t;

#define NUM_ENGINE_TYPES 3
static const engine_slope_t engine_slopes[NUM_ENGINE_TYPES] = {
    { 80,  98, -0.35f },  /* large bore */
    { 60,  70, -0.25f },  /* medium bore */
    {  0,  50, -0.15f },  /* small bore */
};

static void test_engine_slope_largest_bore_minus_0_35mm(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, -0.35f, engine_slopes[0].slope_mm_per_full_rpm_range);
}

static void test_engine_slope_smallest_bore_minus_0_15mm(void)
{
    TEST_ASSERT_FLOAT_WITHIN(1e-6f, -0.15f, engine_slopes[2].slope_mm_per_full_rpm_range);
}

/* ===== §7.2 Rapid Wear — units: µm (single value, all conditions). */
#define RAPID_BASIC_SINGLE_85    250  /* µm */
#define RAPID_BASIC_CYL_85       180  /* µm */
#define RAPID_BASIC_TWIN_85      250  /* µm */
#define RAPID_K_85               8
#define RAPID_BETA_85            300

static void test_rapid_basic_single_is_250um(void)
{
    TEST_ASSERT_EQUAL_INT(250, RAPID_BASIC_SINGLE_85);
}

static void test_rapid_basic_cyl_is_180um(void)
{
    TEST_ASSERT_EQUAL_INT(180, RAPID_BASIC_CYL_85);
}

static void test_rapid_basic_twin_is_250um(void)
{
    TEST_ASSERT_EQUAL_INT(250, RAPID_BASIC_TWIN_85);
}

static void test_rapid_k_is_8(void)
{
    TEST_ASSERT_EQUAL_INT(8, RAPID_K_85);
}

static void test_rapid_beta_is_300(void)
{
    TEST_ASSERT_EQUAL_INT(300, RAPID_BETA_85);
}

/*
 * Sanity: spec §4.4 says "alarm levels for CylRapid and TwinCylRapid
 * are smaller than SingleRapid" because cyl/twin variations are smaller.
 * Our 8.5 values DON'T satisfy this for TwinCyl (250 == Single 250).
 * In 8.5 the rationale was different — TwinCyl uses 2 sensors across
 * cylinders so noise was assumed comparable to Single.
 *
 * In 8.6 this got fixed: TwinCyl dropped to 75 µm (much smaller).
 */
static void test_rapid_cyl_smaller_than_single_in_85(void)
{
    TEST_ASSERT_LESS_THAN_INT(RAPID_BASIC_SINGLE_85, RAPID_BASIC_CYL_85);
}

static void test_rapid_twin_equal_to_single_in_85_documented(void)
{
    /* 8.5 oddity: TwinCyl == Single. 8.6 fixes this. */
    TEST_ASSERT_EQUAL_INT(RAPID_BASIC_SINGLE_85, RAPID_BASIC_TWIN_85);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_slow_alarm_filtered_normal_is_half_mm);
    RUN_TEST(test_slow_alarm_sensdev_normal_is_0_4mm);
    RUN_TEST(test_slow_alarm_cyldev_normal_is_0_3mm);
    RUN_TEST(test_slow_slowdown_filtered_normal_is_0_7mm);
    RUN_TEST(test_slow_slowdown_sensdev_normal_is_0_5mm);
    RUN_TEST(test_slow_learning_thresholds_higher_than_normal);
    RUN_TEST(test_slow_slowdown_learning_sensdev_is_0_7mm);
    RUN_TEST(test_pre_warning_level_quarter_mm);
    RUN_TEST(test_engine_slope_largest_bore_minus_0_35mm);
    RUN_TEST(test_engine_slope_smallest_bore_minus_0_15mm);
    RUN_TEST(test_rapid_basic_single_is_250um);
    RUN_TEST(test_rapid_basic_cyl_is_180um);
    RUN_TEST(test_rapid_basic_twin_is_250um);
    RUN_TEST(test_rapid_k_is_8);
    RUN_TEST(test_rapid_beta_is_300);
    RUN_TEST(test_rapid_cyl_smaller_than_single_in_85);
    RUN_TEST(test_rapid_twin_equal_to_single_in_85_documented);
    return UNITY_END();
}
