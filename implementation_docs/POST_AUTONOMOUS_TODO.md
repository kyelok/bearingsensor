# Post-Autonomous TODO — Outstanding Work

This document tracks everything that needs human attention after the autonomous refactor + spec-upgrade run completes. Items are organized by priority and category.

---

## Priority 0 — Phase B integration finishing work

Phase B-1 through B-6 of the integration layer are complete: the hybrid binary `build/hybrid/bwm_hybrid.a00` builds cleanly via TI CGT 25.11, links legacy hardware drivers with src/ algorithm modules, and the bridge file `src/integration/man_legacy_bridge.c` provides every public symbol legacy infrastructure expects. Four items remain before the hybrid is field-ready.

### B-α — Live wiring of `sd_bridge_*` calls

**What's missing**: the four storage emitters in `src/integration/sd_bridge.c` (App-E hit-by-hit, App-F comp-curve, App-A/B/C/D surveyor) are functional and tested for format correctness, but no upstream code calls them yet. We need to choose the right hook points and make sure the calls don't blow ISR budgets.

**Hook points to pick**:
- `sd_bridge_emit_hit_by_hit` → call from the legacy `MANModules()` per-revolution path, gated on the per-cylinder `newval == TRUE` flag. The risk is doing 28 channels of CSV formatting + an `f_write` inside the 33 µs ADC ISR budget. The realistic plan: the ISR sets the flag, the main loop's `MANModules()` (1 kHz cadence) does the format + write. That works as long as the SD card I/O completes within the loop period, which it generally does for HCC FAT FS. Budget the worst-case write latency on bench before committing.
- `sd_bridge_emit_comp_curve_snapshot` → call from `mancal.c` at three transitions: end of §2.1 rough-cal stage 3, end of §2.2 fine refinement (every 50 hours), end of §2.3 finalize. Each is a one-shot file write; latency is non-critical.
- `sd_bridge_emit_surveyor_file` → call from a Modbus-triggered "generate surveyor file" command. Manual operator action, no timing constraint.

**Why we can't fix it blind**: the safe-budget question for the per-revolution emit is bench-only. Without a real SPI bus + SD card interaction, there's no way to know whether 28-channel formatting + `f_write` fits inside the inter-revolution gap at the highest engine RPM. Best to land the hook + measure.

**Estimated effort once on bench**: 1 engineer-day to wire and instrument; 1 day to measure and tune buffering / batching.

### B-β — Modal RPM histogram (legacy-equivalent)

**Status (2026-04-28)**: implemented behind `BWM_PRISTINE_INTEGRATION` flag in `src/integration/man_legacy_bridge.c` and built into `build/hybrid_pristine/bwm_hybrid_pristine.a00`. The placeholder build (`build/hybrid/bwm_hybrid.a00`) keeps the simple-average implementation for A/B comparison.

**What it does** (matching legacy v6.20):
- Build a histogram of enabled-sensor RPM values per cycle.
- Modal RPM = the most-populous bin.
- Per-channel rpmoor (out-of-range) latch: if a channel's RPM differs from modal by more than 25 RPM (`BWM_RPM_MODAL_OFFSET`), it accumulates strikes; >3 consecutive strikes set `Status3Flags(i)->rpmoor = 1`. Clears after >10 consecutive in-range samples.

**Bench validation still needed**: A/B comparison vs the placeholder build on real signals to confirm the legacy mechanism's interaction with field RPM transients matches operator expectation. The pristine binary should match v6.20 behaviour for this aspect; the bench measures whether it does.

### B-γ — Alarm latching with hysteresis

**Status (2026-04-28)**: implemented behind `BWM_PRISTINE_INTEGRATION` flag and shipped in `bwm_hybrid_pristine.a00`. Placeholder build keeps stateless classification.

**What it does**:
- Once `|sensor[i].endresult| ≥ ALARM_SLOW_FILTERED_NORMAL_8_7`, sets `sensor[i].status2.alarm = 1` AND `sensor[i].status2.alarmlatched = 1`.
- Once `|sensor[i].endresult| ≥ SLOWDOWN_SLOW_FILTERED_NORMAL_8_7`, sets `slowdown` + `slowdownlatched`.
- Clear path: alarm bit clears only when the value drops below `(threshold − allsensors.sensorhysteresis)`. The latch never auto-clears; operator must reset via dashboard.
- Rapid-wear (§7.2) contribution sets the alarm bit but never clears one set by slow-wear.

**Bench validation still needed**: confirm operator-visible alarm dwell matches v6.20 for the same signals. Hysteresis value (`allsensors.sensorhysteresis`) is operator-configurable via Modbus, default carried over from v6.20.

### B-δ — Hardware bench validation

Self-explanatory. Cannot proceed without:
- Physical TMS320F2811 dev board
- JTAG / serial flash interface
- Signal generator capable of driving 4–20 mA on the 16 ADC channels
- Optionally: an engine simulator or recorded stimulus from a real installation

Once available, the bench plan is in §"Bench validation — golden vector capture" and §"Bench validation — refactored firmware" below.

### Why these four are deliberate stopping points

The pattern is the same in B-α / B-β / B-γ: **the next correct step is "flash and measure," not "type more C."** Pushing further blind would either:
- Pick numbers (ISR budgets, RPM bins, hysteresis bands) that the bench will fix anyway, *or*
- Risk silently breaking field-tuned behaviour that operators have built procedures around.

These items shouldn't be marked "incomplete" so much as "**ready to start when bench is available**." All the design / formatter / API surface work is done.

---

## Priority 1 — Hardware-bench dependent

These cannot be done without physical hardware access.

### TI CGT-C2000 build pipeline
- **Decision**: Install TI CGT-C2000 v22.6.3 LTS natively on macOS (Apple Silicon supported via Rosetta-free x64 macOS installer; Intel macs use the same installer; Linux x64 also supported). NO VM REQUIRED. See `host/docs/TI_TOOLCHAIN_RECOMMENDATION.md` for the full rationale and risk analysis.
- Author `build/Makefile.cross` invoking `cl2000 --abi=coffabi --silicon_version=28 --large_memory_model` and `hex2000 -boot -sci8 -a -romwidth 16`.
- Reproduce a behaviorally-equivalent `.a00` binary from the unmodified `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` source tree using the modern toolchain. Compare structurally against the field firmware `xtsw_v6_20 firm(160920).a00`.
- Optional: stand up a Windows 10/11 VM with CCS 3.3 SR12 ONCE as a regression oracle (build legacy v6.20, byte-compare to field binary). Then build the same source with modern CGT and compare both structurally. This is the highest-confidence validation path; skip if VM setup is impractical.

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
- ✅ **Hit-by-hit data record formatter** (Appendix E): `src/storage/hit_by_hit.{h,c}` produces a spec-exact CSV line per engine revolution. Tested against the spec example verbatim. The 12h ring-buffer and SD-card persistence belong to the integration layer (Phase B-6).
- ✅ **Compensation-curve change formatter** (Appendix F): `src/storage/comp_curve_log.{h,c}` produces the snapshot file's filename + header + body lines (with European decimal-comma RPM formatting). Same comment: file emission belongs to Phase B-6.
- **Frozen-copy retention**: ≥1 year retention; 65h hit-by-hit always available (5 alarm events). Policy code; depends on integration layer file rotation.
- ✅ **4-part surveyor file** (Appendices A-D): `src/storage/surveyor_file.{h,c}` formats App-A engine-info key/value rows, App-B log lines, App-C per-sensor trend rows, App-D cylinder-status rows. (Note: spec calls this a "4-part surveyor file" of plain-text reports, not XML — the earlier TODO entry that mentioned XML was inaccurate.) 18 tests, all matching spec examples verbatim.

### Calibration enhancements
- **§2.2-A Sample stability check** ✅ done. `speed_comp_record_with_stability_gate` is the deferred-commit gate; `speed_comp_stability_state_t` holds the buffered sample. Tests in `host/test/algo/test_module_speed_comp_stability_gate.c`.
- **§2.3-A Final compensation curve weighted blend** ✅ done. `speed_comp_blend_undersampled` is the formula; `speed_comp_finalize_table` walks the table and blends every cell with N_Hits<1000 against an interp from the rough-cal anchor bands. Tests in `host/test/algo/test_module_speed_comp_finalize.c`.

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

### Doxygen reference ✅ done
- `Doxyfile` exists at repo root. `make docs` produces `docs/html/index.html`.
- Currently 0 warnings (one nested-comment gotcha in `speed_comp.c` was fixed).
- Spec-tag alias `@spec 8.7 §X.Y` and `@vendor-extension <name>` render as labelled paragraphs in the generated HTML.

### Per-module README
Each module under `src/<topic>/` gets a brief README explaining purpose, public API, invariants, threading concerns, error modes, and the tests covering it. Templates exist in mind but not on disk yet.

### `make coverage` ✅ done
- `make coverage` (top-level or in `host/`) cleans, builds with clang's source-based coverage instrumentation (`-fprofile-instr-generate -fcoverage-mapping`), runs all 33 binaries (each with `LLVM_PROFILE_FILE` set), merges the `.profraw` files via `llvm-profdata`, and prints a per-file table.
- `make coverage-html` produces a clickable HTML report in `host/build/coverage-html/`.
- **Current src/ coverage: 96.19% lines, 92.31% regions** — far exceeds the 80% target.

### Continuous integration
- ✅ GitHub Actions workflow authored at `.github/workflows/test.yml`. Three jobs:
  1. **test** (Linux): builds + runs the host test suite, runs `spec_matrix.py --check`, uploads `coverage_matrix.md`.
  2. **coverage** (macOS): builds with `COVERAGE=1`, generates `make coverage-report`, uploads summary.
  3. **doxygen** (Linux): runs `doxygen Doxyfile`, fails on any warning/error, uploads generated HTML.
- **Important — pushing this YAML may need extra scope**: pushing `.github/workflows/*.yml` files via an OAuth token requires the `workflow` scope. If the next push fails with "refusing to allow an OAuth App to create or update workflow ... without `workflow` scope", refresh the token: `gh auth refresh -h github.com -s workflow`. Alternatively, commit the YAML via the GitHub web UI directly. The YAML lives in the repo locally regardless.

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
