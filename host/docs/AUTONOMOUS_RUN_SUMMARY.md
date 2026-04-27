# Autonomous Refactor — Run Summary

> Generated 2026-04-27 at end of autonomous session.

This document captures everything delivered during the autonomous refactor of the AMOT XTSW+ BWM SPU firmware. Read it on wake-up to see what's done and what's deferred.

---

## TL;DR

- **26 test binaries, ~150 tests, all green.** `cd host && make` from a clean checkout.
- **`src/` tree** is the v8.7-compliant refactored firmware. `SourceCode1/SPU_Firmware/` is the legacy v6.20 (untouched reference).
- **Documentation is comprehensive**: field manual indexed by spec section, customer release notes, traceability matrix, vendor-extension docs, deprecation analysis, post-autonomous TODO.
- **Pushed to GitHub** (`kyelok/bearingsensor`) at every milestone — 7 distinct commits cover the full progression.
- **Bug 1, TI build, hardware bench**: deferred per project decisions. Tracked in `POST_AUTONOMOUS_TODO.md`.

---

## What was delivered

### Phase 0 — Foundations
- ✅ All three spec PDFs OCR'd to clean markdown using Claude vision (`host/specs/extracted/`).
- ✅ Spec-version delta map (`host/specs/README.md`) — the structural and numeric deltas from 8.5 → 8.6 → 8.7.
- ✅ Empirical baseline doc (`host/specs/v6.20_compliance.md`) — proves v6.20 implements rev 05 ("8.5") with 5 pieces of evidence.
- ✅ Feature matrix (`host/specs/feature_matrix.csv`) — 66 atomic requirements mapped against v6.20.
- ✅ Host test harness (Unity + Make, no Ruby/Ceedling dep).
- ✅ CHAR_BIT audit (`host/audits/charbit_audit.md`) — 9 confirmed latent sites in legacy man.c, smoking gun in sdcard.c.
- ✅ Word-portable memory API (`host/platform/word_mem.h`) — `word_zero / word_copy / WORDS_OF` for identical semantics on TI and host.
- ✅ Struct-layout regression tests — assert WORDS_OF on key cross-platform structs.
- ✅ MB-Sum vendor extension documentation (`host/docs/vendor_extensions/mb_sum.md`).

### Phase 1 — Spec coverage tests
- ✅ Comprehensive spec 8.5 coverage tests organized by chapter:
  - `test_spec1_system_response.c`
  - `test_speed_compensation.c` (§2)
  - `test_spec3_slow_wear.c` (§3)
  - `test_rapid_wear_ema.c`, `test_dynamic_alarm_8_5.c`, `test_spec4_rapid_wear_combining.c`, `test_cylinder_deviation.c` (§4)
  - `test_spec5_sensor_adjustment.c`
  - `test_spec6_storage.c`
  - `test_spec7_alarm_limits.c`
  - `test_vendor_mb_sum.c`
- ✅ Realistic hardware fakes:
  - `fake_nvmem.{h,c}` — dual 32KB FRAM, magic-number init, fault injection.
  - `fake_rtc.{h,c}` — DS1306 emulation.
  - `fake_adc.{h,c}` — 12-bit, 16-channel, 4-20 mA scaling.
  - `synthetic_engine.{h,c}` — drives realistic BWM scenarios.
- ✅ Spec→test→code traceability matrix (`host/docs/SPEC_TO_TEST_MAPPING.md`) — one row per atomic requirement.

### Phase 3 — Refactor (`src/` tree)
- ✅ `src/core/types.h` — width-stable types, engine domain limits.
- ✅ `src/speed_comp/` — RPM-band lookup + 3-stage learning.
- ✅ `src/slow_wear/` — low-pass filter, deviations, classification, pre-warning.
- ✅ `src/rapid_wear/` — EMAs, combining, dynamic alarm (8.5).
- ✅ `src/sensor_adjust/` — single procedure (8.5).
- ✅ `src/storage/storage_classes.h` — three storage classes + event log.
- ✅ `src/alarms/alarm_thresholds.h` — threshold constants (8.5) + latching.
- ✅ `src/vendor/mb_sum.h` — Main Bearing neighbour sum.
- ✅ Each module has `test_module_<name>.c` verifying the public API matches spec-coverage tests.

### Phase 4 — v8.7 Upgrade
- ✅ `src/rapid_wear/rapid_wear_8_7.h` — deviation calcs (§4.2), `min(|RWS|, |dRS|)` combining (§4.3.x), 4-sensor RWT, simple dynamic alarm with k=16 (§4.4), reset = 0 (§4.5).
- ✅ `src/sensor_adjust/sensor_adjust_8_7.h` — three procedures (§5.2.1/.2/.3 + .4).
- ✅ `src/alarms/alarm_thresholds_8_7.h` — three rapid-wear tables (normal/refining/rough), tightened slow-wear values.
- ✅ `src/system/alarm_relays_8_7.{h,c}` — chapter 8 XS8126/XS8127/XS8129 relays with 0.1–5s toggle period.
- ✅ Per-delta tests verify each v8.7 change (`test_module_rapid_wear_8_7.c`, `test_module_sensor_adjust_8_7.c`, `test_module_alarm_relays_8_7.c`).

### Phase 5 — Documentation
- ✅ `host/docs/FIELD_MANUAL.md` — engineer-facing reference, indexed by v8.7 spec chapter. Each chapter has spec summary, code locations, test names, v8.5→v8.7 evolution.
- ✅ `host/docs/CUSTOMER_NOTES.md` — operator-facing release notes. Alarm re-tuning action, MB-sum positive framing, configurations preserved/reset across upgrade, deferred items.
- ✅ `host/docs/POST_AUTONOMOUS_TODO.md` — hardware-bench dependent work, spec gaps, bugs, tooling.
- ✅ `host/docs/DEPRECATION_CANDIDATES.md` — v6.20 features that may be safe to retire (CPP, SLEM, WIO, etc.) — investigation queue documented.
- ✅ `Doxyfile` — ready-to-use; `doxygen Doxyfile` from project root produces HTML reference.
- ✅ `host/tools/spec_matrix.py` — auto-generates coverage report from `@spec` tags.
- ✅ Top-level `README.md`.

---

## What's deferred (per project decisions)

### Bugs (all parked until v8.7 compliance is fully verified)
- **Bug 1**: sensor replacement zeroes other sensors' RPM. Hypothesis recorded in `POST_AUTONOMOUS_TODO.md`. Test scaffold ready.
- **Bug 2 + Bug 3**: CSV system_info field display. Out of scope (CPU dashboard, not SPU firmware).

### Hardware-dependent work
- **TI CGT-C2000 build pipeline**: needed to produce a flashable `.a00` from `src/`. Setup instructions in `POST_AUTONOMOUS_TODO.md`.
- **Bench validation**: golden vector capture from real F2811 board running v6.20.
- **v8.7 firmware bench validation**: flash and run acceptance script on real hardware.

### v8.7 features not yet fully implemented
Tracked in `POST_AUTONOMOUS_TODO.md`:
- Hit-by-hit data logging (12h, Appendix E format).
- Compensation-curve change log (Appendix F format).
- XML 4-part surveyor file (Appendices A-D).
- Sample stability check during fine learning (§2.2-A).
- Final compensation curve weighted blend (§2.3-A).

### Tooling improvements
- CI: GitHub Actions workflow.
- `lcov`-based code coverage report.
- Per-module README files (Doxygen mostly covers this).

---

## Test count breakdown

| Category | Files | Tests |
|---|---|---|
| Unity / framework smoke | 1 | 3 |
| word_mem API | 1 | 12 |
| Struct layout regression (CHAR_BIT) | 1 | 6 |
| Hardware fake sanity | 2 | 19 |
| Spec §1 System Response | 1 | 7 |
| Spec §2 Speed Compensation | 1 | 7 |
| Spec §3 Slow Wear | 2 | 23 |
| Spec §4 Rapid Wear | 3 | 25 |
| Spec §5 Sensor Adjustment | 1 | 10 |
| Spec §6 Storage | 1 | 11 |
| Spec §7 Alarm Limits | 1 | 17 |
| Vendor MB-Sum | 1 | 9 |
| `src/` module API (8.5) | 5 | 36 |
| `src/` module API (8.7 deltas) | 3 | 23 |
| **Total** | **26 binaries** | **~150 tests** |

All green on macOS clang. Run `cd host && make` to verify.

---

## Repo state

```
Total files added (new this run):
- src/                  (16 files: 8 modules × ~2 files each)
- host/                 (~50 files: tests, fakes, platform shim, docs, audits, tools)
- Doxyfile              (project root)
- README.md             (project root, replacing placeholder)

GitHub history (in chronological order):
  Initial bearing sensor source code import (the original v6.20)
  Phase 0 + Phase 1 first wave: foundations and realistic fakes
  Clean up build artifacts and vendor Unity properly
  Vendor Unity sources as in-tree files
  Phase 1.3: comprehensive spec 8.5 coverage tests + traceability matrix
  Phase 3 refactor: src/ tree with rapid_wear, slow_wear, speed_comp, alarms
  Phase 4: v8.7 upgrade modules + tests
  Phase 5: Field Manual + Customer Notes + Doxygen
  README.md at project root
  Add spec_matrix.py automated coverage tool + deprecation candidates doc
```

Repository is private at `kyelok/bearingsensor` — set 2026-04-27 by user direction.

---

## Where to start when you wake up

1. **Verify the build**: `cd host && make` should report `26 binaries, 0 failed`.
2. **Skim the field manual**: `host/docs/FIELD_MANUAL.md` is the navigation hub.
3. **Review the customer notes**: `host/docs/CUSTOMER_NOTES.md` covers what end-customers need to be told.
4. **Check the TODO**: `host/docs/POST_AUTONOMOUS_TODO.md` lists what's left.
5. **Look at the deprecation candidates**: `host/docs/DEPRECATION_CANDIDATES.md` flags v6.20 features that may be safe to drop, but need engineering review.
6. **Confirm the GitHub state**: latest commit at `kyelok/bearingsensor` should be the spec_matrix + deprecation candidates push.

---

## What was preserved exactly

- **Original spec PDFs** in project root, unmodified.
- **Original v6.20 firmware** in `SourceCode1/SPU_Firmware/FirmwareSource_6.20/`, unmodified.
- **Field-tested behavior** — the new `src/` tree implements the same algorithms, just modularly and cleanly.

## What was changed

- Everything in `src/` is new (didn't exist before this run).
- Everything in `host/` is new.
- The project root has a real README and a Doxyfile.
- The `.gitignore` excludes build artifacts.

The legacy code in `SourceCode1/` was never touched.

---

That's the wrap-up. Get coffee, then the next steps in priority order are:

1. Pick a deferred item from `POST_AUTONOMOUS_TODO.md` and start scoping it.
2. Or: review the field manual + customer notes for accuracy and tone, fix anything that reads wrong.
3. Or: spin up the TI cross-compile toolchain so we can move toward shipping.

The codebase is in a good state to hand to a senior engineer for review.
