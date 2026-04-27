# Post-Autonomous TODO — Outstanding Work

This document tracks everything that needs human attention after the autonomous refactor + spec-upgrade run completes. Items are organized by priority and category.

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
- GitHub Actions workflow: on every push to `main` and every PR, run `cd host && make`. Fail if any test is red.
- Optional: also run Doxygen and `spec_matrix.py`.
- **Important**: pushing a `.github/workflows/*.yml` file to this repo via the current OAuth token fails with "refusing to allow an OAuth App to create or update workflow ... without `workflow` scope". The token needs the `workflow` scope added before the CI workflow file can be added to the repo. Fix: add `workflow` scope to the gh CLI token via `gh auth refresh -h github.com -s workflow` (or equivalent), or commit the file directly via the GitHub web UI / a token with appropriate scopes.

A ready-to-use workflow file (would have been at `.github/workflows/test.yml`):

```yaml
name: Host Tests
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Build & run host test suite
        run: |
          cd host
          make
      - name: Run spec coverage report
        run: |
          cd host
          python3 tools/spec_matrix.py
      - name: Upload coverage matrix
        uses: actions/upload-artifact@v4
        with:
          name: coverage-matrix
          path: host/coverage_matrix.md
  doxygen:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install Doxygen
        run: sudo apt-get update && sudo apt-get install -y doxygen
      - name: Generate API docs
        run: doxygen Doxyfile
      - name: Upload generated docs
        uses: actions/upload-artifact@v4
        with:
          name: api-docs-html
          path: docs/html/
```

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
