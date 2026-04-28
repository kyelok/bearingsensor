# BWM SPU Firmware — Spec Compliance Document

**Spec basis**: MAN Diesel & Turbo document **3091686-8**, revision 07 ("8.7"), dated 2018-09-18.
**Firmware target**: AMOT XTSW+ BWM SPU.
**Generated**: 2026-04-28.

This document mirrors the MAN BWM specification's table of contents 1:1. For each numbered section of the spec, the layout is:

- **Specification** — short summary or pull-quote from the MAN document.
- **Implementation** — file paths and function names in `src/`.
- **Verification** — test files and test functions under `host/test/`.

When an item is not yet wired into the integration layer (legacy bridge work in progress), it is marked **Pending — see implementation_docs/INTEGRATION_LAYER_DESIGN.md Phase B-N**. The `src/` modules listed are spec-correct unit-tested implementations; the integration layer wires them to live hardware.

A separate **Vendor Extensions** section at the end covers MB-Sum (an AMOT-specific feature, not a MAN requirement).

---

## 1 Overview of System Responses

### Specification

Sensors at every cylinder (fore + aft) record the BDC level once per revolution, with repeatability of ±0.01 mm. Two algorithm classes (slow wear, rapid wear) drive three engine-control responses (alarm, slowdown, pre-warning). Astern running and signals within the torsional-vibration barred speed range are disregarded. The system reports to the engine control system per chapter 8.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Per-revolution sample acquisition | `src/speed_comp/speed_comp.c` | `speed_comp_apply` |
| Two algorithm classes | `src/slow_wear/`, `src/rapid_wear/` | module trees |
| Three engine-control responses | `src/alarms/alarm_thresholds.h`, `src/system/alarm_relays_8_7.c:16-24` | enums + `alarm_relays_set_alarm/_set_slowdown/_set_prewarning` |
| Repeatability | hardware-determined; modelled in `host/fakes/synthetic_engine.c` | — |

### Verification

- `host/test/algo/test_spec1_system_response.c::test_one_bdc_sample_per_sensor_per_revolution`
- `host/test/algo/test_spec1_system_response.c::test_sensor_repeatability_is_one_hundredth_mm`
- `host/test/algo/test_spec1_system_response.c::test_system_has_slow_and_rapid_algorithm_classes`
- `host/test/algo/test_spec1_system_response.c::test_three_engine_control_responses_are_distinct`
- `host/test/algo/test_module_alarm_relays_8_7.c` (7 tests)

---

## 2 Speed (RPM) Compensation

### Specification

A per-sensor lookup table indexed by RPM band (≥100 bands across 20%–110% of nominal speed) provides the reference value used to remove RPM-dependent BDC variation. The compensation table is built during a 500-hour learning process. Below 20% of nominal speed and astern running are disregarded.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Lookup table layout (150 × 28) | `src/core/types.h`; `src/speed_comp/speed_comp.h` | `BWM_SPEED_BANDS`; `speed_comp_table_t` |
| RPM-band mapping (rejects below 20%) | `src/speed_comp/speed_comp.c:23` | `speed_comp_rpm_to_band` |
| Apply compensation to a sample | `src/speed_comp/speed_comp.c` | `speed_comp_apply` |

### Verification

- `host/test/algo/test_module_speed_comp.c::test_init_zeros_table`
- `host/test/algo/test_module_speed_comp.c::test_rpm_below_minimum_returns_negative_one`
- `host/test/algo/test_speed_compensation.c::test_table_has_at_least_one_hundred_speed_bands`
- `host/test/algo/test_speed_compensation.c::test_table_has_28_sensor_channels`
- `host/test/algo/test_speed_compensation.c::test_below_20_percent_nominal_is_disregarded`
- `host/test/algo/test_speed_compensation.c::test_astern_direction_disregarded`

### 2.1 Rough Compensation Curve

#### Specification

Three fixed engine speeds, 10 minutes each, in ranges 20–50% / 50–80% / 80–100% of nominal. After the first 10-minute average is captured, build the first rough curve from that point and the engine-type characteristic slope (chapter 7). Reset rapid-fast and rapid-slow each time the curve is updated. Elevated alarm limits apply during rough-curve creation.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Multi-stage learning state machine | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-3. Reuses legacy `mancal.c` STAGE1..CAL_COMPLETE during hybrid build. | — |
| Engine-type characteristic slope (chapter 7) | `src/alarms/alarm_thresholds_8_7.h` | constants |
| Rapid-wear reset on curve update (rapid_slow=0 form) | `src/rapid_wear/rapid_wear_8_7.c:8` | `rapid_wear_reset_8_7` |
| Elevated rough-creation rapid-wear thresholds | `src/alarms/alarm_thresholds_8_7.h` Table 7.7 constants | — |

#### Verification

- `host/test/algo/test_module_rapid_wear_8_7.c::test_reset_8_7_zeroes_rapid_slow`
- `host/test/algo/test_module_alarm_thresholds_8_7.c::test_rough_creation_thresholds_*`
- Multi-hour calibration state machine: tested at integration level once Phase B-3 lands.

### 2.2 Refining the Compensation Curve

#### Specification

Free engine operation. 1000 valid samples per speed band define a reference value. Discard samples if ΔRPM between consecutive samples exceeds 5% of nominal (running unsteadily). Re-calc averages every 50 hours of the 500-hour refinement window. Alarm if any reference value, when updated, has changed by ≥0.2 mm versus the first valid value.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| 1000-sample threshold | `src/speed_comp/speed_comp.c:48` | `speed_comp_record_fine_sample`, `speed_comp_finalize_band_if_ready` |
| Sample stability gate (ΔRPM > 5% nominal → discard) | `src/speed_comp/speed_comp.c:99,107` | `speed_comp_stability_init`, `speed_comp_record_with_stability_gate` |
| Linear interpolation between valid bands | `src/speed_comp/speed_comp.c` | `speed_comp_interpolate` |
| 50-hour recalc cadence | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-3 (timer wiring). |
| 0.2 mm change alarm | Pending — orchestration glue lives in Phase B-3. The threshold constant is present in `src/alarms/`. |

#### Verification

- `host/test/algo/test_module_speed_comp.c::test_record_and_lookup_round_trip`
- `host/test/algo/test_module_speed_comp_stability_gate.c` (12 tests)
- `host/test/algo/test_speed_compensation.c::test_linear_interpolation_at_midpoint_between_valid_bands`

### 2.3 Final Compensation Curve

#### Specification

After 500 hours of refinement, bands with fewer than 1000 samples receive a weighted blend of (a) the average of available samples and (b) the value interpolated/extrapolated from neighbouring valid bands:

```
REF = (N_Hits · Value_AvgNHits + (1000 − N_Hits) · Value_Interp) / 1000,  N_Hits < 1000
```

Bands that received zero samples are filled by interpolation/extrapolation only.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Weighted blend for under-sampled bands | `src/speed_comp/speed_comp.c:177,199` | `pick_anchors_for_band`, `speed_comp_finalize_table` |

#### Verification

- `host/test/algo/test_module_speed_comp_finalize.c` (8 tests, including spec-formula match)

---

## 3 Slow Wear Monitoring

### Specification

Compares present BDC levels with the learning-period reference. Pipeline: speed-compensate (chapter 2) → low-pass filter → compute sensor and cylinder deviations → compare to alarm/slowdown thresholds (chapter 7) and the 6-hour-average pre-warning level. Values within the barred speed range are disregarded.

### Implementation

(See subsections.)

### Verification

(See subsections.)

### 3.1 Noise Removal

#### Specification

Low-pass filter with update factor x = 0.05 applied per revolution to the speed-compensated sample.

```
S_comp = S_N − S_ref
SF_new = SF_old · (1 − x) + S_comp · x,   x = 0.05
```

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Filter step | `src/slow_wear/slow_wear.c:14` | `slow_wear_apply_sample` |

#### Verification

- `host/test/algo/test_module_slow_wear.c::test_filter_first_step_is_x_times_input`
- `host/test/algo/test_spec3_slow_wear.c::test_slow_wear_filter_step_input_settles_to_input`
- `host/test/algo/test_spec3_slow_wear.c::test_slow_wear_filter_steady_state_zero`

### 3.2 Deviation Calculations

#### Specification

To remove common-mode variation (e.g. engine-temperature drift), compute each sensor's deviation as its filtered value minus the average of the other sensors. Cylinder deviation averages the fore/aft pair within one cylinder and subtracts the average of the other sensors — counter-phase fore/aft scatter cancels.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Sensor deviation | `src/slow_wear/slow_wear.c:21` | `slow_wear_sensor_deviation` |
| Cylinder deviation | `src/slow_wear/slow_wear.c:40` | `slow_wear_cylinder_deviation` |
| Failed-sensor exclusion (§5.1 hook) | both functions take an `is_valid` mask | — |

#### Verification

- `host/test/algo/test_cylinder_deviation.c::test_sensor_deviation_worked_example`
- `host/test/algo/test_cylinder_deviation.c::test_cylinder_deviation_spec_worked_example`
- `host/test/algo/test_cylinder_deviation.c::test_cylinder_deviation_cancels_counter_phase_fore_aft`
- `host/test/algo/test_module_slow_wear.c::test_cylinder_deviation_excludes_failed_sensor`

### 3.3 Evaluation of Data

#### Specification

Sensor value, sensor deviation, and cylinder deviation are each compared with corresponding alarm and slowdown limits. Evaluation runs at least every 30 revolutions. A pre-warning is reported when the 6-hour average compensated sensor value drifts past the pre-warning level (table 7.4); acknowledging a pre-warning raises that sensor's pre-warning limit by 0.25 mm.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Pre-warning check (6-hour average) | `src/slow_wear/slow_wear.c:78` | `slow_wear_pre_warning_check` |
| Pre-warning acknowledgement raises limit by 0.25 mm | `src/slow_wear/slow_wear.c:83` | `slow_wear_acknowledge_pre_warning` |
| Alarm latching | `src/alarms/alarm_thresholds.c:7-17` | `alarm_latch_set_alarm/_set_slowdown/_set_prewarning` etc. |
| 30-revolution evaluation cadence | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-3 (main-loop scheduling). |

#### Verification

- `host/test/algo/test_module_slow_wear.c::test_pre_warning_check`
- `host/test/algo/test_module_slow_wear.c::test_acknowledge_pre_warning_raises_limit_by_25`
- `host/test/algo/test_spec3_slow_wear.c::test_evaluation_at_thirty_revolutions`
- `host/test/algo/test_spec3_slow_wear.c::test_alarm_latching_persists_after_condition_clears`
- `host/test/algo/test_spec3_slow_wear.c::test_pre_warning_level_at_threshold_triggers_event`
- `host/test/algo/test_spec3_slow_wear.c::test_pre_warning_acknowledge_raises_limit_by_quarter_mm`

### 3.4 Flow Chart for Slow Wear Detection

#### Specification

Per-revolution: acquire signal, gate on speed (≥20% nominal, outside barred range), speed-compensate, apply filter. Every up-to-30 revolutions: compute deviations, compare with alarm/slowdown thresholds, compare 6-hour average with pre-warning level, store frozen copy on alarm, request slowdown if applicable.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Per-revolution + per-30 orchestration | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-3 main-loop scheduler. Algorithm building blocks listed under §3.1–§3.3 are unit-tested independently. |

#### Verification

- `host/test/algo/test_spec3_slow_wear.c::test_barred_speed_band_disregards_evaluation`
- End-to-end flow exercised by `host/test/integration/test_e2e_alarm_chain.c`.

---

## 4 Rapid Wear Monitoring

### Specification

Detects fast-developing failures (filter breakage, oil starvation) by comparing fast and slow exponential moving averages of the speed-compensated values. Combines per-sensor results into Single, Cylinder-Average, and Twin-Cylinder-Average metrics; each is compared with a dynamic alarm limit that grows with engine-speed variation. Damage monitoring is paused during rapid speed transients.

### Implementation

(See subsections.)

### Verification

(See subsections.)

### 4.1 Rapid Wear Value Calculation

#### Specification

Per sensor, two EMAs of the speed-compensated value:

```
Avg_new = Avg_old · (1 − x) + Value_new · x
Rapid Slow:  x = 0.0001
Rapid Fast:  x = 0.2
RWS = Rapid Fast − Rapid Slow
RWC = (RWS_FoCyl,m + RWS_AftCyl,m) / 2
RWT = (RWS_FoCyl,m + RWS_AftCyl,m + RWS_FoCyl,m+1 + RWS_AftCyl,m+1) / 4
```

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Per-sensor EMAs and RWS | `src/rapid_wear/rapid_wear.c:28,36` | `rapid_wear_apply_sample`, `rapid_wear_reset_8_5` |
| 8.7 reset (rapid_slow=0) | `src/rapid_wear/rapid_wear_8_7.c:8` | `rapid_wear_reset_8_7` |
| RWT four-sensor average (8.7) | `src/rapid_wear/rapid_wear_8_7.c:88` | `rapid_wear_rwt_8_7` |

#### Verification

- `host/test/algo/test_rapid_wear_ema.c::test_rapid_slow_factor_is_one_ten_thousandth`
- `host/test/algo/test_rapid_wear_ema.c::test_rapid_fast_factor_is_one_fifth`
- `host/test/algo/test_rapid_wear_ema.c::test_rapid_wear_value_is_difference_of_fast_minus_slow`
- `host/test/algo/test_rapid_wear_ema.c::test_ema_holds_constant_input_at_steady_state`
- `host/test/algo/test_rapid_wear_ema.c::test_rapid_fast_step_response_matches_closed_form`
- `host/test/algo/test_rapid_wear_ema.c::test_rapid_slow_step_response_approaches_one_minus_one_over_e`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_rwt_8_7_is_four_sensor_average`

### 4.2 Rapid Wear Deviation Calculations

#### Specification

Analogous to §3.2: subtract a per-sensor (or per-cylinder, per-twin-cylinder) value from the average of the remaining sensors, yielding `dRS`, `dRC`, `dRT`. Removes common-mode change from rapid-wear analysis.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Sensor deviation `dRS` | `src/rapid_wear/rapid_wear_8_7.c:16` | `rapid_wear_deviation_sensor_8_7` |
| Cylinder deviation `dRC` | `src/rapid_wear/rapid_wear_8_7.c:32` | `rapid_wear_deviation_cyl_8_7` |
| Twin deviation `dRT` | `src/rapid_wear/rapid_wear_8_7.c:58` | `rapid_wear_deviation_twin_8_7` |

#### Verification

- `host/test/algo/test_module_rapid_wear_8_7.c::test_deviation_sensor_*`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_deviation_cyl_*`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_deviation_twin_*`

### 4.3 Combining Rapid Wear Sensor Values

#### Specification

```
SingleRapid_n              = min(|RWS_n|, |dRS_n|)
CylinderRapidAve_m         = min(|RWC_m|, |dRC_m|)
TwinCylinderRapidAve_m,m+1 = min(|RWT_m,m+1|, |dRT_m,m+1|)
```

A failed sensor disables the Cylinder/Twin combinations that include it but does not disable Single for the still-good sensors in its cylinder.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| SingleRapid (8.7) | `src/rapid_wear/rapid_wear_8_7.c:101` | `rapid_wear_single_8_7` |
| CylinderRapidAve (8.7) | `src/rapid_wear/rapid_wear_8_7.c:102` | `rapid_wear_cyl_ave_8_7` |
| TwinCylinderRapidAve (8.7) | `src/rapid_wear/rapid_wear_8_7.c:103` | `rapid_wear_twin_ave_8_7` |
| Failed-sensor handling | `valid` mask in deviation functions | — |

#### Verification

- `host/test/algo/test_module_rapid_wear_8_7.c::test_single_8_7_min_of_abs`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_cyl_ave_*`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_twin_ave_*`
- `host/test/algo/test_spec4_rapid_wear_combining.c::test_failed_pair_member_disables_cyl_and_twin_but_not_single`

### 4.4 Dynamic Rapid Alarm Limits

#### Specification

ΔRPM tracked via slow/fast envelope EMAs. If ΔRPM > 25% nominal: pause damage monitoring. If 16% ≤ ΔRPM ≤ 25%: clamp ΔRPM_PCT to 16. Otherwise:

```
Alarm_Dynamic = Alarm_Basic · (1 + ΔRPM_PCT / k),   k = 16
```

Basic alarm levels per chapter 7 tables 7.5/7.6/7.7.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| ΔRPM tracker (RPM_low/RPM_high EMAs) | `src/rapid_wear/delta_rpm_tracker.c:7,15,45,51` | `delta_rpm_tracker_init/_update/_delta/_pct` |
| 8.7 dynamic alarm formula (k=16, 16-25% floor, pause >25%) | `src/rapid_wear/rapid_wear_8_7.c:105,110` | `rapid_wear_should_pause_8_7`, `rapid_wear_dynamic_alarm_8_7` |

#### Verification

- `host/test/algo/test_module_delta_rpm_tracker.c` (8 tests)
- `host/test/algo/test_module_rapid_wear_8_7.c::test_dynamic_alarm_8_7_*`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_dynamic_alarm_8_7_clamps_in_floor_range`
- `host/test/algo/test_module_rapid_wear_8_7.c::test_should_pause_8_7_returns_correctly`

### 4.5 Rapid Wear Sensor Value Reset during Learning Mode

#### Specification

When the compensation curves are updated, set Rapid Fast to the average of the next 5 revolutions of speed-compensated values, and set Rapid Slow to **zero**. No rapid-wear alarms while the 5-revolution averaging is in progress.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Reset routine | `src/rapid_wear/rapid_wear_8_7.c:8` | `rapid_wear_reset_8_7` |

#### Verification

- `host/test/algo/test_module_rapid_wear_8_7.c::test_reset_8_7_zeroes_rapid_slow`
- `host/test/algo/test_module_sensor_adjust_8_7.c::test_apply_rapid_reset_zeroes_rapid_slow`

### 4.6 Flow Chart for Rapid Wear Detection

#### Specification

Per-revolution: acquire, gate on speed/barred range, speed-compensate, check whether 5-rev averaging is active, compute ΔRPM and pause if needed, update EMAs, compute RWS/RWC/RWT and deviations, compute SingleRapid/CylRapidAve/TwinCylRapidAve, compute dynamic alarm levels, classify, store frozen copy and request slowdown on alarm.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Per-revolution rapid pipeline orchestration | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-3. Each algorithm step is unit-tested independently in the modules above. |

#### Verification

- End-to-end exercised in `host/test/integration/test_e2e_alarm_chain.c`.

---

## 5 Sensor Failure

### Specification

Two concerns: (a) deviation calculations correctly drop a failed sensor from the divisor, and (b) when a sensor is changed or relocated, the operator chooses one of three re-adjustment procedures depending on history. After any adjustment, log the event and reset rapid wear (Rapid Fast = 5-rev average, Rapid Slow = 0).

### Implementation

(See subsections.)

### Verification

(See subsections.)

### 5.1 Corrections for Failed Sensors

#### Specification

Drop the failed sensor from the average term in every sensor and cylinder deviation calculation (§3.2 and §4.2).

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| `is_valid`/`valid[]` mask threaded into all deviation functions | `src/slow_wear/slow_wear.c:21,40`; `src/rapid_wear/rapid_wear_8_7.c:16,32,58` | `slow_wear_*_deviation`, `rapid_wear_deviation_*_8_7` |

#### Verification

- `host/test/algo/test_module_slow_wear.c::test_cylinder_deviation_excludes_failed_sensor`
- `host/test/algo/test_cylinder_deviation.c` (failed-sensor cases)

### 5.2 Re-adjustment of Reference Curve

#### Specification

Three procedures the operator may select:

1. **§5.2.1** Re-adjustment of reference curve only (sensor changed/relocated, history valid).
2. **§5.2.2** Re-adjustment + extrapolation of slow wear (sensor out of operation > 100 hours; uses neighbour data and offsets O₁ and O₂).
3. **§5.2.3** Re-adjustment + reset of slow wear (repairs invalidate slow wear history).

All three include a 50-hour offset re-adjustment phase during which slow-wear alarms for the affected sensor are suspended; rapid-wear alarms remain active. §5.2.4: log the procedure and reset rapid-wear state for the adjusted sensor (Rapid Fast = 5-rev avg, Rapid Slow = 0).

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| §5.2.1 reference-curve only | `src/sensor_adjust/sensor_adjust_8_7.c` | `sensor_adjust_8_7_refcurve_only` |
| §5.2.2 + extrapolation (O₂ from neighbour) | `src/sensor_adjust/sensor_adjust_8_7.c` | `sensor_adjust_8_7_refcurve_plus_extrap` |
| §5.2.3 + reset | `src/sensor_adjust/sensor_adjust_8_7.c` | `sensor_adjust_8_7_refcurve_plus_reset` |
| §5.2.4 rapid reset (rapid_slow = 0) | `src/sensor_adjust/sensor_adjust_8_7.c:44` | `sensor_adjust_8_7_apply_rapid_reset` |
| 50-hour phase + slow-alarm suspension | `src/sensor_adjust/sensor_adjust.c:7,16,53` | `sensor_adjust_init/_begin/_alarms_should_be_suspended` |
| Sensor-replacement orchestration (live) | Pending — sensor-replacement RPM-zeroing field bug. See `implementation_docs/BUG_1_FIX_NOTES.md` and Phase B-3. |

#### Verification

- `host/test/algo/test_module_sensor_adjust_8_7.c::test_proc_refcurve_only_*`
- `host/test/algo/test_module_sensor_adjust_8_7.c::test_proc_refcurve_plus_extrap_adds_O_2`
- `host/test/algo/test_module_sensor_adjust_8_7.c::test_proc_refcurve_plus_reset_uses_only_accumulated`
- `host/test/algo/test_module_sensor_adjust_8_7.c::test_apply_rapid_reset_zeroes_rapid_slow`
- `host/test/algo/test_module_sensor_adjust.c::test_begin_starts_adjustment_phase`
- `host/test/algo/test_spec5_sensor_adjustment.c` (full v8.5 coverage as a regression baseline)
- `host/test/algo/test_bug_1_sensor_replacement_isolation.c` (5 tests; isolation guarantee)

---

## 6 Storage and Presentation of Data

### Specification

Three storage classes (short-term 24 h, rapid-wear floating 2 h, long-term 6 h max/min/avg ≥ 5 years), an event log, and frozen copies on alarm. Data must be in non-volatile memory and downloadable as text files. New in 8.6/8.7: hit-by-hit storage for 12 h with appendix-E format, comp-curve change snapshots in appendix-F format, frozen-copy retention rules (≥1 year, 65 h hit-by-hit always available), XML 4-part surveyor file (appendices A/B/C/D).

### 6.1 Frozen Copies

#### Specification

Made on alarm release; overlapping copies may be condensed. Retain ≥1 year. Always keep ≥65 h of hit-by-hit data available across copies.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Post-alarm extension (5 min for slow, 1 h for rapid) | `src/storage/storage_classes.c` | `storage_compute_post_alarm_extension_seconds` |
| Frozen-copy retention rotation policy | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-6 (file rotation). |

#### Verification

- `host/test/algo/test_module_storage.c::test_post_alarm_extension_is_5_minutes`

### 6.2 Data to Store for Bearing Damage Analysis

#### Specification

Hit-by-hit data of uncompensated and unfiltered signals with timestamp and rpm, last 12 h. Frozen copies extended to 1 h post-alarm. Compensation-curve change snapshot stored in appendix-F format every time the curves change.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-E hit-by-hit CSV formatter | `src/storage/hit_by_hit.c:47,69` | `hit_by_hit_format_header`, `hit_by_hit_format_line` |
| Appendix-F comp-curve snapshot formatter + filename | `src/storage/comp_curve_log.c:49,70,90` | `comp_curve_format_filename`, `comp_curve_format_header`, `comp_curve_format_line` |
| 12-h hit-by-hit ring buffer (live) | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-6. |
| SD-card file emission | Pending — Phase B-6 wiring (see `host/Makefile` `sd_bridge.c` exclusion). |

#### Verification

- `host/test/algo/test_module_hit_by_hit.c` (9 tests, spec-example match)
- `host/test/algo/test_module_comp_curve_log.c` (9 tests, spec-example match)

### 6.3 Data to Store for Debugging Purposes

#### Specification

Rapid-wear storage for every revolution of the latest 2 h, downloadable on alarm/slowdown; frozen-copy extends to alarm cease + ≥5 minutes. Short-term storage at ≥1 sample / 30 revs across the latest 24 h; same frozen-copy extension.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Storage class constants (rapid floating 2 h, short term 24 h, +5 min extension) | `src/storage/storage_classes.h`; `src/storage/storage_classes.c` | constants + `storage_compute_post_alarm_extension_seconds` |
| Live ring buffers and SD writes | Pending — Phase B-6. |

#### Verification

- `host/test/algo/test_module_storage.c::test_storage_class_constants`
- `host/test/algo/test_module_storage.c::test_post_alarm_extension_is_5_minutes`
- `host/test/algo/test_spec6_storage.c::test_short_term_*` (3 tests)
- `host/test/algo/test_spec6_storage.c::test_rapid_wear_floating_window_is_2_hours`

### 6.4 Data to Store for Wear Documentation

#### Specification

Long-term storage: 6-hour max/min/avg of filtered values ≥ 5 years back. Event log capturing alarms/slowdowns/pre-warnings, sensor replacements/adjustments, ref-curve transitions, pre-warning resets — all timestamped. Downloadable as a single XML containing four parts (appendices A/B/C/D); cylinders presented as `<cyl>.<1=fore|2=aft>` (e.g. 7.1, 7.2). Status part shows N (Normal) / W (Warning) / A (Alarm) / U (Unknown) per cylinder.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Long-term record layout | `src/storage/storage_classes.h` | `long_term_record_t` |
| Event-log enum | `src/storage/storage_classes.h` | `storage_event_type_t` |
| Surveyor file part formatters (A/B/C/D) | `src/storage/surveyor_file.c:65,94,123,141,175,193` | `surveyor_app_a_kv`, `surveyor_app_b_line`, `surveyor_app_c_header/_row`, `surveyor_app_d_header/_row` |
| Live XML emission | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-7. |

#### Verification

- `host/test/algo/test_module_storage.c::test_long_term_record_field_layout`
- `host/test/algo/test_module_storage.c::test_event_types_are_distinct`
- `host/test/algo/test_module_surveyor_file.c` (18 tests, all spec examples match verbatim)
- `host/test/algo/test_spec6_storage.c::test_event_log_has_distinct_alarm_classes`

### 6.5 User Request for Data Storage

#### Specification

Operator can request a frozen copy of the 12-h hit-by-hit, the 2-h rapid-wear, or the 24-h short-term storage at any time. Retain at least the two most recent user-requested copies.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| User-request command + retention rotation | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-5 (Modbus command) and Phase B-6 (rotation). Formatters listed under §6.2/§6.4 are ready. |

#### Verification

Pending Phase B-5/B-6.

---

## 7 Alarm Limits

### Specification

Numerical thresholds for slow-wear (mm) and rapid-wear (µm), tabulated in tables 7.1–7.7. Engine-type characteristic slope (table 7.1). Slow-wear normal/learning tables (7.2/7.3) and pre-warning level (7.4). Rapid-wear during normal running (7.5), during refining (7.6), during rough creation (7.7).

### Implementation

(See subsections.)

### Verification

(See subsections.)

### 7.1 Slow Wear Alarm Limits

#### Specification

- Table 7.1 engine-type slope (mm change 20–110% rpm): >75 cm bore = −0.35; 55–75 cm = −0.25; <55 cm = −0.15.
- Table 7.2 normal: filtered ±0.5, sensor-dev ±0.4, cyl-dev ±0.3 (alarm); filtered ±0.7, sensor-dev ±0.6 (slowdown).
- Table 7.3 learning: filtered ±0.8, sensor-dev ±0.5, cyl-dev ±0.4 (alarm); filtered ±0.9, sensor-dev ±0.5 (slowdown).
- Table 7.4 pre-warning: ±0.25 mm 6-h average.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| 8.7 slow-wear thresholds | `src/alarms/alarm_thresholds_8_7.h` | constants |
| Engine-type slope table | `src/alarms/alarm_thresholds_8_7.h`; modelled in `host/fakes/synthetic_engine.c` | constants |

#### Verification

- `host/test/algo/test_module_alarm_thresholds_8_7.c::test_slow_wear_*` (multiple)
- `host/test/algo/test_spec7_alarm_limits.c::test_slow_alarm_*`
- `host/test/algo/test_spec7_alarm_limits.c::test_engine_slope_*`
- `host/test/algo/test_spec7_alarm_limits.c::test_pre_warning_level_quarter_mm`

### 7.2 Rapid Wear Alarm Limits

#### Specification

- Table 7.5 (normal): SingleRapid 200 µm, CylRapidAve 90 µm, TwinCylRapidAve 75 µm.
- Table 7.6 (refining): 230 / 120 / 105 µm.
- Table 7.7 (rough creation): 260 / 150 / 135 µm.

#### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| 8.7 rapid-wear three tables | `src/alarms/alarm_thresholds_8_7.h` | constants |
| 8.5 baseline (preserved for fallback / regression) | `src/alarms/alarm_thresholds.h` | constants |

#### Verification

- `host/test/algo/test_module_alarm_thresholds_8_7.c::test_rapid_wear_normal_*`
- `host/test/algo/test_module_alarm_thresholds_8_7.c::test_rapid_wear_refining_*`
- `host/test/algo/test_module_alarm_thresholds_8_7.c::test_rapid_wear_rough_creation_*`
- `host/test/algo/test_spec7_alarm_limits.c::test_rapid_*` (regression vs. 8.5)

---

## 8 Interface to Alarm and Monitoring System

### Specification

Three relays (tag numbers per MDT Guidance Values):

- **Alarm relay (XS8126)**, normally closed — toggled (closed-opened-closed) on each alarm-level escalation. Toggle period default 1 s, range 0.1–5 s, adjustable.
- **Slowdown relay (XS8127)**, normally open with terminals for supervision resistor.
- **System Fail relay (XS8129)**, normally closed — fires on power fail / watchdog fail / monitoring unavailable.

For integrated systems, the same functions must be proven in software even if physical terminals are not exposed.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Relay state machine (alarm / slowdown / system-fail) | `src/system/alarm_relays_8_7.c:16-24` | `alarm_relays_set_alarm/_set_slowdown/_set_system_fail` etc. |
| Toggle period validation (0.1–5 s, default 1 s) | `src/system/alarm_relays_8_7.c` | `alarm_relays_set_toggle_period` |
| Live relay drive (digital outputs) | Pending — see `implementation_docs/INTEGRATION_LAYER_DESIGN.md` Phase B-4 (alarm dispatch wired to legacy `digout.c`). |

### Verification

- `host/test/algo/test_module_alarm_relays_8_7.c` (7 tests, including toggle period range)

---

## Appendix A Engine Info Part

### Specification

Plain-text key/value file containing ship name, IMO number, class register no., component, engine licenser/maker/type/serial, CM-system identifiers, period of trend data (from/to dates), engine operating hours (from/to). Format example reproduced verbatim in the spec.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-A key/value formatter | `src/storage/surveyor_file.c:65` | `surveyor_app_a_kv` |
| Live emission to SD card | Pending — Phase B-7. |

### Verification

- `host/test/algo/test_module_surveyor_file.c::test_app_a_*` (all spec example fields verbatim)

---

## Appendix B Log Part

### Specification

Time-stamped event log entries: speed-compensation start/finish, sensor-level events (unknown / re-adjustment alarm / warning / alarm / slowdown release), compartment events, cylinder events, system events (e.g. alarm-limit changes by Administrator). Format example reproduced verbatim in the spec.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-B log-line formatter | `src/storage/surveyor_file.c:94` | `surveyor_app_b_line` |
| Event-log type enum | `src/storage/storage_classes.h` | `storage_event_type_t` |
| Live log capture | Pending — Phase B-6. |

### Verification

- `host/test/algo/test_module_surveyor_file.c::test_app_b_*`
- `host/test/algo/test_module_storage.c::test_event_types_are_distinct`

---

## Appendix C Filtered Sensor Value Trend Part

### Specification

Per-sensor 6-hour-average filtered-value trend, columns: `Date and Time [YYYY-MM-DD hh:mm:ss]; Engine operating hours [Oh]; Distance [mm]`. Format example reproduced verbatim.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-C header and row formatters | `src/storage/surveyor_file.c:123,141` | `surveyor_app_c_header`, `surveyor_app_c_row` |
| Long-term record source | `src/storage/storage_classes.h` | `long_term_record_t` |
| Live emission | Pending — Phase B-7. |

### Verification

- `host/test/algo/test_module_surveyor_file.c::test_app_c_*`

---

## Appendix D Status File

### Specification

Per-cylinder summary in N (Normal) / W (Warning, pre-warning detected) / A (Alarm) / U (Unknown, lost reference). Top of file is a date/time header and legend, then `Cylinder No. NN  X` lines. The system must allow resetting status to N (re-stamping the file).

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-D header and per-cylinder row formatters | `src/storage/surveyor_file.c:175,193` | `surveyor_app_d_header`, `surveyor_app_d_row` |
| Reset-to-N command | Pending — Phase B-5 (Modbus command) and Phase B-7 (file rewrite). |

### Verification

- `host/test/algo/test_module_surveyor_file.c::test_app_d_*`

---

## Appendix E Hit-by-hit Data

### Specification

Per-revolution uncompensated/unfiltered signal data, with timestamp, engine rpm, and engine direction (1 = forward, −1 = reverse, 0 = invalid). One semicolon-delimited line per revolution; columns include `Date; Time; Speed[rpm]; Direction; S1.1[µm]; S1.2[µm]; ... S12.1[µm]; S12.2[µm];`. Header line listed verbatim. Provider may add extra columns at line end.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-E header and line formatter | `src/storage/hit_by_hit.c:47,69` | `hit_by_hit_format_header`, `hit_by_hit_format_line` |
| 12-h ring buffer + SD emission | Pending — Phase B-6. |

### Verification

- `host/test/algo/test_module_hit_by_hit.c` (9 tests, spec-example match for both 5-cyl and 12-cyl shapes)

---

## Appendix F Storage of Compensation Curves

### Specification

Whenever speed-compensation curves change, write a separate timestamped file. Filename example `compensation_curves_20160830_224252.txt`. Columns: `Start_speed_interval[rpm]; End_Speed_interval[rpm]; S1.1[µm]; ...`. Decimal comma in the worked example. Per-band rows covering 0–110% nominal.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Appendix-F filename and CSV formatters | `src/storage/comp_curve_log.c:49,70,90` | `comp_curve_format_filename`, `comp_curve_format_header`, `comp_curve_format_line` |
| Trigger on every comp-curve update | Pending — Phase B-3 (calibration hooks) and Phase B-6 (file emission). |

### Verification

- `host/test/algo/test_module_comp_curve_log.c` (9 tests, spec-example match including decimal-comma rendering)

---

# Vendor Extensions (NOT MAN BWM specification requirements)

> **Important**: Everything below this point is an AMOT-specific addition not described in MAN spec 3091686-8 (any revision). It does not replace any MAN-mandated metric. Classification surveyors should treat it as vendor-specific monitoring beyond the MAN minimum. Spec compliance for §1–§8 and Appendices A–F above is unaffected.

## MB-Sum (Main Bearing Neighbour Sum)

### Specification (vendor)

A fourth rapid-wear metric, structured exactly like CylRapidAve but summing across the cylinder boundary, targeting the **main bearings between cylinders** (which the spec's three metrics do not specifically cover):

```
MBSum_n = abs( RapidWear_AftCyl,n + RapidWear_FoCyl,n+1 ),  for n = 0..N-2
```

Disabled at the configurable bank-split position (`ccsplit`) on dual-bank engines. Position invalid if either sensor is failed/disabled. Same dynamic-alarm pipeline (k, β) as the spec metrics.

For full design rationale, worked examples, and field history, see `implementation_docs/vendor_extensions/mb_sum.md`.

### Implementation

| Concern | File:line | Symbol |
|---|---|---|
| Combine MB-Sum value | `src/vendor/mb_sum.c:8` | `mb_sum_combine` |
| Position validity (per-pair bitmask) | `src/vendor/mb_sum.c:16` | `mb_sum_position_is_valid` |
| Number of MB positions = N-1 | `src/vendor/mb_sum.h` | `mb_sum_num_positions` |
| `ccsplit` disables position | `src/vendor/mb_sum.c` | per-position predicate |
| Modbus exposure (legacy register 4624) | Pending — Phase B-5 bridge in `src/integration/man_legacy_bridge.c`. |

### Verification

- `host/test/algo/test_module_mb_sum.c` (10 tests including correlated-wear sums and `ccsplit` disable)
- `host/test/algo/test_vendor_mb_sum.c` (9 tests, including arithmetic match with TwinCylRapid shape, position-invalid-when-failed, ccsplit-disables-here, dynamic-alarm-pipeline parity, position count = N-1)
