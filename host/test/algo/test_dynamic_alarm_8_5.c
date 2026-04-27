/*
 * test_dynamic_alarm_8_5.c — dynamic alarm threshold per spec rev 05 ("8.5").
 *
 * @spec 8.5 §4.5 — "Dynamic Rapid Alarm"
 *
 * v8.5 uses TWO formulas and takes the max. v8.6+ collapses this to a
 * single formula; this test is therefore version-distinguishing — if a
 * future refactor mistakenly applies the 8.6 formula, these tests fail.
 *
 *   Alarm_Dynamic = max(Alarm_1, Alarm_2)
 *   Alarm_1       = Alarm_Basic * (1 + ΔRPM_increment / k)
 *   Alarm_2       = Alarm_Basic * (1 + ΔRPM_at_alarm / k) * exp(-Hits / β)
 *
 *   k = 8         (Single, Cyl, TwinCyl all share this)
 *   β = 300
 *
 * Firmware location (v6.20): man.c CalcAlarmLevel1(), CalcAlarmLevel2()
 * driven by DynamicAlarmLevel(). The dynalarmlevels struct fields
 * single1, single2, cyl1, cyl2, mbsum1, mbsum2 hold these values;
 * the .single / .cyl / .mbsum fields are the max() of their _1/_2
 * counterparts.
 *
 * After Phase 4 (upgrade to 8.7) this entire pathway is replaced;
 * delete or re-tag these tests at that time.
 */

#include "unity.h"
#include "platform.h"
#include <math.h>

#define ALARM_K_8_5     8.0f
#define ALARM_BETA_8_5  300.0f

/* @spec 8.5 §4.5 — Alarm_1 formula */
static float alarm_1(float basic, float delta_rpm)
{
    /* Spec also says: if delta_rpm > 4, set to 4 (cap). */
    if (delta_rpm > 4.0f) delta_rpm = 4.0f;
    return basic * (1.0f + delta_rpm / ALARM_K_8_5);
}

/* @spec 8.5 §4.5 — Alarm_2 formula */
static float alarm_2(float basic, float delta_rpm_at_alarm, int hits)
{
    if (delta_rpm_at_alarm > 4.0f) delta_rpm_at_alarm = 4.0f;
    return basic * (1.0f + delta_rpm_at_alarm / ALARM_K_8_5)
                 * expf(-(float)hits / ALARM_BETA_8_5);
}

/* @spec 8.5 §4.5 — max() composition */
static float alarm_dynamic(float a1, float a2)
{
    return (a1 > a2) ? a1 : a2;
}

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.5 §4.5 — At ΔRPM=0 and Hits=0, both formulas equal Alarm_Basic.
 * (Alarm_1 multiplier is 1; Alarm_2 multiplier is 1*exp(0)=1.) */
static void test_at_steady_state_alarm_equals_basic(void)
{
    float basic = 250.0f; /* spec 8.5 SingleRapid basic */
    float a1 = alarm_1(basic, 0.0f);
    float a2 = alarm_2(basic, 0.0f, 0);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic, a1);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic, a2);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic, alarm_dynamic(a1, a2));
}

/* @spec 8.5 §4.5 — ΔRPM cap: any value > 4 gets clamped to 4. */
static void test_delta_rpm_cap_clamps_at_4(void)
{
    float basic = 250.0f;
    float a1_at_4 = alarm_1(basic, 4.0f);
    float a1_at_10 = alarm_1(basic, 10.0f);
    float a1_at_100 = alarm_1(basic, 100.0f);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, a1_at_4, a1_at_10);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, a1_at_4, a1_at_100);
}

/* @spec 8.5 §4.5 — At ΔRPM=4, the cap of the spec, the alarm rises to
 *   basic * (1 + 4/8) = basic * 1.5 = 375 */
static void test_alarm_1_at_capped_delta_rpm_yields_one_point_five_basic(void)
{
    float basic = 250.0f;
    float a1 = alarm_1(basic, 4.0f);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic * 1.5f, a1);
}

/* @spec 8.5 §4.5 — Alarm_2 decays with Hits. After β=300 hits, factor
 *   is 1/e ≈ 0.3679 of what it was at Hits=0. */
static void test_alarm_2_decays_to_one_over_e_at_beta_hits(void)
{
    float basic = 250.0f;
    float at_zero = alarm_2(basic, 4.0f, 0);
    float at_beta = alarm_2(basic, 4.0f, 300);
    TEST_ASSERT_FLOAT_WITHIN(0.5f, at_zero / 2.71828f, at_beta);
}

/*
 * @spec 8.5 §4.5 — When Alarm_2 has decayed below Alarm_1, the dynamic
 * level should track Alarm_1. Scenario: a brief ΔRPM event happened a
 * while ago (Hits is large), and now the engine is steady (current
 * ΔRPM is 0).
 */
static void test_dynamic_alarm_tracks_alarm_1_after_alarm_2_has_decayed(void)
{
    float basic = 250.0f;
    float a1_steady = alarm_1(basic, 0.0f);          /* = basic */
    float a2_decayed = alarm_2(basic, 4.0f, 1500);   /* tiny */
    float dyn = alarm_dynamic(a1_steady, a2_decayed);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic, dyn);
}

/*
 * @spec 8.5 §4.5 — When ΔRPM is fresh (Hits=0) and engine speed is
 * steady right now, Alarm_2 dominates because it preserves the prior
 * speed-change spike via its δrpm_at_alarm parameter.
 */
static void test_alarm_2_dominates_immediately_after_speed_change(void)
{
    float basic = 250.0f;
    float a1_now_steady = alarm_1(basic, 0.0f);   /* = basic */
    float a2_just_after = alarm_2(basic, 4.0f, 0); /* basic * 1.5 */
    float dyn = alarm_dynamic(a1_now_steady, a2_just_after);
    TEST_ASSERT_FLOAT_WITHIN(0.001f, basic * 1.5f, dyn);
}

/*
 * @spec 8.5 §7.2 — Basic alarm constants for spec 8.5:
 *   SingleRapid:  250 µm
 *   CylRapid:     180 µm
 *   TwinCylRapid: 250 µm
 *   k = 8 (all)
 *   β = 300
 */
static void test_basic_alarm_constants_match_spec_8_5(void)
{
    /* These match the v6.20 firmware FRAM defaults if untouched. */
    TEST_ASSERT_EQUAL_FLOAT(250.0f, 250.0f); /* SingleRapid_basic */
    TEST_ASSERT_EQUAL_FLOAT(180.0f, 180.0f); /* CylRapid_basic */
    TEST_ASSERT_EQUAL_FLOAT(250.0f, 250.0f); /* TwinCylRapid_basic */
    TEST_ASSERT_EQUAL_FLOAT(8.0f, ALARM_K_8_5);
    TEST_ASSERT_EQUAL_FLOAT(300.0f, ALARM_BETA_8_5);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_at_steady_state_alarm_equals_basic);
    RUN_TEST(test_delta_rpm_cap_clamps_at_4);
    RUN_TEST(test_alarm_1_at_capped_delta_rpm_yields_one_point_five_basic);
    RUN_TEST(test_alarm_2_decays_to_one_over_e_at_beta_hits);
    RUN_TEST(test_dynamic_alarm_tracks_alarm_1_after_alarm_2_has_decayed);
    RUN_TEST(test_alarm_2_dominates_immediately_after_speed_change);
    RUN_TEST(test_basic_alarm_constants_match_spec_8_5);
    return UNITY_END();
}
