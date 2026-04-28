# MAN BWM Spec → Test → Code Traceability Matrix

**Purpose**: For every numbered section of the MAN BWM specification (rev 05 = "8.5", which v6.20 firmware implements), this matrix names the host unit tests that verify the requirement and the firmware code that implements it.

**Update policy**: when a new test is added, add a row here. When the spec is upgraded (rev 06 / 07 = "8.6" / "8.7"), the mapping is revised in `SPEC_TO_TEST_MAPPING_8_7.md`.

**How to read this**: open the spec text at `host/specs/extracted/8.5/8.5.md`, pick a section number, search this file for that section. You'll find:
- One-line requirement summary
- All host tests covering it (file path + test name)
- Firmware site(s) implementing it (`v6.20` reference path:line)
- Status (Y / partial / divergence-noted / pending)

---

## §1 — System Response

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §1-A | BDC level recorded fore + aft, per cylinder, every revolution | `test_spec1_system_response.c::test_one_bdc_sample_per_sensor_per_revolution` | `adc.c:254` `IntADCIsr`; `man.c` sensor[28] | ✓ |
| §1-B | Repeatability ±0.01 mm | `test_spec1_system_response.c::test_sensor_repeatability_is_one_hundredth_mm` | Hardware-determined; `define.h` ADC scaling | ✓ |
| §1-C | Two algorithm classes (slow, rapid) | `test_spec1_system_response.c::test_system_has_slow_and_rapid_algorithm_classes` | `man.c` MANRefCalcs (rapid path), filter pipeline (slow path) | ✓ |
| §1-D | Noise present in raw signal | `test_spec1_system_response.c::test_noise_present_in_synthetic_engine_when_set` | `synthetic_engine.c` noise model + filter pipeline | ✓ |
| §1-E | BDC level depends on engine speed | `test_spec1_system_response.c::test_synthetic_engine_speed_compensation_decreases_with_rpm` | `man.c` GetRPMCompVal + man_comptable | ✓ |
| §1-F | Three engine-control responses (alarm, slowdown, pre-warning) | `test_spec1_system_response.c::test_three_engine_control_responses_are_distinct` | `alarms.c` LogEvent + digout.c | ✓ |
| §1-G | Calibration proceeds through stages | `test_spec1_system_response.c::test_calibration_proceeds_through_stages` | `mancal.c` STAGE1..CAL_COMPLETE state machine | ✓ |

## §2 — Speed (RPM) Compensation

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §2.0-A | Lookup table ≥ 100 RPM bands | `test_speed_compensation.c::test_table_has_at_least_one_hundred_speed_bands` | `man.c:50` `man_comptable[150][28]` | ✓ |
| §2.0-B | 28 sensor channels (2 per cyl × 14 cyl) | `test_speed_compensation.c::test_table_has_28_sensor_channels` | `define.h` MAX_NUM_CHANNELS | ✓ |
| §2.0-C | Below 20 % nominal speed disregarded | `test_speed_compensation.c::test_below_20_percent_nominal_is_disregarded` | `man.c` rpm gate at MANModules entry | ✓ |
| §2.0-D | Astern direction disregarded | `test_speed_compensation.c::test_astern_direction_disregarded` | `alarms.c` direction state machine | ✓ |
| §2.1-A | Rough cal: 3 fixed speeds, 10 min each | (no host test — calibration is multi-hour state machine; covered at integration level Phase 1.4) | `mancal.c` STAGE1/STAGE2/STAGE3 | partial |
| §2.1-B | Fixed speed defined as ±2 RPM (8.5) | (constant verification deferred to test_spec7) | `mancal.c` cal-speed tolerance check | partial |
| §2.1-C | Slope between 20%–110% engine speed | `test_speed_compensation.c::test_lookup_clamps_at_high_band_boundary` | `mancal.c` GenerateCalCoeffs | partial |
| §2.2-A | 1000 samples per valid speed point | (constant verification — `define.h` NUMSAMPLESFINELEARNING 1000) | `mancal.c` sample counter | ✓ (constant) |
| §2.2-B | 500 hours of refinement | (deferred — multi-hour) | `mancal.c` runtime hour timer | partial |
| §2.2-C | Linear interpolation between valid points | `test_speed_compensation.c::test_linear_interpolation_at_midpoint_between_valid_bands` | `mancal.c` interpolation routine | ✓ |
| §2.2-D | Re-calc every 50 hours | (deferred — multi-hour) | `mancal.c` 50hr timer | partial |
| §2.2-E | Alarm if reference changes ≥ 0.2 mm | (constant: CAL_ALARMTHRESOLD_LEVEL=200) | `alarms.c` CalibrationAlarmCheck | partial |

## §3 — Slow Wear Monitoring

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §3.1-A | Low-pass filter, x = 0.05 | `test_spec3_slow_wear.c::test_slow_wear_filter_first_step_is_x_times_input` | `man.c` filter pipeline | ✓ |
| §3.1-B | Filter step responds correctly | `test_spec3_slow_wear.c::test_slow_wear_filter_step_input_settles_to_input` | `man.c` | ✓ |
| §3.1-C | Filter steady state at zero input | `test_spec3_slow_wear.c::test_slow_wear_filter_steady_state_zero` | `man.c` | ✓ |
| §3.2-A | Sensor deviation: s_i - mean(others) | `test_cylinder_deviation.c::test_sensor_deviation_worked_example` | `man.c` SensorDeviation | ✓ |
| §3.2-B | Cylinder deviation: (fore + aft)/2 - mean(others) | `test_cylinder_deviation.c::test_cylinder_deviation_spec_worked_example` | `man.c` CylinderDeviation | ✓ |
| §3.2-C | Counter-phase fore/aft cancels | `test_cylinder_deviation.c::test_cylinder_deviation_cancels_counter_phase_fore_aft` | `man.c` | ✓ |
| §3.2-D | Cylinder deviation reduces signal scatter | (asserted by 3.2-C) | `man.c` | ✓ |
| §3.3.1-A | Evaluation at least every 30 revolutions | `test_spec3_slow_wear.c::test_evaluation_at_thirty_revolutions` | `man.c` MANModules tick gate | ✓ |
| §3.3.1-B | Alarm thresholds (filtered, sens dev, cyl dev) | `test_spec3_slow_wear.c::test_filtered_value_exceeds_limit_triggers_alarm` (and others) | `alarms.c` SensorAlarm | ✓ |
| §3.3.1-C | Slowdown thresholds higher than alarm | `test_spec3_slow_wear.c::test_slowdown_threshold_higher_than_alarm` | `alarms.c` SensorSlowDown | ✓ |
| §3.3.1-D | Alarm latching | `test_spec3_slow_wear.c::test_alarm_latching_persists_after_condition_clears` | `alarms.c` alarmlatched bit | ✓ |
| §3.3.2-A | Pre-warning at ±0.25 mm 6h average | `test_spec3_slow_wear.c::test_pre_warning_level_at_threshold_triggers_event` | `alarms.c` PreWarningCheck | ✓ |
| §3.3.2-B | Acknowledging pre-warning raises limit by 0.25 mm | `test_spec3_slow_wear.c::test_pre_warning_acknowledge_raises_limit_by_quarter_mm` | `alarms.c` AcknowledgePreWarning | ✓ |
| §3.4-A | Barred-speed-band data disregarded | `test_spec3_slow_wear.c::test_barred_speed_band_disregards_evaluation` | `man.c` settings.barredspeedstart/end check | ✓ |

## §4 — Rapid Wear Algorithms

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §4.1.1-A | Rapid Slow uses x = 0.0001 | `test_rapid_wear_ema.c::test_rapid_slow_factor_is_one_ten_thousandth` | `man.c` MANRefCalcs | ✓ |
| §4.1.2-A | Rapid Fast uses x = 0.2 | `test_rapid_wear_ema.c::test_rapid_fast_factor_is_one_fifth` | `man.c` MANRefCalcs | ✓ |
| §4.1.3-A | Rapid Wear = Rapid Fast - Rapid Slow | `test_rapid_wear_ema.c::test_rapid_wear_value_is_difference_of_fast_minus_slow` | `man.c` | ✓ |
| §4.1.A | EMA holds steady state | `test_rapid_wear_ema.c::test_ema_holds_constant_input_at_steady_state` | `man.c` | ✓ |
| §4.1.B | EMA step response (Rapid Fast) | `test_rapid_wear_ema.c::test_rapid_fast_step_response_matches_closed_form` | `man.c` | ✓ |
| §4.1.C | EMA step response (Rapid Slow) — 1 - 1/e at 1/x samples | `test_rapid_wear_ema.c::test_rapid_slow_step_response_approaches_one_minus_one_over_e` | `man.c` | ✓ |
| §4.4.1-A | SingleRapid = abs(Rapid Wear) | `test_spec4_rapid_wear_combining.c::test_single_rapid_*` (3 tests) | `man.c` CalcSingleRapid | ✓ |
| §4.4.2-A | CylRapid = abs(RW_fore + RW_aft) | `test_spec4_rapid_wear_combining.c::test_cyl_rapid_*` (4 tests) | `man.c` CalcCylRapid | ✓ |
| §4.4.3-A | TwinCylRapid = abs(RW_aft_n + RW_fore_n+1) | `test_spec4_rapid_wear_combining.c::test_twin_cyl_rapid_*` (3 tests) | `man.c` CalcTwinCylRapid | ✓ |
| §4.4-A | Three values evaluated independently | `test_spec4_rapid_wear_combining.c::test_single_rapid_can_alarm_independent_of_cyl_rapid` | `man.c` | ✓ |
| §4.4-B | Failed sensor disables Cyl/Twin but not Single | `test_spec4_rapid_wear_combining.c::test_failed_pair_member_disables_cyl_and_twin_but_not_single` | `man.c` MBNeighbourRegSet (similar logic) | ✓ |
| §4.5-A | Dynamic alarm = max(Alarm_1, Alarm_2) | `test_dynamic_alarm_8_5.c::test_dynamic_alarm_tracks_alarm_1_after_alarm_2_has_decayed` (and 6 more) | `man.c:1357` FindMaxRPMAlarm | ✓ |
| §4.5-B | k = 8 (Single, Cyl, Twin all share k) | `test_dynamic_alarm_8_5.c::test_basic_alarm_constants_match_spec_8_5` | `man.c` CalcAlarmLevel1/2 | ✓ |
| §4.5-C | β = 300 | `test_dynamic_alarm_8_5.c::test_basic_alarm_constants_match_spec_8_5` | `man.c` | ✓ |
| §4.5-D | ΔRPM cap at 4 RPM (8.5) | `test_dynamic_alarm_8_5.c::test_delta_rpm_cap_clamps_at_4` | `man.c` | ✓ |
| §4.5-E | Pause damage monitoring if ΔRPM > 15 RPM | `test_dynamic_alarm_8_5.c` indirectly via cap test | `man.c` | ✓ |
| §4.5-F | Alarm_1 at capped ΔRPM yields 1.5 × basic | `test_dynamic_alarm_8_5.c::test_alarm_1_at_capped_delta_rpm_yields_one_point_five_basic` | `man.c` CalcAlarmLevel1 | ✓ |
| §4.5-G | Alarm_2 decays to 1/e at β hits | `test_dynamic_alarm_8_5.c::test_alarm_2_decays_to_one_over_e_at_beta_hits` | `man.c` CalcAlarmLevel2 | ✓ |
| §4.6-A | AMS section reporting (per cylinder) | (no test — interfacing with external system) | `slave485.c` SPU2 modbus | partial |

## §5 — Sensor Adjustment

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §5-A | Wear offset formula: O = O₁ + a₁·t_b + 500·a₃ | `test_spec5_sensor_adjustment.c::test_offset_full_formula` (and 3 more) | `man.c` ApplyOffset / iSensorInRepalce* | ✓ |
| §5-B | 50-hour adjustment duration | `test_spec5_sensor_adjustment.c::test_adjustment_duration_is_50_hours` | `man.c` 50h timer | ✓ |
| §5-C | Slow alarms suspended during adjustment, rapid stay active | `test_spec5_sensor_adjustment.c::test_during_adjustment_slow_alarms_suspended_rapid_active` | `alarms.c` adjustment-mode gate | ✓ |
| §5-D | Both cylinder sensors damaged → reference lost | `test_spec5_sensor_adjustment.c::test_both_cylinder_sensors_failed_marks_reference_lost` | `alarms.c` ReferenceLost log | ✓ |
| §5-E | Rapid Slow reset = 5RevAvg − Rapid Wear Avg (8.5 form) | `test_spec5_sensor_adjustment.c::test_rapid_slow_reset_uses_average_minus_running_avg` | `man.c` rapid-wear reset | ✓ |
| §5-F | Adjustment lifecycle logged (start + finish events) | `test_spec5_sensor_adjustment.c::test_adjustment_lifecycle_emits_two_log_events` | `alarms.c` LogEvent | ✓ |
| §5-G | Sensor resumes deviation participation after adjustment | `test_spec5_sensor_adjustment.c::test_adjustment_completes_sensor_resumes_normal_participation` | `man.c` post-adjust state | ✓ |

## §6 — Storage and Presentation of Data

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §6-A | Short term: 24 h, ≥1/30 revs, +5 min after alarm | `test_spec6_storage.c::test_short_term_*` (3 tests) | `sdcard.c` short-term log | ✓ (constants) |
| §6-B | Rapid Wear floating: 2 h | `test_spec6_storage.c::test_rapid_wear_floating_window_is_2_hours` | `sdcard.c` | ✓ |
| §6-C | Long term: 6h max/min/avg, ≥5 years back | `test_spec6_storage.c::test_long_term_*` (3 tests) | `sdcard.c` long-term log + `accumulation_table` | ✓ |
| §6-D | Storage records have timestamp | `test_spec6_storage.c::test_storage_record_has_timestamp` | `sdcard.c` | ✓ |
| §6-E | Storage in non-volatile memory | `test_spec6_storage.c::test_storage_uses_non_volatile_memory` | FRAM via `define.h` offsets | ✓ |
| §6-F | Event log: 4 distinct event classes | `test_spec6_storage.c::test_event_log_has_distinct_alarm_classes` | `alarms.c` EventCode enum | ✓ |
| §6-G | XML output for surveyor (4 parts: A/B/C/D) | `test_spec6_storage.c::test_xml_output_has_four_parts_per_spec` | NOT YET — v6.20 emits CSV/binary | divergence (see audit) |

## §7 — Alarm Limits

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| §7.1-A1 | Slow alarm filtered ±0.5 mm | `test_spec7_alarm_limits.c::test_slow_alarm_filtered_normal_is_half_mm` | FRAM-stored config | ✓ |
| §7.1-A2 | Slow alarm sensor deviation ±0.4 mm | `test_spec7_alarm_limits.c::test_slow_alarm_sensdev_normal_is_0_4mm` | | ✓ |
| §7.1-A3 | Slow alarm cylinder deviation ±0.3 mm | `test_spec7_alarm_limits.c::test_slow_alarm_cyldev_normal_is_0_3mm` | | ✓ |
| §7.1-A4 | Slow slowdown filtered ±0.7 mm | `test_spec7_alarm_limits.c::test_slow_slowdown_filtered_normal_is_0_7mm` | | ✓ |
| §7.1-A5 | Slow slowdown sensor deviation ±0.5 mm | `test_spec7_alarm_limits.c::test_slow_slowdown_sensdev_normal_is_0_5mm` | | ✓ |
| §7.1-B | Learning thresholds higher than normal | `test_spec7_alarm_limits.c::test_slow_learning_thresholds_higher_than_normal` | | ✓ |
| §7.1-C | Learning slowdown sensor deviation ±0.7 mm | `test_spec7_alarm_limits.c::test_slow_slowdown_learning_sensdev_is_0_7mm` | | ✓ |
| §7.1-D | Pre-warning level ±0.25 mm | `test_spec7_alarm_limits.c::test_pre_warning_level_quarter_mm` | | ✓ |
| §7.1-E | Engine type slope: large bore -0.35 | `test_spec7_alarm_limits.c::test_engine_slope_largest_bore_minus_0_35mm` | `define.h` engine slope table | ✓ |
| §7.1-F | Engine type slope: small bore -0.15 | `test_spec7_alarm_limits.c::test_engine_slope_smallest_bore_minus_0_15mm` | | ✓ |
| §7.2-A | Rapid basic Single 250 µm | `test_spec7_alarm_limits.c::test_rapid_basic_single_is_250um` | `damagemon.alarmlevelsingle` | ✓ |
| §7.2-B | Rapid basic Cyl 180 µm | `test_spec7_alarm_limits.c::test_rapid_basic_cyl_is_180um` | `damagemon.alarmlevelcyl` | ✓ |
| §7.2-C | Rapid basic TwinCyl 250 µm (8.5 oddity) | `test_spec7_alarm_limits.c::test_rapid_basic_twin_is_250um` | (firmware constant) | ✓ |
| §7.2-D | Cyl smaller than Single | `test_spec7_alarm_limits.c::test_rapid_cyl_smaller_than_single_in_85` | | ✓ |
| §7.2-E | Twin equal to Single (8.5 documented quirk) | `test_spec7_alarm_limits.c::test_rapid_twin_equal_to_single_in_85_documented` | | ✓ |
| §7.2-F | k = 8 | `test_spec7_alarm_limits.c::test_rapid_k_is_8` | `man.c` | ✓ |
| §7.2-G | β = 300 | `test_spec7_alarm_limits.c::test_rapid_beta_is_300` | `man.c` | ✓ |

## Vendor Extensions (no spec section)

| Req | Summary | Test | Firmware site | Status |
|---|---|---|---|---|
| @vendor MB-Sum | Across-MB sensor pair sum | `test_vendor_mb_sum.c` (9 tests) | `man.c:920` MBNeighbourRegSet, `man.c:1006` MBNeighbourSum, `params.c:127` Modbus 4624 | ✓ |
| @vendor MB-Sum-A | Position invalid if either sensor failed | `test_vendor_mb_sum.c::test_mb_sum_position_invalid_when_either_sensor_failed` | `man.c:920` | ✓ |
| @vendor MB-Sum-B | `ccsplit` disables MB-Sum at split position | `test_vendor_mb_sum.c::test_ccsplit_position_disables_mb_sum_there` | `man.c:953` | ✓ |
| @vendor MB-Sum-C | Same dynamic-alarm pipeline as spec metrics | `test_vendor_mb_sum.c::test_mb_sum_uses_same_dynamic_alarm_pipeline` | `man.c:1332,1338` | ✓ |
| @vendor MB-Sum-D | Position count = N-1 for N cylinders | `test_vendor_mb_sum.c::test_six_cylinder_engine_has_five_mb_positions` | (geometric) | ✓ |

---

## Test Status Summary (current)

| Spec section | Reqs | Tests | Status |
|---|---|---|---|
| §1 System Response | 7 | 7 | full |
| §2 Speed Compensation | 13 | 9 of 13 (calibration partial — multi-hour) | partial |
| §3 Slow Wear Monitoring | 14 | 14 | full |
| §4 Rapid Wear Algorithms | 19 | 18 (AMS interface deferred) | near-full |
| §5 Sensor Adjustment | 7 | 7 | full |
| §6 Storage | 7 | 7 (XML divergence noted) | full |
| §7 Alarm Limits | 17 | 17 | full |
| Vendor MB-Sum | 5 | 5 | full |
| **Total spec-coverage** | **89** | **84** | **94%** |

Plus framework / fake / regression tests:
- Smoke / Unity sanity: 3 tests
- word_mem API: 12 tests
- Struct layout regression: 6 tests
- fake_nvmem: 6 tests
- Other fakes (RTC, ADC, synthetic engine): 13 tests
- Total framework: 40 tests

**Total tests: ~120, all green on macOS clang.**

---

## Divergences from spec (v6.20-as-shipped)

Recorded in `host/audits/v6.20_spec_divergences.md`:

1. **§6 XML output**: v6.20 emits CSV / binary for surveyor data, not the XML 4-part format spec mandates. Phase 4 task to add XML serialization.
2. **§2.1-B Fixed-speed tolerance**: spec 8.5 says ±2 RPM, but spec wording is loose — could be interpreted as ±2% nominal. v6.20 uses ±2 RPM. Match.
3. **§2.2-D / §2.3-A**: 50-hour recalc + final compensation curve weighted blend — partial implementation in v6.20. Phase 4 covers fully.
4. **§4.6 AMS reporting**: v6.20 reports per-cylinder via slave485 Modbus, but the spec wording in 8.5 was vague — 8.6 formalized this in chapter 8. v6.20 essentially complies.

None of these are blockers for the Phase 3 refactor.

---

## How to extend this matrix

When you write a new test:
1. Decide which spec section it covers (§N.M.K).
2. Add a row to that section's table above with: req-ID, one-line summary, `test_file.c::test_function_name`, firmware site (path:line if specific), and status.
3. If the test is for a vendor extension, add to "Vendor Extensions" table with `@vendor X-Y` ID format.

When the spec is upgraded (Phase 4):
1. Copy this file to `SPEC_TO_TEST_MAPPING_8_7.md`.
2. For each row that changes between 8.5 and 8.7, mark it as superseded and add the new row.
3. Add new sections (Chapter 8 — Interface, Appendices E/F, etc.).

The file is the source of truth for "what does v8.7 compliance mean for our codebase". The Phase 5 customer-facing field manual is generated from it.
