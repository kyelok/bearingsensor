/*
 * test_module_speed_comp_stability_gate.c — exercises the §2.2-A
 * deferred-commit stability gate.
 *
 * @spec 8.5 §2.2-A — sample stability check (Δrpm > 5%·nominal → discard).
 * Covers feature_matrix req: R-§2.1-4
 */

#include "unity.h"
#include "speed_comp/speed_comp.h"

static speed_comp_table_t          t;
static speed_comp_learning_state_t learning;
static speed_comp_stability_state_t gate;

void setUp(void)
{
    speed_comp_init(&t);
    speed_comp_learning_init(&learning);
    speed_comp_stability_init(&gate);
}
void tearDown(void) { }

/* @spec 8.5 §2.2-A — first sample is always buffered, never committed. */
static void test_first_sample_is_buffered_not_committed(void)
{
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate,
        /*sensor=*/3, /*rpm=*/100, /*nominal=*/100, /*sample=*/200);
    TEST_ASSERT_EQUAL_INT(0, committed);
    TEST_ASSERT_EQUAL_INT(1, gate.has_pending);
    TEST_ASSERT_EQUAL_UINT16(100, gate.pending_rpm);
    TEST_ASSERT_EQUAL_INT16(200, gate.pending_sample);
}

/* @spec 8.5 §2.2-A — within-tolerance second sample commits the first. */
static void test_within_tolerance_commits_buffered(void)
{
    /* Sample 1: rpm=100, sample=300. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          5, 100, 100, 300);
    /* Sample 2: rpm=102 (Δ=2, 2% nominal, ≤5%). Sample 1 should commit. */
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 5, 102, 100, 350);
    TEST_ASSERT_EQUAL_INT(1, committed);

    /* Sample 1 (300) was committed at the band mapped from rpm=100. */
    int band = speed_comp_rpm_to_band(100, 100);
    TEST_ASSERT_TRUE(band >= 0);
    TEST_ASSERT_EQUAL_INT16(300, speed_comp_lookup(&t, band, 5));

    /* Buffer now holds sample 2. */
    TEST_ASSERT_EQUAL_INT(1, gate.has_pending);
    TEST_ASSERT_EQUAL_UINT16(102, gate.pending_rpm);
    TEST_ASSERT_EQUAL_INT16(350, gate.pending_sample);
}

/* @spec 8.5 §2.2-A — beyond-tolerance second sample discards both. */
static void test_beyond_tolerance_discards_both(void)
{
    /* Sample 1: rpm=100, sample=300. Buffered. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          5, 100, 100, 300);
    /* Sample 2: rpm=120 (Δ=20, 20% nominal). Both discarded. */
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 5, 120, 100, 350);
    TEST_ASSERT_EQUAL_INT(0, committed);
    TEST_ASSERT_EQUAL_INT(0, gate.has_pending);

    /* Nothing committed at rpm=100 band. */
    int band_100 = speed_comp_rpm_to_band(100, 100);
    TEST_ASSERT_EQUAL_INT16(0, speed_comp_lookup(&t, band_100, 5));
}

/* @spec 8.5 §2.2-A — exactly 5% delta is accepted (≤, not <). */
static void test_at_exactly_5_percent_delta_accepts(void)
{
    /* nominal=100, threshold=5. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          0, 100, 100, 100);
    /* delta = 5 → at threshold. Spec: "higher than 5%" → strict >. So 5 accepts. */
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 0, 105, 100, 100);
    TEST_ASSERT_EQUAL_INT(1, committed);
}

/* @spec 8.5 §2.2-A — 6% delta rejects. */
static void test_just_above_5_percent_delta_rejects(void)
{
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          0, 100, 100, 100);
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 0, 106, 100, 100);
    TEST_ASSERT_EQUAL_INT(0, committed);
}

/* @spec 8.5 §2.2-A — symmetric: 5% drop rejects same as 5% rise. */
static void test_symmetric_drop_and_rise(void)
{
    /* Drop direction. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          0, 100, 100, 100);
    int committed_drop = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 0, 90, 100, 100);
    TEST_ASSERT_EQUAL_INT(0, committed_drop); /* Δ=10, >5 → reject */
}

/* @spec 8.5 §2.2-A — long stable stream commits N-1 samples (one always
 * remains buffered until next sample arrives or stream ends). */
static void test_long_stable_stream(void)
{
    int total_committed = 0;
    /* 100 samples at rpm=100±2. Each pair is stable. */
    for (int i = 0; i < 100; i++) {
        Uint16 rpm = (Uint16)(100 + (i % 3) - 1); /* 99..101 */
        int c = speed_comp_record_with_stability_gate(
            &t, &learning, &gate, 5, rpm, 100, 200);
        total_committed += c;
    }
    /* 100 submissions → 99 commits (first one stays buffered). */
    TEST_ASSERT_EQUAL_INT(99, total_committed);
    TEST_ASSERT_EQUAL_INT(1, gate.has_pending);
}

/* @spec 8.5 §2.2-A — unstable transient resets, then stable resumes. */
static void test_recovery_after_transient(void)
{
    /* rpm=100 buffered. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          5, 100, 100, 200);
    /* rpm=120 transient — both discarded, buffer empty. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          5, 120, 100, 250);
    TEST_ASSERT_EQUAL_INT(0, gate.has_pending);
    /* rpm=120 again (engine settled at higher speed). New first sample. */
    int c1 = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 5, 120, 100, 270);
    TEST_ASSERT_EQUAL_INT(0, c1);
    TEST_ASSERT_EQUAL_INT(1, gate.has_pending);
    /* rpm=121 (Δ=1, stable). Commits the rpm=120 sample. */
    int c2 = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 5, 121, 100, 280);
    TEST_ASSERT_EQUAL_INT(1, c2);
}

/* @spec 8.5 §2.2-A — gate ignores out-of-range RPM (buffered RPM below
 * 20% nominal): stable but not recordable. Buffer rotates without commit. */
static void test_out_of_range_buffered_rpm_does_not_commit(void)
{
    /* rpm=10 (< 20% of nominal 100). Buffered. */
    speed_comp_record_with_stability_gate(&t, &learning, &gate,
                                          0, 10, 100, 100);
    /* rpm=12 (Δ=2, "stable"). But rpm=10 is below the band gate so
     * cannot be recorded. Function returns 0; buffer rotates to 12. */
    int committed = speed_comp_record_with_stability_gate(
        &t, &learning, &gate, 0, 12, 100, 100);
    TEST_ASSERT_EQUAL_INT(0, committed);
    TEST_ASSERT_EQUAL_INT(1, gate.has_pending);
    TEST_ASSERT_EQUAL_UINT16(12, gate.pending_rpm);
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    speed_comp_stability_init(NULL);
    int c = speed_comp_record_with_stability_gate(NULL, NULL, NULL,
                                                  0, 100, 100, 0);
    TEST_ASSERT_EQUAL_INT(0, c);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_first_sample_is_buffered_not_committed);
    RUN_TEST(test_within_tolerance_commits_buffered);
    RUN_TEST(test_beyond_tolerance_discards_both);
    RUN_TEST(test_at_exactly_5_percent_delta_accepts);
    RUN_TEST(test_just_above_5_percent_delta_rejects);
    RUN_TEST(test_symmetric_drop_and_rise);
    RUN_TEST(test_long_stable_stream);
    RUN_TEST(test_recovery_after_transient);
    RUN_TEST(test_out_of_range_buffered_rpm_does_not_commit);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
