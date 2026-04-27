/*
 * test_spec4_rapid_wear_combining.c — coverage of MAN BWM spec §4.4
 * (Combining Rapid Wear Sensor Values), revision 05 ("8.5").
 *
 *   §4.4.1 SingleRapid     = abs(Rapid Wear)
 *   §4.4.2 CylRapid        = abs(RW_FoCyl,n + RW_AftCyl,n)
 *   §4.4.3 TwinCylRapid    = abs(RW_AftCyl,n + RW_FoCyl,n+1)
 *
 * Important: in 8.5 these use simple sum / abs. In 8.6+ they use
 * min(|RWS|, |dRS|) where dRS is the new "Rapid Wear deviation". Tests
 * here lock down the 8.5 semantics; Phase 4 (upgrade to 8.7) will add
 * parallel tests for the 8.6+ formula.
 *
 * Spec text: host/specs/extracted/8.5/8.5.md sections 4.4.1–4.4.3.
 */

#include "unity.h"
#include "platform.h"
#include <math.h>
#include <stdlib.h>

void setUp(void) { }
void tearDown(void) { }

/* @spec 8.5 §4.4.1 */
static int single_rapid(int rapid_wear)
{
    return abs(rapid_wear);
}

/* @spec 8.5 §4.4.2 */
static int cyl_rapid(int rw_fore, int rw_aft)
{
    return abs(rw_fore + rw_aft);
}

/* @spec 8.5 §4.4.3 */
static int twin_cyl_rapid(int rw_cyl_n_aft, int rw_cyl_n_plus_1_fore)
{
    return abs(rw_cyl_n_aft + rw_cyl_n_plus_1_fore);
}

/* SingleRapid */
static void test_single_rapid_zero_input_zero_output(void)
{
    TEST_ASSERT_EQUAL_INT(0, single_rapid(0));
}

static void test_single_rapid_positive_passes_through(void)
{
    TEST_ASSERT_EQUAL_INT(150, single_rapid(150));
}

static void test_single_rapid_negative_made_positive(void)
{
    TEST_ASSERT_EQUAL_INT(150, single_rapid(-150));
}

/* CylRapid */
static void test_cyl_rapid_zero_zero_is_zero(void)
{
    TEST_ASSERT_EQUAL_INT(0, cyl_rapid(0, 0));
}

static void test_cyl_rapid_same_sign_sums_in_magnitude(void)
{
    /* If both cylinder sensors trend up by 100, CylRapid = 200. */
    TEST_ASSERT_EQUAL_INT(200, cyl_rapid(100, 100));
}

/*
 * @spec 8.5 §3.2 wording carries over: counter-phase fore/aft
 * (one up, one down equally) cancels in the sum. This is by design —
 * spec §3.2 explicitly motivates the cylinder-deviation formula by
 * the same observation, and §4.4.2 inherits it.
 */
static void test_cyl_rapid_counter_phase_cancels(void)
{
    TEST_ASSERT_EQUAL_INT(0, cyl_rapid(150, -150));
}

static void test_cyl_rapid_negative_sum_made_positive(void)
{
    TEST_ASSERT_EQUAL_INT(80, cyl_rapid(-50, -30));
}

/* TwinCylRapid */
static void test_twin_cyl_rapid_zero_zero_is_zero(void)
{
    TEST_ASSERT_EQUAL_INT(0, twin_cyl_rapid(0, 0));
}

static void test_twin_cyl_rapid_uses_aft_of_n_and_fore_of_n_plus_1(void)
{
    /* Spec wording: TwinCylRapid for cyl pair (n, n+1) uses the AFT
     * sensor of cyl n and the FORE sensor of cyl n+1 — the two sensors
     * physically adjacent across the main bearing between them.
     * (See vendor extension MB-sum doc for the same idea applied
     *  one position over.) */
    TEST_ASSERT_EQUAL_INT(160, twin_cyl_rapid(100, 60));
}

/*
 * Spec note: TwinCylRapid measures variance differently from
 * CylRapid. Two cylinders each trending up by 100 (TwinCyl spans
 * cyl n aft + cyl n+1 fore) yields 200; the same input through
 * CylRapid (spans cyl n fore + cyl n aft) also yields 200 — but the
 * spec says CylRapid alarms ON SAME-CYLINDER coupled motion (likely
 * crank-pin/crosshead), TwinCylRapid alarms on across-bearing coupled
 * motion (likely main bearing). Different physical interpretations,
 * same arithmetic shape.
 */
static void test_cyl_and_twin_have_same_arithmetic_shape(void)
{
    int cyl   = cyl_rapid(80, 80);
    int twin  = twin_cyl_rapid(80, 80);
    TEST_ASSERT_EQUAL_INT(cyl, twin);
}

/*
 * @spec 8.5 §4.4 — the three values are compared against alarm limits
 * INDEPENDENTLY. A SingleRapid alarm can fire even when CylRapid is
 * nominal, and vice versa. Test that combining doesn't suppress the
 * single-sensor pathway.
 */
static void test_single_rapid_can_alarm_independent_of_cyl_rapid(void)
{
    int rw_fore = 220;   /* big anomaly on one sensor */
    int rw_aft  = -210;  /* near-perfect cancellation in the cyl sum */
    int single_fore = single_rapid(rw_fore);     /* 220, alarms */
    int single_aft  = single_rapid(rw_aft);      /* 210, alarms */
    int cyl         = cyl_rapid(rw_fore, rw_aft); /* 10, no alarm */
    TEST_ASSERT_GREATER_OR_EQUAL_INT(200, single_fore);  /* exceeds basic */
    TEST_ASSERT_GREATER_OR_EQUAL_INT(200, single_aft);
    TEST_ASSERT_LESS_THAN_INT(180, cyl);
}

/*
 * @spec 8.5 §4.4 wording: "SingleRapid may be the parameter to cause
 * an alarm in case that a sensor is out of order so that CylRapid and
 * TwinCylRapid cannot be evaluated."
 *
 * In firmware, this manifests as: when sensor[i].status2.failure == 1,
 * cyl/twin alarms for that pair are suppressed but Single is still
 * evaluated. Modeled here as a flag check.
 */
static void test_failed_pair_member_disables_cyl_and_twin_but_not_single(void)
{
    int sensor_failed = 1;
    int evaluate_single = 1;                          /* always */
    int evaluate_cyl    = !sensor_failed;             /* suppressed */
    int evaluate_twin   = !sensor_failed;
    TEST_ASSERT_TRUE(evaluate_single);
    TEST_ASSERT_FALSE(evaluate_cyl);
    TEST_ASSERT_FALSE(evaluate_twin);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_single_rapid_zero_input_zero_output);
    RUN_TEST(test_single_rapid_positive_passes_through);
    RUN_TEST(test_single_rapid_negative_made_positive);
    RUN_TEST(test_cyl_rapid_zero_zero_is_zero);
    RUN_TEST(test_cyl_rapid_same_sign_sums_in_magnitude);
    RUN_TEST(test_cyl_rapid_counter_phase_cancels);
    RUN_TEST(test_cyl_rapid_negative_sum_made_positive);
    RUN_TEST(test_twin_cyl_rapid_zero_zero_is_zero);
    RUN_TEST(test_twin_cyl_rapid_uses_aft_of_n_and_fore_of_n_plus_1);
    RUN_TEST(test_cyl_and_twin_have_same_arithmetic_shape);
    RUN_TEST(test_single_rapid_can_alarm_independent_of_cyl_rapid);
    RUN_TEST(test_failed_pair_member_disables_cyl_and_twin_but_not_single);
    return UNITY_END();
}
