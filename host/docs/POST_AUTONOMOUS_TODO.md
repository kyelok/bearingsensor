# Post-Autonomous TODO — Outstanding Work

This document tracks everything that needs human attention after the autonomous refactor + spec-upgrade run completes. Items are organized by priority and category.

---

## Priority 1 — Hardware-bench dependent

These cannot be done without physical hardware access.

### TI CGT-C2000 build pipeline
- Install TI CGT-C2000 v22.x on a Linux host (or in a Docker container).
- Author `build/Makefile` per the architecture in `host/specs/v6.20_compliance.md` Phase 0.3 description.
- Reproduce a behaviorally-equivalent `.a00` binary from the unmodified `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` source tree.
- Validate behavioral equivalence against the field firmware `xtsw_v6_20 firm(160920).a00`.

### Cross-compile the refactored `src/` tree
- Once the TI build pipeline is functional, point it at `src/`.
- Resolve any TI-compiler-specific issues that didn't surface on host clang (use `-Wpedantic -std=c99 -Wall -Wextra` extensively to minimize this).
- Produce a flashable `.a00` for the new firmware.

### Bench validation — golden vector capture
- Flash `xtsw_v6_20 firm(160920).a00` to a real F2811 dev board.
- Inject a known stimulus: 4-20 mA inputs across the 16 ADC channels, varying RPM.
- Capture `sensor[].endresult` over 60 seconds via UART.
- Save as `host/test/integration/golden_v6_20_endresult.csv`.
- Add a host integration test that drives the synthetic_engine with the same stimulus and asserts the new code's outputs match the golden vector within tolerance.

### Bench validation — refactored firmware
- Flash the v8.7-compliant `.a00` (built from `src/`).
- Run a hardware acceptance script that exercises every spec'd input/output and confirms expected behavior.
- Compare against the v6.20 golden vector — note expected divergences (8.7 deltas) and confirm everything else matches within tolerance.

---

## Priority 2 — Implementation gaps in v8.7 spec compliance

These are 8.7 spec requirements not yet implemented in `src/`. Tracked in `host/specs/v6.20_compliance.md`. None block the existing test suite (which is comprehensive for the implemented portions), but customers will want them.

### Storage / serialization
- **Hit-by-hit data logging** (12h, Appendix E format): per-revolution timestamp + uncompensated samples for all 28 channels. New module suggestion: `src/storage/hit_by_hit.{h,c}`.
- **Compensation-curve change log** (Appendix F format): timestamped snapshot file each time the comp curves are updated.
- **Frozen-copy retention**: ≥1 year retention; 65h hit-by-hit always available (5 alarm events).
- **XML 4-part surveyor file** (Appendices A-D format).

### Calibration enhancements
- **§2.2-A Sample stability check**: discard sample if ΔRPM > 5% nominal between consecutive samples. Add to `src/speed_comp/speed_comp.c` `speed_comp_record_fine_sample`.
- **§2.3-A Final compensation curve weighted blend**: `REF = (Nhits·V_avg + (1000-Nhits)·V_interp)/1000` for under-sampled bands.

### CI / tooling
- **`spec_matrix.py`**: walk `@spec` / `@vendor-extension` tags across `host/test/`, cross-reference against `host/specs/feature_matrix.csv`, fail CI if any spec ID has zero tests or zero implementation hits. Phase 1.1 task; not a blocker.

---

## Priority 3 — Bug fixes

Per project decision (locked 2026-04-27): bugs are addressed AFTER full v8.7 compliance + refactor.

### Bug 1 — Sensor replacement zeroes other sensors' RPM
- Reproduction: write `host/test/algo/test_bug_1_sensor_replacement.c`. Setup 28-sensor array with all RPM=100. Activate replacement on channel 5. Assert RPMs of channels 0..4, 6..27 remain at 100.
- Hypothesis (from prior investigation): in `man.c GetModalRPM` (lines 284–370), when `iSensorInRepalceMode == TRUE`, the modal calculation incorrectly flags non-selected channels as `rpmoor=1`, which downstream zeroes RPM.
- Fix strategy: bisect via the failing test. Likely fix is to skip the OOR flag for non-selected channels while replacement mode is active.
- Land the test as a permanent regression guard.

### Minor bugs (deferred — CPU-side, out of scope)
- `system_info.csv` "firmware version" field display
- `system_info.csv` "KValueDamageMonitoring" field display

These are documented in `host/audits/csv_bugs_handoff.md` (per Phase 2.3 of the original plan) for the CPU dashboard team.

---

## Priority 4 — Tooling / DX improvements

### Doxygen reference
- Author `Doxyfile` with:
  - `INPUT = src host/platform`
  - `ALIASES = "spec=@par Spec requirement:^^"` so `@spec 8.7 §X.Y` tags render
  - `EXTRACT_ALL = NO`, `EXTRACT_STATIC = YES`
  - Output to `docs/html/`
- CI step: `doxygen Doxyfile` produces zero warnings.

### Per-module README
Each module under `src/<topic>/` gets a brief README explaining purpose, public API, invariants, threading concerns, error modes, and the tests covering it. Templates exist in mind but not on disk yet.

### `make coverage`
- Add an `lcov`-based code-coverage target to `host/Makefile`. Run all tests with `--coverage`, generate an HTML report.
- Target ≥ 80% line coverage of `src/`.

### Continuous integration
- GitHub Actions workflow: on every push to `main` and every PR, run `cd host && make`. Fail if any test is red.
- Optional: also run Doxygen and `spec_matrix.py` (when both exist).

---

## Priority 5 — Future-spec readiness

Future MAN BWM revisions (8.8, 9.0, etc.) will arrive eventually. The current architecture supports them:

- Each spec-version-specific module variant lives next to its predecessor (e.g., `rapid_wear.c`, `rapid_wear_8_7.c`). New revisions follow this pattern.
- The system orchestration layer (TBD — currently a Phase 4 follow-up task) will select the active variant at compile time or runtime.
- The OCR pipeline at `host/specs/extracted/` is set up for additional revisions: just `pdftoppm` the new spec PDF, run through Claude vision via the Read tool, save as `8.X/8.X.md`, diff against the prior version.

---

## Resolved / parked items

- **CPU dashboard work**: out of scope for this project. CPU-side CSV bugs (firmware version field, KValueDamageMonitoring field) are CPU's problem.
- **HCC FAT FS refactor**: 11.5k LOC of third-party code. Frozen as-is. Bugs would be upstream issues, not ours.
- **Migrating off the F2811 chip**: not on the table. Hardware platform is locked.
- **Building tests against actual v6.20 source**: punted in favor of spec-reference implementations + a refactored `src/` that satisfies the same tests. The "v6.20 implements 8.5" claim rests on manual cross-reference plus the tests themselves; full host-compile of legacy code was deemed not worth the multi-day toolchain yak-shave.

---

## How to pick up this work

For each TODO above:

1. Open the relevant priority section.
2. The work item should have enough context to start (file paths, hypotheses, test names).
3. If not, the owning module's `src/<topic>/<module>.h` has cross-references back to the spec section.
4. The field manual `host/docs/FIELD_MANUAL.md` is the navigation index — start there if you don't know which module to touch.
5. Tests are the contract. Make the new test fail first. Then fix code until it passes. Don't change passing tests during the work.
