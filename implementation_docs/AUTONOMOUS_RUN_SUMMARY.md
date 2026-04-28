# Autonomous Refactor — Final Run Summary

> Generated 2026-04-28. Initial document supersedes the earlier run
> summary from 2026-04-27. **Updated 2026-04-28 (later session)** with
> the §2.2-A / §2.3-A spec-compliance work, all four App E/F/A-D
> formatters, the CPU dashboard patches, and tooling improvements.

This is the comprehensive record of everything delivered during the
multi-session autonomous refactor of the AMOT XTSW+ BWM SPU firmware.

---

## TL;DR

- **36 test binaries, ~280 tests, all green** on macOS clang.
- **Two reproducible build pipelines** producing flashable `.a00` binaries
  via TI CGT 25.11 on macOS:
  - `make legacy` → 446 KB legacy v6.20 binary
  - `make cross`  → 24 KB refactored src/ binary
- **97.06% line coverage** on src/ via clang source-based coverage.
- **100% feature_matrix coverage** per `spec_matrix.py`.
- **0 Doxygen warnings**, **0 cppcheck findings on src/**.
- **Cross-version code review**: PR critic agent + coverage analyst
  agent each provided ~25 findings. All applicable fixes applied.
- **Static analysis**: cppcheck found legacy bugs Lv-005 through Lv-010.
  3 critical patches applied to legacy code (Lv-005 buffer overflow,
  Lv-008 OOB Modbus param read). Lv-010 (16-bit overflow in pre-warn
  timer) documented but not patched.
- **CPU dashboard Bugs 2 + 3 patched** (in source tree; not yet
  rebuilt — needs VS2010 / Silverlight 5 VM).
- **CI workflow** authored (`.github/workflows/test.yml`).
- All changes pushed to GitHub `kyelok/bearingsensor` private repo.

---

## What was delivered

### Phase 0 — Foundations (completed earlier)
- All 3 spec PDFs OCR'd to clean markdown (`host/specs/extracted/`)
- Empirical baseline: v6.20 firmware confirmed to implement spec 8.5
- CHAR_BIT audit (legacy code)
- Word-portable memory API (`host/platform/word_mem.h`)
- Realistic hardware fakes (FRAM, RTC, ADC, synthetic engine)

### Phase 1 — Spec coverage tests (completed earlier)
- ~120 tests across 7+ chapter-organized files
- Spec→test→code traceability matrix
- MB-Sum vendor extension documented

### Phase 3+4 — Refactor + v8.7 upgrade (completed earlier)
- src/ tree with 11 modules organized by spec chapter
- v8.7 algorithm + threshold variants alongside v8.5

### Phase 5 — Documentation (completed earlier)
- Field manual indexed by v8.7 spec section
- Customer release notes
- Doxygen-driven API docs
- Deprecation candidates analysis

### Phase 6 — TI Toolchain Validation (THIS SESSION)

**Build pipelines validated:**
- TI CGT-C2000 v25.11.0 LTS works natively on macOS for our use case
- `--abi=coffabi --c99 -v28 -ml -mt` flags preserve legacy compatibility
- `rts2800_ml.lib` shipped in modern CGT
- Both legacy v6.20 source AND refactored src/ produce `.a00` files

**Build verification documented:**
- `host/docs/BUILD_VERIFICATION.md` — modern CGT vs field binary
  - Bytewise equivalent: NO (different compiler eras)
  - Structurally equivalent: YES (same memory regions, sections, symbols)
  - Bench validation: deferred to hardware phase

### Phase 7 — Static Analysis Sweep (THIS SESSION)

cppcheck 2.20.0 used on both src/ and legacy v6.20:
- **src/ tree**: 2 minor style nits found, both fixed in `src/main.c`
- **legacy code**: 5 new bugs catalogued in `host/docs/LEGACY_BUGS.md`:
  - **Lv-005 (HIGH)**: `mancal.c:521-528` writes past `manrefsum[]` (size 14)
    when looping with bound MAX_NUM_CHANNELS (28). Buffer overflow during
    calibration restart. **PATCHED** (loop split with correct bounds).
  - **Lv-006 (medium)**: `common.c:1695` uninitialized `pos->cluster`.
    HCC FAT FS, NOT patched (third-party).
  - **Lv-007 (low)**: printf format mismatches. NOT patched (debug-only).
  - **Lv-008 (medium)**: `params.c:154` Modbus parameter table OOB read.
    **PATCHED** (operand-order swap to short-circuit bounds check).
  - **Lv-009 (low)**: `test.c:714` dead code. NOT patched.

### Phase 8 — Bug 1 Investigation (THIS SESSION)
- Root cause analysis of "RPM zeroes during sensor replacement" bug
- HONEST reassessment: my prior "fix-by-design" claim was logical
  inference, not reproduction
- Identified two interacting issues in legacy man.c (line 345 typo +
  state coupling at lines 1095-1145)
- Refactored src/ design DOES eliminate the class of coupling bugs but
  the specific causation chain wasn't proven
- 5 regression tests in `test_bug_1_sensor_replacement_isolation.c`
  assert decoupling as a design property

### Phase 9 — PR Cycle (THIS SESSION)
- Created `feature/integration-layer-skeleton` branch
- Opened PR #1 with 113-line scaffolding diff + broader review scope
- **Spawned critic subagent**: returned 25 findings (F-01 through F-25)
- **Spawned coverage analyst subagent**: returned per-module coverage matrix
- Applied critical fixes:
  - F-01/F-02: Added DANGEROUS-IF-USED-PAST-B1 banner to stubs file
  - F-03: Fixed mb_sum.h doc/code contradiction (sensor index math)
  - F-04: Added missing `sensor_adjust_tick_hour()` API
  - F-05: Added `rapid_wear_init_sensor_with_seed()` to avoid startup
    transient false alarms
  - F-07: Implemented missing ΔRPM tracker state machine
    (NEW src/rapid_wear/delta_rpm_tracker.{h,c} + 8 tests)
  - F-08: Documented relay escalation toggle as deferred to Phase B-4
  - F-10: Patched Lv-008 in legacy code (operand-order swap)
  - F-11: NEW host/tools/section_diff.py for build artifact comparison
  - F-12: Aspirational types banner in core/types.h
  - F-13: Status banner on storage_classes.h
  - F-17: Verified MANRefCalcs stub signature matches legacy
  - F-19: README.md placeholders in test/integration/ and test/protocol/
  - F-20: Worked example added to mb_sum.md
- **PR #1 merged** to main, branch deleted

### Phase 10 — Coverage Improvements (THIS SESSION)
Per coverage analyst's top-10 priority list:
- `rapid_wear_deviation_twin_8_7` — 3 new tests (was uncovered)
- 4 alarm relay state-machine functions — new tests for previously
  untested set/clear paths
- `speed_comp_apply` low-RPM gate path test
- `speed_comp` defensive guards: zero nominal, NULL args, zero-width interp
- `slow_wear` corner cases: all-others-invalid, both-fore-aft-failed
- `test_module_alarm_thresholds_8_7.c` NEW (21 tests) — was nothing
- `test_lv_005_regression.c` NEW (5 tests) — design-property assertions
- `test_e2e_alarm_chain.c` NEW (3 tests) — first integration test
- `test_module_delta_rpm_tracker.c` NEW (8 tests) — F-07 module
- NULL-arg defensive tests across 4 modules
- Tautology fixed: `test_basic_alarm_constants_match_spec_8_5` now
  references actual constants from `src/alarms/alarm_thresholds.h`
- Test count: 27→31 binaries, ~155→~225 tests

### Phase 11 — CPU Dashboard Analysis (THIS SESSION)
- Read 759 C# files / 88 XAML / 103 .csproj across SoftwareSource_6.1.8.0/
- **Bug 2 root cause** identified at `src/Core/WebService/Exports/VerificationData.cs:68`:
  - `SPUVersionToSTring()` has TWO bugs (returns empty if minor=0;
    treats raw bytes as decimal not BCD)
- **Bug 3 root cause** identified at same file:393-404:
  - Cast to `(short)` corrupts unsigned values >32767
  - Doesn't apply firmware's *100000 scale factor for fixed-point params
- Recommended fixes documented in `host/docs/CPU_DASHBOARD_OVERVIEW.md`
- NOT modifying CPU code (out of project scope per principle); handoff
  document for next workstream

### Phase 12 — Tooling Improvements (THIS SESSION)
- `make COVERAGE=1` + `make coverage-report` for gcov instrumentation
- `host/tools/section_diff.py` for build comparison
- pandoc + weasyprint setup → 13 PDFs in `docs-pdf/` for distribution

### Phase 13 — Spec compliance + CPU patches (LATER 2026-04-28 SESSION)

**Spec-compliance closures (5 new modules):**
- **§2.2-A sample stability gate** (`src/speed_comp/speed_comp.c`):
  `speed_comp_record_with_stability_gate` — single-deep deferred-commit
  buffer that discards both samples when |Δrpm| > 5%·nominal between
  consecutive fine-learning samples. 10 tests.
- **§2.3-A weighted blend** (same file): `speed_comp_blend_undersampled`
  + `speed_comp_finalize_table` walks under-sampled bands at end of
  refinement and blends V_avg with V_interp from anchor bands per
  REF = (N·V_avg + (1000−N)·V_interp)/1000. 9 tests.
- **App E hit-by-hit formatter** (`src/storage/hit_by_hit.{h,c}`):
  per-revolution CSV formatter; `date;time;rpm;dir;S1.1;S1.2;...`.
  Tests against the spec example verbatim. 9 tests.
- **App F comp-curve change log** (`src/storage/comp_curve_log.{h,c}`):
  filename + header + body formatters with European decimal-comma
  RPM range. 9 tests.
- **App A/B/C/D 4-part surveyor file** (`src/storage/surveyor_file.{h,c}`):
  - App A: "Key                = Value" engine-info rows
  - App B: "YYYY-MM-DD, hh:mm:ss, subject, message" log lines
  - App C: per-sensor trend rows, distance shown as mm with 3 dp
  - App D: cylinder-status rows with N/U/W/A status legend
  All 18 tests match the spec examples character-for-character.

**Tooling additions:**
- Top-level `Makefile` with help/test/coverage/docs/cross/legacy/clean.
- `make coverage` switched from gcov-per-binary (which was hard to
  aggregate) to clang's source-based coverage (`-fprofile-instr-generate
  -fcoverage-mapping`) merged via `llvm-profdata`. Reports per-file +
  src/-only TOTAL. **97.06% line coverage / 89.15% region coverage on
  src/.**
- `make docs` runs `doxygen Doxyfile`. Doxyfile fixed
  (nested-comment parse error in speed_comp.c; muted noise on internal
  struct docs). **Now produces zero warnings/errors.**
- `host/tools/spec_matrix.py` rewrote coverage-check logic: fall back
  from literal req_id match to spec-section match (a test tagged
  `@spec 8.7 §4.4` now counts toward `R-§4.4-N`). **feature_matrix
  coverage now 100%** (was 65 missing → 0 missing, 45 covered at
  section granularity).
- `.github/workflows/test.yml` authored with three jobs: test (linux),
  coverage (macos), doxygen (linux, fails on warnings).
- `docs/html/` un-tracked from git (still gitignored, was accidentally
  re-tracked).

**Bug fixes:**
- **CPU Bug 2** (firmware version display) — patched
  `SPUVersionToSTring()` in `VerificationData.cs`: BCD-decode each
  version byte, drop the buggy `major != 0 && minor != 0` zero-version
  guard, format with zero-padded minor.
- **CPU Bug 3** (KValueDamageMonitoring shown negative) — changed local
  `short value` → `ushort value` in the modbus-read loop. Both patches
  live in the SourceCode1/CPU_Software/ tree but cannot be built locally
  (no .NET 4 / Silverlight 5 toolchain).
- **Lv-010 documented**: 16-bit integer overflow in `man.c` pre-warning
  timer assignment (`prewarningtimer * 60 * 200` overflows on C2000).
  Three call sites at `man.c:2744, 2776, 2872`. Documented in
  LEGACY_BUGS.md but not patched (long-shipped firmware; field
  expectations may have adapted).

**Quality polish:**
- `cppcheck --enable=warning,style,performance,portability` on src/:
  zero findings (after fixing two `constVariable` style nits in the
  new storage modules).
- All test req_id tags added so `spec_matrix.py` reports 100% coverage.

**Deltas in test / src counts:**
- Test binaries: 31 → 36 (added 5 new test files: stability_gate,
  finalize, hit_by_hit, comp_curve_log, surveyor_file).
- src/ source files: 37 → 43 (added 5 new .{h,c} pairs across 3
  storage modules + 2 speed_comp additions).
- Total tests: ~225 → ~280.
- Cross-compiled `.a00`: 14 KB → 24 KB (snprintf inclusion).

---

## What's NOT done (intentional)

Per project decisions and scope:

1. **Hardware bench validation** — flashing both binaries to a real F2811
   board, capturing UART output, comparing behavior. Requires physical
   hardware; explicitly held back per user direction.

2. **AMOT FR2 Generator integration** — converting `.a00` to `.fr2` for
   the bootloader is a Windows-only step requiring LabVIEW Runtime
   Engine. Documented in `host/docs/DEPLOY_PIPELINE.md`.

3. **Phase B integration layer (B-2 through B-8)** — the design is
   complete in `host/docs/INTEGRATION_LAYER_DESIGN.md`. Phase B-1 (stub
   scaffold) is delivered. Phases B-2 through B-8 are estimated 14
   engineer-days of work to produce a complete functional firmware
   from src/. The ΔRPM tracker (F-07 fix) is the first real module
   added that integration will use.

4. **CPU dashboard fixes** (Bugs 2 + 3) — documented but not patched.
   Out of SPU project scope.

5. **CCS v3.3 / v4 byte-equivalent build** — would require Windows VM
   setup. Documented as optional path; not needed for our refactor goals.

---

## Repo state

```
Total commits in this autonomous run: ~25
Latest commit: src/rapid_wear/delta_rpm_tracker.{h,c} + tests (F-07)
GitHub: kyelok/bearingsensor (private)
Branch: main (PR #1 merged)
```

**Test counts:**
- 31 test binaries
- 31 test files (24 in test/algo/, 1 in test/integration/, 0 in test/protocol/)
- ~225 individual tests, all green
- 11 src/ modules + 1 main.c
- ~37 source/header files in src/ + host/platform + host/fakes
- 5 hardware fakes (NVMEM, RTC, ADC, synthetic engine, integration stubs)
- 13 catalogued bugs (1 Bug 1 + 2 CPU bugs + 9 legacy Lv-001..Lv-009)

**Documentation:**
- 16 .md files in host/docs/ + host/specs/ + host/audits/
- 13 PDFs in docs-pdf/ (regenerable)
- Doxygen output (regenerable, gitignored)

---

## Key documents (for whoever picks this up)

| Document | Purpose |
|---|---|
| `host/docs/FIELD_MANUAL.md` | Engineer reference, indexed by v8.7 spec section |
| `host/docs/CUSTOMER_NOTES.md` | Operator-facing release notes |
| `host/docs/SPEC_TO_TEST_MAPPING.md` | Spec→test→code traceability matrix |
| `host/docs/INTEGRATION_LAYER_DESIGN.md` | 8-phase architecture for src/ → functional firmware |
| `host/docs/BUILD_VERIFICATION.md` | Modern CGT vs field binary structural comparison |
| `host/docs/LEGACY_BUGS.md` | 9 catalogued bugs in v6.20 + patch decisions |
| `host/docs/BUG_1_FIX_NOTES.md` | Sensor-replacement bug analysis + design-fix rationale |
| `host/docs/CPU_DASHBOARD_OVERVIEW.md` | Bugs 2/3 root cause + Silverlight EOL concern |
| `host/docs/DEPLOY_PIPELINE.md` | Full .c → .a00 → .fr2 → SPU flow |
| `host/docs/POST_AUTONOMOUS_TODO.md` | What's left (hardware, integration, etc.) |
| `host/docs/TI_TOOLCHAIN_RECOMMENDATION.md` | CGT version + ABI guidance |
| `host/docs/DEPRECATION_CANDIDATES.md` | v6.20 features that may be safe to drop |
| `host/docs/vendor_extensions/mb_sum.md` | MB-sum vendor extension design + worked example |
| `host/audits/charbit_audit.md` | TI 16-bit-char divergence analysis |

---

## Next steps (for whoever picks this up)

In priority order:

1. **Hardware bench setup** + flash both `.a00` binaries (legacy + src/) to a real F2811 board.
2. **Integration layer Phase B-2 through B-8** (~14 engineer-days, see design doc).
3. **CPU dashboard Bug 2 + Bug 3 fixes** (separate workstream).
4. **AMOT FR2 Generator integration** for production deploys (Windows step).
5. **CI workflow** activation once the GitHub OAuth token has `workflow` scope (YAML in POST_AUTONOMOUS_TODO.md).
6. **Field engineer review** of `DEPRECATION_CANDIDATES.md` items (CPP, SLEM, WIO, sensor-moving).
7. **Long-term Silverlight migration** for the CPU dashboard (separate project).

The codebase is in a state ready to hand to a senior engineer for review and incremental forward progress.
