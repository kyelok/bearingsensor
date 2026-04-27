# Integration Layer Design — `src/` → Complete Functional Firmware

> **Status (2026-04-28)**: Design only. Implementation is the next major phase per `host/docs/POST_AUTONOMOUS_TODO.md` § Priority 2.

## What "integration layer" means

The refactored `src/` tree currently contains the spec-correct algorithm modules:
- `src/speed_comp/` — RPM compensation
- `src/slow_wear/` — slow wear filter and deviation
- `src/rapid_wear/` — rapid wear EMAs and combining
- `src/sensor_adjust/` — sensor adjustment workflow
- `src/storage/` — storage class definitions
- `src/alarms/` — threshold constants and latching
- `src/system/` — alarm relays
- `src/vendor/` — MB-sum extension

Plus a minimal `src/main.c` that exercises the algorithm modules but does nothing useful with the results.

To produce a **functional firmware** (one that runs on a real F2811 board, samples ADC, drives the algorithms, makes alarm decisions, talks Modbus, logs to SD card), we need an **integration layer** that wires the algorithm modules to:

1. **Hardware initialization** — PIE controller, GPIO, ADC, SPI, SCI, watchdog
2. **Interrupt handlers** — ADC EOC ISR (33 µs), timer ISRs
3. **Main loop scheduler** — calls algorithm modules at the right cadence
4. **NVMEM I/O** — load/save calibration, alarm thresholds, event log to FRAM
5. **SD card I/O** — short/long term logs, frozen copies (via HCC FAT FS)
6. **Modbus protocol stack** — PCModbus (master, RS-485 to dashboard) + slave-485 (SPU2 inter-processor)
7. **Digital outputs** — alarm relay, slowdown relay, system fail relay
8. **Bootloader hooks** — for `.fr2` reprogramming

## Two viable architectures

### A. Greenfield integration layer in `src/`

Write fresh integration code in `src/` for each subsystem. The codebase becomes 100% modern.

**Pros**:
- No legacy code dependencies in `src/`. Clean architecture throughout.
- Each integration module gets the same `host/test/` host-side coverage treatment as the algorithms.
- Modern HAL boundary makes hardware changes (e.g., F28004x port someday) easier.

**Cons**:
- Substantial work — porting ~20k LOC of hardware glue.
- Risk of subtle behavioral differences from legacy that surface only on real hardware.
- HCC FAT FS (~11.5k LOC, third-party) needs to be wrapped, not rewritten.

**Estimate**: 4-6 engineer-weeks to fully replace legacy infrastructure.

### B. Hybrid build (recommended)

Link `src/` algorithm modules with selected legacy infrastructure modules. Replace ONLY the algorithm orchestration; keep the legacy hardware glue.

**Pros**:
- Faster to first-flashable firmware (~1-2 engineer-weeks).
- Lower risk — legacy hardware glue is field-validated.
- Algorithm changes (the v8.7 spec deltas) are isolated to the modules we re-tested on host.

**Cons**:
- Two coding styles in one binary (legacy K&R-ish vs. modern C99).
- Globals from legacy still touch some surfaces.
- Integration boundary requires bridge functions that adapt legacy data structures to `src/` APIs.

### Recommendation: Architecture B (Hybrid)

Lower risk, faster to ship. Architecture A can be a follow-up project once hybrid is field-validated.

## Hybrid layer design

### File layout

```
src/
├── integration/
│   ├── isr_handlers.c          NEW — ADC ISR, timer ISR drivers
│   ├── boot_init.c             NEW — replaces legacy setup.c init sequence
│   ├── main_loop.c             NEW — replaces legacy man.c MANModules()
│   ├── nvmem_bridge.c          NEW — adapts legacy WriteNVMemory/ReadNVMemory to src/ structs
│   ├── modbus_bridge.c         NEW — adapts legacy params.c table to src/ data
│   └── alarm_dispatch.c        NEW — bridges src/alarms/ to legacy digout.c outputs
├── ... (existing algorithm modules) ...
└── main.c                      EXTEND — entry point becomes boot_init + main_loop dispatch
```

### Legacy modules INCLUDED (linked as-is)

The following legacy `.o` files are linked unchanged into the hybrid binary:

- **Hardware init / drivers**: `setup.o` (with `MANInit()` etc. stubbed via bridge), `core.o`, `port.o`, `digout.o`
- **ADC / serial / SPI**: `adc.o` (the ISR — but driver-only parts only; algorithm calls are removed/redirected)
- **Communication**: `sci.o`, `spi.o`, `slave485.o`, `PCModBus.o`
- **Storage**: `sdcard.o`, `mmc_mcf.o`, all HCC FAT FS modules (`fat.o`, `fat_m.o`, `fat_lfn.o`, `chkdsk.o`, `common.o`)
- **Auxiliary**: `wio.o`, `wioprim.o`, `crctable.o`, `utils.o`, `flashprim.o`, `reprog.o`, `version.o` (with new version number), `params.o` (Modbus table, partially adapted)
- **Test infrastructure**: `test.o` (file system test, can be excluded for production)
- **Globals**: `globals.o` — still needed because legacy infrastructure accesses globals like `sensor[]`, `allsensors`, `settings`, etc.
- **Logging / events**: `logging.o`, `alarms.o` (with new alarm_dispatch.c bridge for src/alarms/ integration)

### Legacy modules REPLACED (NOT linked)

- `man.o` — algorithms. Replaced by src/rapid_wear/, src/slow_wear/, src/sensor_adjust/, src/vendor/mb_sum/.
- `mancal.o` — calibration state machine. Substantially overlaps with src/speed_comp/. Initially keep legacy mancal.o; replace with src/calibration_state_machine/ in a follow-up.
- `compensate.o` — dead code (Bug Lv-001). Excluded.

### Bridge functions needed

The legacy infrastructure calls many functions that legacy `man.c` defined. We need to provide stubs or bridges in `src/integration/`:

```c
/* src/integration/man_legacy_bridge.h
 * Bridges legacy infrastructure expectations to src/ algorithms. */

/* Called from legacy adc.c ISR every 33µs. Replaces legacy MANModules(). */
void MANModules(void);

/* Called from legacy alarms.c. Replaces legacy MANRefCalcs. */
void MANRefCalcs(int numsens, int rpm);

/* Called from legacy alarms.c. Replaces legacy DynamicAlarmLevel. */
void DynamicAlarmLevel(int rpm, float load);

/* Called from legacy PCModBus.c. Replaces legacy GetSafeStruct1Ptr etc.
 * These bridge legacy "give me a pointer to the in-FRAM cache" semantics
 * to src/ data layout. */
void *GetSafeStruct1Ptr(void);
void *GetSafeStruct2Ptr(void);
/* ... similar for other GetXXXPtr functions ... */

/* Called from legacy mancal.c on calibration phase transitions. */
void OnCalibrationStageTransition(int new_stage);

/* Called from legacy sensor-replacement entry point in PCModBus.c.
 * Triggers the spec-correct adjustment workflow in src/sensor_adjust/. */
void OnSensorReplacementRequested(int channel);
```

Each bridge function:
1. Reads legacy globals (`sensor[i]`, `allsensors.numsensors`, etc.) to get current state
2. Calls into `src/` modules with that state
3. Writes results back to legacy globals where legacy code expects to find them

This is essentially an **adapter pattern** at the orchestration boundary.

## Implementation phasing

### Phase B-1 — Skeleton link (1 engineer-day)

1. Add `src/integration/legacy_globals_stubs.c` that defines empty/zeroed versions of the ~30 unresolved globals.
2. Add `src/integration/man_legacy_bridge.c` with empty/no-op versions of `MANModules`, `MANRefCalcs`, etc.
3. Build everything together. Goal: linker succeeds. Resulting `.a00` is large (~400 KB) but functionally non-operational.

### Phase B-2 — Boot up (3 engineer-days)

1. Replace empty `boot_init.c` with proper hardware init: PIE controller, watchdog, clocks, GPIO direction, ADC init, SPI init, SCI baud rates.
2. Verify on bench: SPU boots, status LED toggles, watchdog kicks correctly.
3. No algorithms running yet, but the hardware is alive.

### Phase B-3 — ADC sampling pipeline (3 engineer-days)

1. Wire legacy `adc.c` ISR (the 33µs handler) to call into src/ via the bridge.
2. ISR reads ADC results, accumulates per-revolution state, calls `rapid_wear_apply_sample`, `slow_wear_apply_sample`, `speed_comp_apply` for each sensor.
3. Verify on bench: signal generator on inputs, RPM detection works, samples flow through algorithms.

### Phase B-4 — Alarm decisions + outputs (2 engineer-days)

1. Implement `alarm_dispatch.c` that maps src/alarms/ classifications to legacy digout.c relay calls.
2. Wire alarm latching state back to legacy alarm log.
3. Verify on bench: forced sample stream triggers expected alarms, relays trip.

### Phase B-5 — Modbus integration (3 engineer-days)

1. Adapt `params.c` parameter table so reads return values from src/ data structures, writes route to src/ setters.
2. Verify on bench: PC dashboard can read Modbus registers and see live values from src/.
3. Optionally: implement a Modbus command to switch between v8.5 and v8.7 algorithm variants at runtime.

### Phase B-6 — Storage integration (3 engineer-days)

1. Adapt sdcard.c calls to write src/ storage records (short term, rapid wear floating, long term, event log).
2. Add hit-by-hit logging (NEW in 8.6 spec, currently NOT in legacy v6.20).
3. Verify on bench: alarms trigger frozen copies; SD card has correct file format.

### Phase B-7 — XML surveyor file (2 engineer-days)

1. Implement Appendices A-D format generation per 8.7 spec.
2. Add Modbus command for "generate XML now".
3. Verify on bench: XML file produced is valid, contains all 4 parts, parses with standard XML tools.

### Phase B-8 — Production cleanup (2 engineer-days)

1. Add Doxygen comments to all bridge functions.
2. Remove `legacy_globals_stubs.c` once all globals are real.
3. Bump `versionreg` to 0x870 (or chosen value).
4. Final build at `-O2`, byte-comparison vs. v6.20 legacy build, document divergences.

**Total**: ~17 engineer-days for full integration. Phase B-1 (skeleton link) is the smallest valuable milestone — if just that lands, we have a buildable hybrid that proves the architecture works.

## Test strategy for the integration layer

- **Bridge functions** get host-side tests in `host/test/integration/` that drive synthetic legacy state through the bridge and assert correct calls into src/ modules.
- **End-to-end** integration tests: a synthetic engine + fake hardware drives a full simulation through the integration layer and verifies expected alarm/log/Modbus output.
- **Bench tests** for hardware-specific behavior (timer accuracy, ISR latency, SPI bus integrity).

## Risks specific to integration

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Legacy globals' types/sizes differ subtly from what bridge expects | M | M | Struct-layout assertion tests (already in `test_struct_layout.c`); add legacy-struct equivalents. |
| ISR latency budget exceeded by bridge function call overhead | L | H | Profile ISR before/after bridge introduction. Inline bridge body if needed. |
| HCC FAT FS calls return errors that legacy code didn't handle but new logging code might trip on | L | M | Wrap all FS calls in bridge with explicit error handling. |
| Legacy sensor[] global semantics aren't 1:1 with src/ data layout | M | H | Bridge handles the translation; document precisely. Add bridge tests. |
| `version.c` symbol conflicts (legacy ships its own version string) | L | L | Use new version.c that defines `versionreg = 0x870`. |

## Decision points where someone's input is needed

1. **Which Modbus parameter mapping?** Legacy params.c has 93 parameters. Some make sense in src/ (alarm thresholds, cylinder count); some don't (legacy state-machine pointers). Need to enumerate which carry over and which are deprecated.

2. **Calibration state machine — legacy or rewrite?** The legacy `mancal.c` (~1500 LOC) is intricate. Initial integration uses it as-is. A future src/calibration_state_machine/ rewrite is justified by spec 8.7 changes (sample stability check, weighted blend, etc.) but adds work.

3. **CPP / SLEM / WIO / sensor-moving — port or drop?** These vendor extensions are documented in `host/docs/DEPRECATION_CANDIDATES.md`. Port decision belongs to AMOT field service.

4. **Backward compatibility with installed v6.20 systems** — when the v8.7 firmware boots, can it read FRAM data written by v6.20? Either yes (we preserve FRAM layout) or migration code is needed.

5. **Slowdown relay toggle period default** — spec 8.7 §8 says 1s default, 0.1-5s range. Customer override mechanism?

These are deferred to whoever picks up Phase B implementation.
