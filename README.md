# AMOT XTSW+ Bearing Wear Monitoring (BWM) — SPU Firmware

> **Status (2026-04-27)**: Refactored to comply with MAN BWM specification rev 07 ("8.7"). Comprehensive host-side test coverage. TI hardware build deferred to a follow-up phase — see `host/docs/POST_AUTONOMOUS_TODO.md`.

This repository contains the SPU (Signal Processing Unit) firmware for the AMOT XTSW+ Bearing Wear Monitoring product. The firmware runs on a TI TMS320F2811 C2000 DSP and complies with MAN Diesel & Turbo BWM specification document **3091686-8**, currently at revision 07 (also known internally as "8.7").

---

## Repository layout

```
.
├── 3091686-8.5_opt.pdf                  Original MAN BWM spec rev 05 ("8.5")
├── 3091686-8.6_Comp.5_opt.pdf           Original MAN BWM spec rev 06 ("8.6")
├── 3091686-8.7.pdf                      Original MAN BWM spec rev 07 ("8.7") — current target
├── AMOT XTSW+ FR2 Generator/            Vendor-specific firmware-image tool (Windows)
├── SourceCode1/SPU_Firmware/.../        Legacy v6.20 firmware (UNTOUCHED reference)
├── SourceCode1/CPU_Software/            CPU-side dashboard (out of scope for this repo)
├── src/                                 Refactored firmware modules (v8.7-compliant)
├── host/                                Host-side test harness, fakes, docs, audits
├── Doxyfile                             Doxygen config — `doxygen Doxyfile` from root
└── README.md                            this file
```

The **`src/` tree** is the modern, modular, v8.7-compliant firmware. The legacy v6.20 source is preserved untouched in `SourceCode1/` as a reference. The **`host/` tree** contains everything needed to test the firmware on macOS / Linux without TI hardware.

---

## Quick start

### Run the test suite

```bash
cd host
make
```

Output: `=== 26 binaries, 0 failed ===` with ~150 passing tests across all spec sections.

### Browse the documentation

| Document | Audience |
|---|---|
| `host/docs/FIELD_MANUAL.md` | Engineers maintaining/extending the firmware. Indexed by spec chapter with test + code references. |
| `host/docs/CUSTOMER_NOTES.md` | Vessel operators, surveyors, AMOT field service. Covers v8.7 alarm re-tuning, vendor extensions, etc. |
| `host/docs/SPEC_TO_TEST_MAPPING.md` | Spec-requirement → test-case → code-location traceability matrix. |
| `host/docs/vendor_extensions/mb_sum.md` | Design rationale for the MB-Sum vendor extension. |
| `host/docs/POST_AUTONOMOUS_TODO.md` | Outstanding work (hardware bench, bug fixes, CI tooling). |
| `host/audits/charbit_audit.md` | TI 16-bit-char vs. host 8-bit-char divergence catalogue + mitigation. |
| `host/specs/README.md` | OCR'd spec corpus + spec-to-spec delta map. |
| `host/specs/v6.20_compliance.md` | Empirical analysis: legacy v6.20 implements rev 05; documents the 25-item upgrade path. |

### Generate Doxygen API docs

```bash
doxygen Doxyfile
open docs/html/index.html
```

---

## What's in `src/`

```
src/
├── core/                # Width-stable types (Uint16/Int16/Uint32/Int32),
│                        # engine-domain constants, result/error codes
├── speed_comp/          # RPM-band lookup table + 3-stage learning
├── slow_wear/           # Low-pass filter, deviations, classification, pre-warning
├── rapid_wear/          # Rapid Slow/Fast EMAs, combining, dynamic alarm
│   ├── rapid_wear.h     #   8.5 algorithm (preserved for reference / fallback)
│   └── rapid_wear_8_7.h #   8.7 algorithm (active target)
├── sensor_adjust/       # Sensor adjustment / failure handling
│   ├── sensor_adjust.h          # 8.5 single procedure
│   └── sensor_adjust_8_7.h      # 8.7 three-procedure split
├── storage/             # Short / Rapid Wear floating / Long term + event log
├── alarms/              # Threshold constants (per spec) + latching state machine
│   ├── alarm_thresholds.h       # 8.5 values
│   └── alarm_thresholds_8_7.h   # 8.7 tightened values + 3 alarm tables
├── system/              # Top-level orchestration
│   └── alarm_relays_8_7.h       # NEW chapter 8 (XS8126/XS8127/XS8129 relays)
└── vendor/              # Non-spec vendor features
    └── mb_sum.h                 # Main-bearing neighbour sum (vendor extension)
```

Each spec section maps to a single module. Spec deltas across versions live in side-by-side files (`*.h` vs. `*_8_7.h`) — the active variant is selected by the system orchestration layer.

---

## What's in `host/`

```
host/
├── Makefile                            build + run all tests
├── platform/                           host vs. target shims
│   ├── platform.h                      Uint16/Int16 typedefs, TI keyword no-ops
│   ├── word_mem.h                      word_zero / word_copy / WORDS_OF
│   └── byte_stream.h                   (skeleton) byte-stream packing
├── fakes/                              REALISTIC hardware emulation
│   ├── fake_nvmem.{h,c}                dual 32KB FRAM, magic-number init, fault injection
│   ├── fake_rtc.{h,c}                  DS1306 emulation, advance-time
│   ├── fake_adc.{h,c}                  12-bit 16-channel ADC, 4-20 mA scaling
│   └── synthetic_engine.{h,c}          drives realistic BWM scenarios
├── third_party/unity/                  vendored Unity test framework (no Ruby/gem dep)
├── test/algo/                          ~26 test files, ~150 tests
│   ├── test_smoke.c                    Unity sanity
│   ├── test_word_mem.c                 portable memory API
│   ├── test_struct_layout.c            CHAR_BIT regression net
│   ├── test_fake_nvmem.c               FRAM emulator sanity
│   ├── test_fakes_smoke.c              RTC/ADC/synthetic engine sanity
│   ├── test_spec1_system_response.c    @spec 8.5 §1
│   ├── test_speed_compensation.c       @spec 8.5 §2.0/2.2
│   ├── test_spec3_slow_wear.c          @spec 8.5 §3
│   ├── test_rapid_wear_ema.c           @spec 8.5 §4.1
│   ├── test_dynamic_alarm_8_5.c        @spec 8.5 §4.5
│   ├── test_spec4_rapid_wear_combining.c
│   ├── test_cylinder_deviation.c       @spec 8.5 §3.2
│   ├── test_spec5_sensor_adjustment.c  @spec 8.5 §5
│   ├── test_spec6_storage.c            @spec 8.5 §6
│   ├── test_spec7_alarm_limits.c       @spec 8.5 §7
│   ├── test_vendor_mb_sum.c            @vendor-extension MB-Sum
│   ├── test_module_*.c                 per-module API tests for src/ refactor
│   └── test_module_*_8_7.c             v8.7 algorithm variants
├── audits/                             CHAR_BIT audit, divergence notes
├── specs/                              OCR'd spec text + delta map + v6.20 compliance
└── docs/                               FIELD_MANUAL, CUSTOMER_NOTES, etc.
```

---

## Project principles

These were locked at the start of the refactor and shaped every implementation decision:

1. **The legacy v6.20 firmware in `SourceCode1/` stays untouched** as a field-validated reference. The refactor is a clean re-implementation in `src/`.
2. **Tests are the contract.** Refactoring may not change tests except to fix legitimate test errors. Never change tests to make broken code pass.
3. **Spec-driven.** Every test is tagged with `@spec 8.X §N.M.K` (or `@vendor-extension Y` for non-spec features). The traceability matrix is auto-readable.
4. **Realistic fakes, not stubs.** The proof that fakes are accurate = v6.20-equivalent behavior in tests. Same fakes carry forward to v8.6/8.7 testing.
5. **CHAR_BIT-portable.** Word-explicit memory API (`word_mem.h`) eliminates the TI-vs-host divergence that would otherwise mask bugs. Struct-layout assertions are the regression net.
6. **Vendor extensions documented separately.** MB-Sum and similar non-spec features have their own design memos under `host/docs/vendor_extensions/`.
7. **Bugs deferred until after compliance.** Per project decision, focus on getting v8.7 fully working before fixing the known sensor-replacement bug.

---

## What's NOT in this repository (intentionally)

- **CPU dashboard software**: `SourceCode1/CPU_Software/` is here for reference but out of scope for this refactor. Bug 2 and Bug 3 (CSV output formatting) live there.
- **TI Code Composer Studio**: the original 2006-era IDE used to build v6.20. Not required for host-side testing.
- **Ruby / Ceedling**: tests use vendored Unity. No gem dependencies.
- **TI CGT-C2000 toolchain**: needed eventually for cross-compilation, but deferred per project decisions.

---

## Acknowledgements

Original v6.20 firmware authors (per source comments): AJB, FF, MTO, NIHE, PF, SLD. Spec authorship by MAN Diesel & Turbo (now MAN Energy Solutions) — document 3091686-8.

Refactor and v8.7 compliance work: the autonomous refactor produced the entire `src/` tree, host test harness, documentation set, and Doxygen config. Legacy v6.20 firmware behavior preserved as the spec-correct reference.
