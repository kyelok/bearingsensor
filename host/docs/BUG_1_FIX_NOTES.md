# Bug 1 — Sensor Replacement Zeroes Other Sensors' RPM

> **Status (2026-04-27)**: Fixed by design in `src/`. Regression test at `host/test/algo/test_bug_1_sensor_replacement_isolation.c`. Legacy v6.20 firmware in `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` still contains the bug as a frozen field reference; not patched (per project principle that legacy stays untouched).

---

## Original report (Korean, translated)

> 센서 replacement 작동시 선택한 센서외 나머지 센서의 RPM이 모두 0으로 바뀌는 현상이 있습니다.
> 이에 따라 정상적인 작동을 하지 않습니다.
>
> When sensor replacement is activated, the RPM of all sensors other than the selected one gets set to 0. As a result, normal operation does not occur.

---

## Root cause analysis (in legacy v6.20)

Two interacting issues in `man.c`:

### Issue A — Typo at line 345 in `GetModalRPM`

```c
// man.c:345
if(rpmval > (rpmuse+RPM_MODAL_OFFSET) || rpmval < rpmval-RPM_MODAL_OFFSET && rpmval != 0)
```

The right-hand condition `rpmval < rpmval-RPM_MODAL_OFFSET` is **always false** for any non-negative `rpmval` and positive `RPM_MODAL_OFFSET` (= 25). The author meant `rpmval < (rpmuse-RPM_MODAL_OFFSET)` — comparing the sensor's RPM to the modal RPM minus tolerance.

The correct line should be:

```c
if(rpmval > (rpmuse+RPM_MODAL_OFFSET) || (rpmval < (rpmuse-RPM_MODAL_OFFSET) && rpmval != 0))
```

(Note: also added parentheses to make the `&&` precedence explicit.)

**Effect**: The modal-RPM stability detector only fires for sensors reading *higher* than the modal RPM, never for sensors reading *lower*. Most of the time this is benign because typical scenarios only see upward outliers. But during sensor replacement (where the replaced sensor reads near 0 while others read normal RPM), the modal becomes the normal-cluster value, and the replaced sensor would correctly be flagged as below-modal. With the typo, this never happens — the detector is half-blind.

### Issue B — Coupling between sensor-replacement state machine and the rapid-wear pipeline

`man.c` lines 1095-1145 implement the sensor-replacement state machine. It uses globals `iSensorInRepalceMode`, `iSensorInRepalce`, `iSensorInRepalceTimer`, and `damagemonignore[]` to gate the rapid-wear calculation. The logic is dense and shares state across sensors:

```c
// Around man.c:1139
if (((allsensors.flags.calmode == TRUE) && (iRepaidWearReset == TRUE)) ||
    (((timers.iSensorReplace !=0) && (timers.iSensorReplace < wFiveRevTime)) &&
     (((iSensorInRepalce==i) && (iSensorInRepalceMode == TRUE)) ||
      (iSensorInResetMode == TRUE))))
```

The combination of issue A (broken modal detector) and issue B (state-coupled pipeline) creates the field bug: under specific conditions during sensor replacement, the rapid-wear path bails out for non-selected sensors and downstream code (`SetRPMChan`) has its `modalsetcounters` reset, which gates further processing, eventually leading to RPM being set to 0 for those channels.

The detailed control flow that produces this is hard to follow even with the source open — which is itself part of the bug. The architecture invites this kind of subtle interaction.

---

## Fix in src/ (refactored firmware)

The bug **does not exist** in the refactored `src/` tree. Not because we patched it, but because we designed the modules to make this class of bug structurally impossible:

### 1. `src/sensor_adjust/` is decoupled from RPM and from rapid-wear

`sensor_adjust_state_t` holds only the adjusting sensor's own state:

```c
typedef struct {
    int    in_adjustment;
    Uint32 hours_in_adjustment;
    float  accumulated_offset;
    Uint32 sample_count;
} sensor_adjust_state_t;
```

There is no `iSensorInRepalce` global. There is no shared "currently-replacing" channel ID that other modules consult. Each sensor has its own state struct.

### 2. `src/rapid_wear/rapid_wear_apply_sample()` is per-sensor and stateless across calls

```c
void rapid_wear_apply_sample(rapid_wear_sensor_state_t *s, float v);
```

The function takes a single sensor's state and a single sample. It returns nothing. It cannot affect any other sensor's state because it has no reference to one. Same for `slow_wear_apply_sample()`.

### 3. RPM is an input to the algorithms, not state managed by them

Where the legacy code had `sensor[i].rpm` as a global field that algorithms could mutate, the refactored modules treat RPM as a parameter. The hardware abstraction layer (HAL) is the single source of truth for RPM measurements. Adjustment workflows have no way to reach into the RPM measurement path.

### 4. Modal-RPM detection lives separately from sensor adjustment

The legacy `GetModalRPM` was reused by both the rapid-wear pipeline and the sensor-replacement workflow. In `src/` the equivalent functionality (yet to be implemented as part of the spec §3.3 evaluation cadence — Phase 4 follow-up) will be a pure function with no side effects; calling it during sensor adjustment cannot affect any sensor's RPM.

---

## Regression test

`host/test/algo/test_bug_1_sensor_replacement_isolation.c` (5 tests):

- `test_adjust_one_sensor_preserves_rapid_wear_of_others` — adjusting sensor 3 must not perturb sensors 0,1,2,4,5,6,7's rapid-wear state.
- `test_adjust_one_sensor_preserves_slow_wear_of_others` — same for slow-wear filter values.
- `test_samples_during_adjustment_update_non_adjusting_sensors_normally` — sensors NOT in adjustment continue updating normally on each sample.
- `test_adjustment_api_has_no_rpm_coupling_by_design` — documents the design property: the sensor_adjust API has no RPM parameter anywhere. If this changes, the design has regressed.
- `test_multiple_concurrent_adjustments_do_not_affect_other_sensors` — even with 4 sensors in adjustment simultaneously, the 0th sensor (not in adjustment) is unaffected.

If any future refactor accidentally introduces coupling between sensor adjustment and other sensors' state, these tests fail immediately.

---

## What to do about the legacy v6.20 bug

Do nothing. The legacy code in `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` stays untouched per the project principle. It remains the field-deployed reference until customers migrate to the v8.7-compliant build (refactored from `src/`).

If a customer hits Bug 1 on v6.20 in production *before* the v8.7 rollout, the operational workaround documented for AMOT field service is:

1. Do not perform sensor replacement under load. Wait for scheduled downtime (port stop, dry dock).
2. After replacement, manually verify that all sensor RPMs are reading correctly via the dashboard before resuming engine operation.
3. If RPMs are stuck at 0, power-cycle the SPU. The state should reinitialize correctly on boot.

These workarounds are documented in `host/docs/CUSTOMER_NOTES.md` § "Things customers should know that previously weren't documented".

---

## Lessons captured

1. **Modular design prevents whole categories of bugs.** This bug existed because the legacy code shared mutable state across what should have been independent concerns (sensor adjustment and RPM measurement). The refactored modules can't have this bug because they don't share that state.

2. **State globals are a liability in firmware.** Every `iSensorInRepalce*` global in legacy v6.20 is a potential coupling point. The refactor reduced the number of globals dramatically.

3. **Always-true / always-false conditions are very hard to spot in legacy code.** The line 345 typo (`rpmval < rpmval - 25`) sat in the source for years. Modern static analyzers (clang's `-Wtautological-constant-out-of-range-compare` family) catch this immediately. Worth running on the legacy code as a "what other typos are lurking?" exercise.

4. **Tests as architectural assertions.** The "no RPM in the adjustment API" test isn't testing behavior — it's asserting a *design property*. These kinds of tests are cheap to write and prevent architectural drift over time.
