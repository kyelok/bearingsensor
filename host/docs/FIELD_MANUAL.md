# BWM SPU Firmware — Engineer Field Manual

> **Audience**: engineers maintaining or extending the AMOT XTSW+ Bearing Wear Monitoring SPU firmware.
> **Spec basis**: MAN Diesel & Turbo document 3091686-8, revision 07 ("8.7"), dated 2018-09-18.
> **Generated**: 2026-04-27.

---

## How to use this document

This file is the single source of truth for "where in the code is each spec requirement implemented, and which test verifies it." Every numbered section of the MAN BWM specification has a chapter below. Each chapter contains:

- The spec wording (paraphrased; see `host/specs/extracted/8.7/8.7.md` for verbatim text).
- The implementation file(s) under `src/`.
- The test file(s) under `host/test/algo/` that verify it.
- Notes on the v8.5 → v8.7 evolution.

When fixing a bug or extending a feature, start here: find the spec section the work touches, then follow the links to the code and tests. Tests are the contract — a change is correct iff all relevant tests still pass.

---

## Quick reference

```
Repo layout:
  /                                   project root
  ├── 3091686-8.{5,6,7}*.pdf          original MAN spec PDFs (image-only)
  ├── SourceCode1/SPU_Firmware/...    legacy v6.20 firmware (UNTOUCHED reference)
  ├── src/                            REFACTORED firmware modules (v8.7 target)
  │   ├── core/                       width-stable types, engine constants
  │   ├── speed_comp/                 RPM compensation lookup + learning
  │   ├── slow_wear/                  filter, deviations, classification, pre-warning
  │   ├── rapid_wear/                 EMAs, combining, dynamic alarm
  │   │   ├── rapid_wear.h            (8.5 algorithm)
  │   │   └── rapid_wear_8_7.h        (8.7 algorithm)
  │   ├── sensor_adjust/              50-hour offset re-adjustment + 3 procedures
  │   ├── storage/                    short/rapid/long term + event log
  │   ├── alarms/                     thresholds (per spec) + latching
  │   ├── system/                     chapter 8 alarm relays (8.7)
  │   └── vendor/                     MB-Sum (vendor extension)
  └── host/
      ├── platform/                   TI/host shims, word_mem.h, byte_stream.h
      ├── fakes/                      realistic hardware emulation
      ├── third_party/unity/          Unity test framework (vendored)
      ├── test/algo/                  unit tests
      ├── audits/                     CHAR_BIT audit, divergence notes
      ├── docs/                       this file + others (vendor extension docs etc.)
      └── specs/                      OCR'd spec text + spec-vs-code matrix

Test workflow:
  cd host && make            # build + run all 26 test binaries
```

---

## Chapter 1 — System Response

### Spec summary
Sensors at every cylinder (fore + aft) report BDC (Bottom Dead Centre) level once per revolution. Repeatability ±0.01 mm. The system runs two algorithm classes (slow-wear, rapid-wear) and outputs three control responses (alarm, slowdown, pre-warning).

### Where it lives
| Concern | Code | Test |
|---|---|---|
| Per-revolution sample acquisition | `src/speed_comp/speed_comp.c` (apply path); ADC read in legacy `adc.c` | `test_spec1_system_response.c::test_one_bdc_sample_per_sensor_per_revolution` |
| Repeatability | hardware-determined; codified in `synthetic_engine.c` | `test_spec1_system_response.c::test_sensor_repeatability_is_one_hundredth_mm` |
| Two algorithm classes | `src/slow_wear/`, `src/rapid_wear/` | `test_spec1_system_response.c::test_system_has_slow_and_rapid_algorithm_classes` |
| Three engine-control responses | `src/alarms/alarm_thresholds.h` enums; `src/system/alarm_relays_8_7.{h,c}` | `test_spec1_system_response.c::test_three_engine_control_responses_are_distinct`; `test_module_alarm_relays_8_7.c` |

### v8.5 → v8.7 changes
None substantive. Chapter 1 is structural overview.

---

## Chapter 2 — Speed (RPM) Compensation

### Spec summary
A per-channel reference value lookup table indexed by RPM band (≥100 bands across 20%–110% of nominal speed). Three-stage learning:
1. **Rough cal** (§2.1): 3 fixed speeds, 10 min each.
2. **Refining** (§2.2): 500 hours, 1000 samples per band, recalc every 50h.
3. **Final curve** (§2.3): weighted blend for under-sampled bands.

### Where it lives
| Concern | Code | Test |
|---|---|---|
| Lookup table layout (150 × 28) | `src/core/types.h` `BWM_SPEED_BANDS`; `src/speed_comp/speed_comp.h` `speed_comp_table_t` | `test_module_speed_comp.c::test_init_zeros_table` |
| Below 20% nominal disregarded | `src/speed_comp/speed_comp.c` `speed_comp_rpm_to_band` returns -1 | `test_module_speed_comp.c::test_rpm_below_minimum_returns_negative_one` |
| Sample recording | `src/speed_comp/speed_comp.c` `speed_comp_record_fine_sample` | `test_module_speed_comp.c::test_record_and_lookup_round_trip` |
| Linear interpolation between bands | `src/speed_comp/speed_comp.c` `speed_comp_interpolate` | `test_module_speed_comp.c::test_interpolate_*` |
| Apply compensation to a sample | `src/speed_comp/speed_comp.c` `speed_comp_apply` | `test_module_speed_comp.c::test_apply_subtracts_reference` |

### v8.5 → v8.7 changes
- §2.2-A: Sample stability check (discard if ΔRPM > 5% nominal between consecutive samples) — NEW in 8.6, NOT YET IMPLEMENTED in `src/`. Phase 4 follow-up task.
- §2.3-A: Final compensation curve weighted blend formula `REF = (Nhits·V_avg + (1000-Nhits)·V_interp)/1000` for under-sampled bands — NEW in 8.6, NOT YET IMPLEMENTED. Phase 4 follow-up.

These are the only Chapter 2 deltas across versions.

---

## Chapter 3 — Slow Wear Monitoring

### Spec summary
Compares present BDC level to learning-period reference. Four-step pipeline:
1. Speed compensate (chapter 2).
2. Low-pass filter, x = 0.05.
3. Compute sensor and cylinder deviations.
4. Compare against alarm/slowdown thresholds + 6h-average pre-warning.

### Where it lives
| Concern | Code | Test |
|---|---|---|
| Low-pass filter (x=0.05) | `src/slow_wear/slow_wear.c` `slow_wear_apply_sample` | `test_module_slow_wear.c::test_filter_first_step_is_x_times_input` |
| Sensor deviation | `slow_wear.c` `slow_wear_sensor_deviation` | `test_module_slow_wear.c::test_sensor_deviation_*` |
| Cylinder deviation | `slow_wear.c` `slow_wear_cylinder_deviation` | `test_module_slow_wear.c::test_cylinder_deviation_*` |
| Failed sensor exclusion | `slow_wear_*_deviation` `is_valid` parameter | `test_module_slow_wear.c::test_cylinder_deviation_excludes_failed_sensor` |
| Alarm/slowdown classification | `slow_wear.c` `slow_wear_classify` | `test_module_slow_wear.c::test_classify_*` |
| Pre-warning check (6h avg) | `slow_wear.c` `slow_wear_pre_warning_check` | `test_module_slow_wear.c::test_pre_warning_check` |
| Pre-warning acknowledgement raises limit by 0.25mm | `slow_wear.c` `slow_wear_acknowledge_pre_warning` | `test_module_slow_wear.c::test_acknowledge_pre_warning_raises_limit_by_25` |
| Alarm latching | `src/alarms/alarm_thresholds.{h,c}` | `test_module_alarm_thresholds.c::test_latch_*` |

### v8.5 → v8.7 changes
None substantive.

---

## Chapter 4 — Rapid Wear Algorithms

### Spec summary
Detects fast-developing failures (filter breakage, oil starvation) by comparing fast and slow exponential moving averages. The 8.5 algorithm uses simple `abs(rapid_wear)` and a max-of-two-formulas dynamic alarm. The 8.6/8.7 algorithm adds a deviation calculation, switches to `min(|RWS|, |dRS|)` for combining, and simplifies the dynamic alarm to a single formula.

### Where it lives — 8.5 algorithm (current shipping)
| Concern | Code | Test |
|---|---|---|
| Per-sensor EMAs | `src/rapid_wear/rapid_wear.c` `rapid_wear_apply_sample` | `test_module_rapid_wear.c::test_apply_sample_first_step_matches_spec` |
| Rapid Slow x=0.0001, Rapid Fast x=0.2 | `rapid_wear.h` constants | `test_rapid_wear_ema.c::test_rapid_*_factor_*` |
| SingleRapid = abs(RW) | `rapid_wear.c` `rapid_wear_combine_single` | `test_module_rapid_wear.c::test_combine_single_is_abs` |
| CylRapid = abs(RW_F + RW_A) | `rapid_wear.c` `rapid_wear_combine_cyl` | `test_module_rapid_wear.c::test_combine_cyl_*` |
| TwinCyl = abs(RW_aft_n + RW_fore_n+1) | `rapid_wear.c` `rapid_wear_combine_twin_cyl` | `test_module_rapid_wear.c::test_combine_twin_cyl_*` |
| Dynamic alarm = max(A1, A2), k=8, β=300 | `rapid_wear.c` `rapid_wear_dynamic_alarm_8_5` | `test_module_rapid_wear.c::test_dynamic_alarm_picks_max`; `test_dynamic_alarm_8_5.c` (7 tests) |
| ΔRPM cap = 4 RPM, pause if > 15 RPM | `rapid_wear.c` constants | `test_dynamic_alarm_8_5.c::test_delta_rpm_cap_*` |

### Where it lives — 8.7 algorithm (target)
| Concern | Code | Test |
|---|---|---|
| Reset uses rapid_slow = 0 | `src/rapid_wear/rapid_wear_8_7.c` `rapid_wear_reset_8_7` | `test_module_rapid_wear_8_7.c::test_reset_8_7_zeroes_rapid_slow` |
| Sensor / cyl / twin deviations | `rapid_wear_8_7.c` `rapid_wear_deviation_*_8_7` | `test_module_rapid_wear_8_7.c::test_deviation_*` |
| Single = min(\|RWS\|, \|dRS\|) | `rapid_wear_8_7.c` `rapid_wear_single_8_7` | `test_module_rapid_wear_8_7.c::test_single_8_7_min_of_abs` |
| Cyl/Twin Ave = min variants | `rapid_wear_8_7.c` `rapid_wear_cyl_ave_8_7`, `rapid_wear_twin_ave_8_7` | `test_module_rapid_wear_8_7.c::test_cyl_ave_*`, `test_twin_ave_*` |
| RWT = 4-sensor average | `rapid_wear_8_7.c` `rapid_wear_rwt_8_7` | `test_module_rapid_wear_8_7.c::test_rwt_8_7_is_four_sensor_average` |
| Dynamic alarm simple formula k=16 | `rapid_wear_8_7.c` `rapid_wear_dynamic_alarm_8_7` | `test_module_rapid_wear_8_7.c::test_dynamic_alarm_8_7_*` |
| 16-25% floor; pause above 25% | `rapid_wear_8_7.c` constants | `test_module_rapid_wear_8_7.c::test_dynamic_alarm_8_7_clamps_in_floor_range`; `test_should_pause_8_7_returns_correctly` |
| **ΔRPM tracker (RPM_low / RPM_high EMAs)** | `src/rapid_wear/delta_rpm_tracker.c` (NEW) | `test_module_delta_rpm_tracker.c` (8 tests) |

### v8.5 → v8.7 changes
This is the most-changed chapter. See `host/specs/README.md` for the full delta map. The `src/rapid_wear/` module deliberately keeps both the 8.5 and 8.7 implementations side-by-side; the active algorithm is selected at the system-orchestration layer (currently to be wired in Phase 4).

---

## Chapter 5 — Sensor Failure / Adjustment

### Spec summary
**8.5**: single 50-hour adjustment procedure that combines offset re-adjustment with cylinder-neighbour wear extrapolation. Formula: `O = O₁ + a₁·t_b + 500·a₃`.

**8.6/8.7**: split into 5.1 (failed-sensor deviation correction) + 5.2 with three sub-procedures (5.2.1, 5.2.2, 5.2.3) + 5.2.4 further actions. Rapid-wear reset on adjust changed: `rapid_slow = 0` in 8.7.

### Where it lives
| Concern | Code | Test |
|---|---|---|
| 8.5 single procedure with O = O₁ + a₁·t_b + 500·a₃ | `src/sensor_adjust/sensor_adjust.{h,c}` `sensor_adjust_compute_offset_8_5` | `test_spec5_sensor_adjustment.c::test_offset_full_formula`; `test_module_sensor_adjust.c::test_offset_formula_8_5_full` |
| 8.7 §5.2.1 refcurve only | `src/sensor_adjust/sensor_adjust_8_7.c` `sensor_adjust_8_7_refcurve_only` | `test_module_sensor_adjust_8_7.c::test_proc_refcurve_only_*` |
| 8.7 §5.2.2 refcurve + extrap (adds O₂ from neighbour) | `sensor_adjust_8_7.c` `sensor_adjust_8_7_refcurve_plus_extrap` | `test_module_sensor_adjust_8_7.c::test_proc_refcurve_plus_extrap_adds_O_2` |
| 8.7 §5.2.3 refcurve + reset (no historical) | `sensor_adjust_8_7.c` `sensor_adjust_8_7_refcurve_plus_reset` | `test_module_sensor_adjust_8_7.c::test_proc_refcurve_plus_reset_uses_only_accumulated` |
| 8.7 §5.2.4 rapid reset (rapid_slow = 0) | `sensor_adjust_8_7.c` `sensor_adjust_8_7_apply_rapid_reset` | `test_module_sensor_adjust_8_7.c::test_apply_rapid_reset_zeroes_rapid_slow` |
| Failed-sensor deviation exclusion (§5.1) | `src/slow_wear/slow_wear.c` `is_valid` parameter | `test_module_slow_wear.c::test_cylinder_deviation_excludes_failed_sensor` |
| Slow alarms suspended during adjustment | `src/sensor_adjust/sensor_adjust.c` `sensor_adjust_alarms_should_be_suspended` | `test_module_sensor_adjust.c::test_begin_starts_adjustment_phase` |

### v8.5 → v8.7 changes
- Single procedure → three procedures.
- Rapid reset formula changed twice (8.5: `5RevAvg - RW_avg` → 8.6: `5RevAvg - RW` → 8.7: `0`).

---

## Chapter 6 — Storage and Presentation of Data

### Spec summary
Three storage classes:
- **Short term** (24h, ≥1/30 revs, +5min after alarm)
- **Rapid Wear floating** (2h)
- **Long term** (6h max/min/avg, ≥5 years back)

Plus an event log (alarm/slowdown/pre-warning, sensor replacement/adjust, ref change, pre-warning reset).

**8.6/8.7 add**:
- Hit-by-hit data of uncompensated signals (12h, Appendix E format)
- Compensation-curve change log (Appendix F format)
- Frozen-copy retention rules (≥1 year, 65h hit-by-hit always available)
- XML 4-part output for class surveyor presentation

### Where it lives
| Concern | Code | Test |
|---|---|---|
| Storage class constants | `src/storage/storage_classes.h` | `test_module_storage.c::test_storage_class_constants` |
| Long-term record layout | `src/storage/storage_classes.h` `long_term_record_t` | `test_module_storage.c::test_long_term_record_field_layout` |
| Event log enum | `src/storage/storage_classes.h` `storage_event_type_t` | `test_module_storage.c::test_event_types_are_distinct` |
| Post-alarm extension (5 min) | `src/storage/storage_classes.c` `storage_compute_post_alarm_extension_seconds` | `test_module_storage.c::test_post_alarm_extension_is_5_minutes` |
| Non-volatile storage (FRAM) | `host/fakes/fake_nvmem.{h,c}` (test fake); production via SPI FRAM | `test_fake_nvmem.c::test_*_round_trip` |

### v8.5 → v8.7 changes — STILL TO IMPLEMENT
- Hit-by-hit logging at 12h × per-revolution rate.
- Compensation-curve change snapshot files (Appendix F format).
- XML serialization for 4-part surveyor file (Appendices A-D).
- Frozen copy retention (≥1 year, 65h hit-by-hit guaranteed).

These are tracked in `host/audits/v6.20_spec_divergences.md` and the post-autonomous TODO list.

---

## Chapter 7 — Alarm Limits

### Spec summary
Numerical thresholds for slow wear (mm) and rapid wear (µm). v8.5 has a single set of rapid-wear values; v8.6/8.7 split into three tables (normal running / refining / rough creation).

### Where it lives
| Concern | Code | Test |
|---|---|---|
| 8.5 slow wear thresholds (Table 7.2/7.3/7.4) | `src/alarms/alarm_thresholds.h` | `test_spec7_alarm_limits.c::test_slow_alarm_*`; `test_module_alarm_thresholds.c::test_constants_slow_wear_*` |
| 8.5 rapid wear thresholds (single table) | `alarm_thresholds.h` | `test_spec7_alarm_limits.c::test_rapid_basic_*`; `test_module_alarm_thresholds.c::test_constants_rapid_wear_basic` |
| 8.5 dynamic alarm constants k=8, β=300 | `src/rapid_wear/rapid_wear.h` | `test_spec7_alarm_limits.c::test_rapid_k_*` |
| 8.7 slow wear thresholds | `src/alarms/alarm_thresholds_8_7.h` | (constants — no dedicated test yet) |
| 8.7 rapid wear three tables | `src/alarms/alarm_thresholds_8_7.h` | (constants) |
| Engine type characteristic slope (Table 7.1) | values codified in `src/speed_comp/`, `synthetic_engine.c` | `test_spec7_alarm_limits.c::test_engine_slope_*` |

### v8.5 → v8.7 changes
- Slow wear slowdown sensor deviation: normal 0.5→0.6 mm; learning 0.7→0.5 mm.
- Rapid wear basic Single: 250→200 µm. Cyl: 180→90 µm. Twin: 250→75 µm.
- Three rapid-wear tables (normal/refining/rough) replace single set.

---

## Chapter 8 — Interface to Alarm and Monitoring System (NEW in 8.6)

### Spec summary
Three relay outputs:
- Alarm relay (XS8126), normally closed
- Slowdown relay (XS8127), normally open + supervision resistor
- System Fail relay (XS8129), normally closed

Toggle period adjustable 0.1–5 s (default 1 s) on level escalation.

### Where it lives
| Concern | Code | Test |
|---|---|---|
| Relay state machine | `src/system/alarm_relays_8_7.{h,c}` | `test_module_alarm_relays_8_7.c` (7 tests) |
| Toggle period validation | `alarm_relays_set_toggle_period` | `test_module_alarm_relays_8_7.c::test_toggle_period_*` |

### v8.5 → v8.7 changes
Entire chapter is new in 8.6. v8.7 inherits unchanged.

---

## Vendor Extensions (no spec section)

### MB-Sum (Main Bearing neighbour sum)

**Status**: active in v6.20 firmware, retained through refactor and v8.7 upgrade. See `host/docs/vendor_extensions/mb_sum.md` for design rationale.

| Concern | Code | Test |
|---|---|---|
| Combine MB-Sum value | `src/vendor/mb_sum.{h,c}` `mb_sum_combine` | `test_module_mb_sum.c::test_combine_*`; `test_vendor_mb_sum.c` |
| Position validity (per-pair bitmask) | `mb_sum.c` `mb_sum_position_is_valid` | `test_module_mb_sum.c::test_position_*`; `test_vendor_mb_sum.c::test_mb_sum_position_invalid_*` |
| Number of MB positions = N-1 | `mb_sum.h` `mb_sum_num_positions` | `test_module_mb_sum.c::test_num_positions_*` |
| `ccsplit` disables position | `mb_sum.c` | `test_module_mb_sum.c::test_ccsplit_disables_position` |
| Shape-equal to TwinCylRapid | (inherent in formula) | `test_module_mb_sum.c::test_combine_correlated_wear_sums`; `test_vendor_mb_sum.c::test_mb_sum_arithmetic_matches_twin_cyl_rapid` |

---

## Cross-cutting concerns

### CHAR_BIT divergence (TI 16-bit char vs. host 8-bit char)

The TI TMS320C2000 target has CHAR_BIT == 16. Host (clang/gcc) has CHAR_BIT == 8. The same C source compiles cleanly on both but means different things for `memset(buf, 0, N)`-style calls. Mitigation:

- `host/platform/word_mem.h`: `word_zero / word_copy / word_equal / WORDS_OF` API. Same call site, identical behavior on both targets.
- `host/platform/byte_stream.h`: skeleton for byte-stream-oriented code (Modbus, SD card serialization).
- `host/audits/charbit_audit.md`: catalogue of 9 latent sites in legacy man.c, +1 in sdcard.c.
- `host/test/algo/test_struct_layout.c`: regression net asserting WORDS_OF on key structs.
- `host/test/algo/test_word_mem.c`: 12 tests verifying the API on host.

### Realistic hardware fakes

Tests run on the host through realistic emulators of the SPU's hardware:

- `host/fakes/fake_nvmem.{h,c}`: dual 32KB FRAM emulation, magic-number init, fault injection.
- `host/fakes/fake_rtc.{h,c}`: DS1306 emulation, advance-time helpers.
- `host/fakes/fake_adc.{h,c}`: 12-bit 16-channel ADC, 4-20 mA scaling.
- `host/fakes/synthetic_engine.{h,c}`: drives realistic BWM scenarios (configurable RPM/cylinders/wear).

These are reusable for v8.6/v8.7 testing because they model the chip behavior, not the v8.5 algorithm.

### Spec coverage

| Spec section | # requirements | Tests | Coverage |
|---|---|---|---|
| §1 System Response | 7 | 7 | full |
| §2 Speed Compensation | 13 | 9 of 13 (calibration multi-hour deferred) | partial |
| §3 Slow Wear Monitoring | 14 | 14 | full |
| §4 Rapid Wear Algorithms | 19 | 18 (AMS interface deferred) | near-full |
| §5 Sensor Adjustment / Failure | 7 (8.5) + 4 (8.7) | 12 | full |
| §6 Storage & Presentation | 7 (8.5) + 4 (8.7) | 11 | partial (XML/Apx E/F deferred) |
| §7 Alarm Limits | 17 | 17 | full |
| §8 Interface (8.7 NEW) | 4 | 7 | full |
| Vendor MB-Sum | 5 | 9 | full |
| **Total** | **94** | **104** | **96%** |

Plus 40+ framework / fake / regression tests = 144 total tests across 26 binaries.

---

## How to add a new test

1. Identify the spec requirement you're testing. Use the section ID from the MAN spec (§N.M.K).
2. Pick the appropriate test file (per the chapter) or create `host/test/algo/test_module_<name>.c` for a new module.
3. Tag your test function with a `@spec 8.X §N.M.K` Doxygen comment, or `@vendor-extension <name>` for non-spec features.
4. Add a row to `host/docs/SPEC_TO_TEST_MAPPING.md` linking the spec ID to your test.
5. Run `make` from `host/`. All existing tests must still pass.

## How to fix a bug found in production

1. Reproduce the failure in a unit test (`test_bug_<id>_<short_name>.c`). The test should be RED before any fix.
2. Make the smallest code change that turns the test green.
3. Verify all other tests still pass.
4. Add a row to `host/audits/bug_log.md` (create if absent) summarizing what changed and why.
5. The test stays in the suite forever as a regression guard.

## How to upgrade to a future spec revision (8.8 / 9.0 / etc.)

1. OCR the new spec PDF into `host/specs/extracted/8.X/` following the pattern used for 8.5/8.6/8.7.
2. Diff against `host/specs/extracted/8.7/8.7.md` and document the deltas in `host/specs/8_8_delta.md`.
3. For each delta, add new tests asserting the new behavior. They will be RED.
4. Add a new module variant where the algorithm changed (e.g., `src/rapid_wear/rapid_wear_8_8.{h,c}`). Keep the older variants available for testing both forms in parallel.
5. Wire up a runtime selector if customers need to choose between old and new behavior; otherwise remove old variants only after migration is complete.
6. Update `host/docs/SPEC_TO_TEST_MAPPING_8_8.md` (forking the 8.7 mapping).

## What's deferred to "post-autonomous" work

Tracked in `host/docs/POST_AUTONOMOUS_TODO.md`:

- TI CGT-C2000 build pipeline (host-only verification today)
- Hardware bench validation (golden vector capture)
- Bug 1 (sensor replacement RPM zeroing) — punted to last per project decisions
- v8.7 storage formats (Appendix E hit-by-hit, Appendix F comp-curve, XML 4-part)
- v8.7 sample stability check (§2.2-A: discard if ΔRPM > 5% nominal)
- v8.7 final compensation curve weighted blend (§2.3-A)
- spec_matrix.py CI tooling (Phase 1.1 — coverage gate)
- The CSV bugs in CPU_Software (out of scope per project decision)

---

## Glossary

| Term | Meaning |
|---|---|
| **BDC** | Bottom Dead Centre — the lowest point of the piston's stroke; sensors measure distance to the guide shoe at this position |
| **BWM** | Bearing Wear Monitoring (this product) |
| **MB** | Main Bearing (between adjacent cylinders, supporting the crankshaft) |
| **SPU** | Signal Processing Unit (the embedded TMS320F2811-based system this firmware runs on) |
| **CPU** | Central Processing Unit (Windows-side dashboard, separate codebase, out of scope) |
| **MAN** | MAN Diesel & Turbo (now MAN Energy Solutions; spec author) |
| **AMOT** | XTSW+ vendor (built this firmware to comply with MAN BWM spec) |
| **FRAM** | Ferroelectric RAM (non-volatile, two 32KB chips on the SPU) |
| **SCI** | Serial Communications Interface (TI's name for the UART peripheral) |
| **RWS** | Rapid Wear Sensor value (per-sensor: rapid_fast - rapid_slow) |
| **RWC** | Rapid Wear Cylinder value (per-cyl average) |
| **RWT** | Rapid Wear Twin value (per-cyl-pair average) |
| **dRS** | Rapid Wear Sensor Deviation (NEW in 8.6) |
| **dRC** | Rapid Wear Cylinder Deviation (NEW in 8.6) |
| **dRT** | Rapid Wear Twin Deviation (NEW in 8.6) |
| **CHAR_BIT** | Number of bits in a `char` per the C standard. 8 on host, 16 on TI C2000. |
| **EMA** | Exponential moving average — `new = old·(1-x) + sample·x` |
| **ccsplit** | Bank-split position on dual-bank engines; MB-Sum is permanently zero at this position |
| **AMS** | Alarm and Monitoring System (vessel-level system the SPU reports to) |
