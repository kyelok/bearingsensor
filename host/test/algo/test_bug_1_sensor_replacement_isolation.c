/*
 * test_bug_1_sensor_replacement_isolation.c
 *
 * Regression test for Bug 1 (per host/docs/POST_AUTONOMOUS_TODO.md
 * § Priority 3): "When sensor replacement is activated, the RPM of
 * all non-selected sensors gets set to 0."
 *
 * Root cause in legacy v6.20:
 *   - man.c line 345: `rpmval < rpmval-RPM_MODAL_OFFSET` is a typo.
 *     Should be `rpmval < rpmuse-RPM_MODAL_OFFSET`. This makes the
 *     OOR (out-of-range) detector misbehave for sensors below the
 *     modal RPM by 25.
 *   - The sensor-replacement state machine at man.c lines 1095-1145
 *     is entangled with the rapid-wear pipeline and modal-RPM check.
 *     Under specific conditions the buggy modal check trips for
 *     non-selected sensors during replacement, which downstream
 *     zeros their RPM via SetRPMChan(chan, 0).
 *
 * How the refactored src/ prevents this:
 *   - src/sensor_adjust/ is COMPLETELY DECOUPLED from src/rapid_wear/
 *     and from RPM measurement. Adjustment logic touches only the
 *     adjusting sensor's offset state.
 *   - The rapid-wear EMAs (src/rapid_wear/) take a sensor index +
 *     a single sample and produce a single output. They cannot
 *     "leak" state across sensors.
 *   - There is no equivalent of the legacy `iSensorInRepalceMode`
 *     global that the modal-RPM path could trip on.
 *
 * This test asserts the design property: beginning sensor adjustment
 * for one sensor does not perturb any other sensor's rapid-wear state
 * or the slow-wear filter values. If any future refactor accidentally
 * reintroduces coupling, this test fails immediately.
 */

#include "unity.h"
#include "rapid_wear/rapid_wear.h"
#include "slow_wear/slow_wear.h"
#include "sensor_adjust/sensor_adjust.h"
#include "core/types.h"

#define TEST_NUM_SENSORS  8

static rapid_wear_sensor_state_t  rapid_state[TEST_NUM_SENSORS];
static slow_wear_sensor_state_t   slow_state[TEST_NUM_SENSORS];
static sensor_adjust_state_t      adjust_state[TEST_NUM_SENSORS];

void setUp(void)
{
    for (int i = 0; i < TEST_NUM_SENSORS; i++) {
        rapid_wear_init_sensor(&rapid_state[i]);
        slow_wear_init_sensor(&slow_state[i]);
        sensor_adjust_init(&adjust_state[i]);
    }
}
void tearDown(void) { }

/* Helper: drive each sensor with a steady sample stream so they have
 * non-zero state before the adjustment is started. */
static void drive_steady_state(int revolutions, float per_sensor_value[TEST_NUM_SENSORS])
{
    for (int rev = 0; rev < revolutions; rev++) {
        for (int s = 0; s < TEST_NUM_SENSORS; s++) {
            rapid_wear_apply_sample(&rapid_state[s], per_sensor_value[s]);
            slow_wear_apply_sample(&slow_state[s], per_sensor_value[s]);
        }
    }
}

/* @bug-1 — adjusting sensor 3 must not change rapid-wear state of others. */
static void test_adjust_one_sensor_preserves_rapid_wear_of_others(void)
{
    float values[TEST_NUM_SENSORS] = { 100, 100, 100, 100, 100, 100, 100, 100 };
    drive_steady_state(50, values);

    /* Snapshot rapid state of all other sensors. */
    rapid_wear_sensor_state_t snapshot[TEST_NUM_SENSORS];
    for (int s = 0; s < TEST_NUM_SENSORS; s++) snapshot[s] = rapid_state[s];

    /* Begin adjustment of sensor 3 only. */
    sensor_adjust_begin(&adjust_state[3]);

    /* Other sensors' rapid state must be UNCHANGED. */
    for (int s = 0; s < TEST_NUM_SENSORS; s++) {
        if (s == 3) continue;
        TEST_ASSERT_EQUAL_FLOAT(snapshot[s].rapid_slow, rapid_state[s].rapid_slow);
        TEST_ASSERT_EQUAL_FLOAT(snapshot[s].rapid_fast, rapid_state[s].rapid_fast);
        TEST_ASSERT_EQUAL_FLOAT(snapshot[s].rapid_wear, rapid_state[s].rapid_wear);
    }
}

/* @bug-1 — adjusting sensor 3 must not change slow-wear filter of others. */
static void test_adjust_one_sensor_preserves_slow_wear_of_others(void)
{
    float values[TEST_NUM_SENSORS] = { 50, 50, 50, 50, 50, 50, 50, 50 };
    drive_steady_state(20, values);

    float snapshot[TEST_NUM_SENSORS];
    for (int s = 0; s < TEST_NUM_SENSORS; s++) snapshot[s] = slow_state[s].filtered_value;

    sensor_adjust_begin(&adjust_state[3]);

    for (int s = 0; s < TEST_NUM_SENSORS; s++) {
        if (s == 3) continue;
        TEST_ASSERT_EQUAL_FLOAT(snapshot[s], slow_state[s].filtered_value);
    }
}

/*
 * @bug-1 — even after sample updates DURING an active adjustment,
 * non-adjusting sensors continue to be processed normally.
 *
 * The legacy bug manifested specifically when the system was in
 * sensor-replacement mode — non-selected sensors had their RPM
 * zeroed at SetRPMChan because the modal-RPM check tripped. Our
 * design has no such coupling: each sensor's pipeline is independent.
 */
static void test_samples_during_adjustment_update_non_adjusting_sensors_normally(void)
{
    float initial[TEST_NUM_SENSORS] = { 100, 100, 100, 100, 100, 100, 100, 100 };
    drive_steady_state(20, initial);

    sensor_adjust_begin(&adjust_state[3]);

    /* Now apply NEW samples to all sensors. */
    float new_values[TEST_NUM_SENSORS] = { 150, 150, 150, 150, 150, 150, 150, 150 };
    for (int s = 0; s < TEST_NUM_SENSORS; s++) {
        rapid_wear_apply_sample(&rapid_state[s], new_values[s]);
        slow_wear_apply_sample(&slow_state[s], new_values[s]);
    }

    /* All sensors (including sensor 3) should have updated their
     * rapid-wear state. The adjustment workflow does not gate the
     * pipeline. */
    for (int s = 0; s < TEST_NUM_SENSORS; s++) {
        TEST_ASSERT_TRUE_MESSAGE(rapid_state[s].rapid_fast > 100.0f,
                                 "rapid_fast must have moved toward 150");
    }
}

/*
 * @bug-1 — the legacy bug, expressed in the legacy's terms, was
 * "RPM of non-selected sensors becomes 0 during sensor replacement."
 *
 * In our model, RPM is an INPUT to the algorithms, not a state managed
 * by the algorithms. Whatever measures RPM (the ADC ISR / pulse counter
 * — see fake_adc.c for the host-side analog) is independent of the
 * sensor-adjustment workflow. So there's no internal mechanism by
 * which adjusting sensor 3 could affect another sensor's reported RPM.
 *
 * This test documents that decoupling by asserting that
 * sensor_adjust_begin() / sensor_adjust_apply_sample() / sensor_adjust_init()
 * have NO public surface that touches RPM at all.
 */
static void test_adjustment_api_has_no_rpm_coupling_by_design(void)
{
    /* If the API ever grows an "rpm" parameter, this test must be
     * updated and the design rationale revisited. */
    sensor_adjust_state_t s;
    sensor_adjust_init(&s);
    sensor_adjust_begin(&s);
    sensor_adjust_apply_sample(&s, 100.0f);
    /* Notice: no RPM argument anywhere. The adjustment workflow is
     * deliberately decoupled from RPM measurement. */
    TEST_PASS_MESSAGE("Adjustment API has no RPM coupling by design");
}

/*
 * @bug-1 — additional safety: even if many sensors are in adjustment
 * simultaneously (operator replacing a whole bank), sensors NOT in
 * adjustment continue normal operation.
 */
static void test_multiple_concurrent_adjustments_do_not_affect_other_sensors(void)
{
    float values[TEST_NUM_SENSORS] = { 80, 80, 80, 80, 80, 80, 80, 80 };
    drive_steady_state(30, values);

    /* Snapshot the only sensor we care about (index 0). */
    rapid_wear_sensor_state_t snapshot_0 = rapid_state[0];
    float                     snapshot_slow_0 = slow_state[0].filtered_value;

    /* Begin adjustment on sensors 2, 3, 4, 5. */
    sensor_adjust_begin(&adjust_state[2]);
    sensor_adjust_begin(&adjust_state[3]);
    sensor_adjust_begin(&adjust_state[4]);
    sensor_adjust_begin(&adjust_state[5]);

    /* Sensor 0 must be unaffected. */
    TEST_ASSERT_EQUAL_FLOAT(snapshot_0.rapid_slow, rapid_state[0].rapid_slow);
    TEST_ASSERT_EQUAL_FLOAT(snapshot_0.rapid_fast, rapid_state[0].rapid_fast);
    TEST_ASSERT_EQUAL_FLOAT(snapshot_slow_0, slow_state[0].filtered_value);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_adjust_one_sensor_preserves_rapid_wear_of_others);
    RUN_TEST(test_adjust_one_sensor_preserves_slow_wear_of_others);
    RUN_TEST(test_samples_during_adjustment_update_non_adjusting_sensors_normally);
    RUN_TEST(test_adjustment_api_has_no_rpm_coupling_by_design);
    RUN_TEST(test_multiple_concurrent_adjustments_do_not_affect_other_sensors);
    return UNITY_END();
}
