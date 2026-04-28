# Deprecation Candidates — v6.20 Code Considered for Removal

> **Status (2026-04-27)**: First-pass analysis. The legacy v6.20 firmware in `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` is preserved untouched. Refactored code lives in `src/` and represents the active codebase. This file lists v6.20 features and code paths that may be safe to drop in the new codebase.
>
> **Conservative principle**: when in doubt, RETAIN the feature in `src/` and document it. Removal requires explicit field-engineer or customer review.

---

## Status legend

- 🟢 **Safe to drop** — clearly unused, replaced, or superseded by spec changes.
- 🟡 **Likely safe** — appears unused but has lingering references; remove only after engineering review.
- 🔴 **Retain** — actively used or required for backward compatibility / customer continuity.
- ❓ **Investigate** — usage unclear; flag for customer/engineer input.

---

## Code paths in v6.20 not carried forward to `src/`

### From `man.c`

| Item | Status | Notes |
|---|---|---|
| `single1`/`single2`/`cyl1`/`cyl2`/`mbsum1`/`mbsum2` (8.5 dual-formula dynamic alarm) | 🟢 in `src/`, replaced by 8.7 single formula in `rapid_wear_8_7.c` | The 8.5 form is preserved in `rapid_wear.c` for fallback; the 8.7 form is the active path. The `*1`/`*2` field naming is gone in `src/` (cleaner abstraction). |
| `loaddynalarmlevels` parallel-state struct | 🟡 unused field in `src/` | The 8.5 firmware tracked alarm levels twice (once for runtime use, once for a "load" copy). The purpose was unclear. `src/` doesn't replicate. If a customer reports an issue traceable to load-vs-runtime alarm discrepancy, this needs investigation. |
| `damagemonignore[]` 3-cycle ignore counter | 🟡 carried forward conceptually | The mechanism (suppress damage-mon for first few cycles after sensor reload) is still useful. Implemented in `src/sensor_adjust/` but with a clearer name and no shared array. |

### From `mancal.c`

| Item | Status | Notes |
|---|---|---|
| Multi-stage calibration state machine (STAGE1..CAL_COMPLETE2) | 🔴 retained in `src/speed_comp/` | Active feature — 3-stage rough cal then 500h fine learning is core spec functionality. |
| 50-hour recalc timer | 🔴 retained, will be implemented in Phase 4 follow-up | Required by spec §2.2; tracked in `host/docs/POST_AUTONOMOUS_TODO.md`. |

### From `alarms.c`

| Item | Status | Notes |
|---|---|---|
| 362-event alarm code enumeration | 🔴 retained conceptually in `src/storage/storage_classes.h` | Reduced to a more compact enum but the alarm-classification structure is preserved. |
| Per-channel alarm latching bits | 🔴 retained as `src/alarms/alarm_latch_state_t` | Cleaner bit-packed struct, same semantics. |
| Slowdown blip rate (~0.495 sec) | 🟡 retained but configurable | The hardcoded blip period was a v6.20 implementation detail. `src/system/alarm_relays_8_7.c` exposes toggle period as configurable per spec 8.7 §8 (0.1–5 s, default 1 s). |

### From `sdcard.c`

| Item | Status | Notes |
|---|---|---|
| HCC FAT FS integration | 🔴 retained — 11.5k LOC of third-party code, frozen | Out of scope for refactor. Build remains identical. |
| Binary `config.bin` exports | 🟡 may be replaced by XML in v8.7 surveyor file | Phase 4 follow-up adds the spec-mandated XML format; the binary form may then be deprecated for new installations but retained for backward compat. |

### From `params.c`

| Item | Status | Notes |
|---|---|---|
| 93-entry Modbus parameter table | 🔴 retained, to be migrated incrementally | Each parameter slot in the table maps to a value in `damagemon`, `allsensors`, etc. In `src/` these are abstracted into module-private structs. The Modbus mapping layer is a Phase 4 follow-up (`src/comms/modbus.{h,c}`). |
| Parameter callbacks (`DamageMonStructUpdate`, etc.) | 🟡 mechanism retained, signatures may change | The "save struct on parameter write" pattern is preserved but the callback shape is cleaner in `src/`. |

---

## v6.20 features NOT mentioned in MAN BWM specs

These are vendor / product features that appear in v6.20 but have no MAN spec section. They're documented under `host/docs/vendor_extensions/` (or here if not yet documented).

### CPP (Constant-current Pump) integration

- **v6.20 site**: `params.c` registers 4632–4637; `cppsettingsstruct cppsettings`.
- **Status**: ❓ **investigate** — appears to be load-percentage calculation tied to a customer-specific CPP system. May or may not be active in the current installed base.
- **Action**: review with AMOT field service whether any deployed installation actually uses this.
- **In src/**: not yet ported. If retained: `src/vendor/cpp_load_percent.{h,c}`.

### SLEM (Supplementary Level Exceedance Monitoring)

- **v6.20 site**: `params.c`; `slemsettingsstruct slemsettings`.
- **Status**: ❓ **investigate** — appears to be analog input for an ancillary parameter (hydraulic pressure?). Customer-specific.
- **Action**: same as CPP — review whether deployed.
- **In src/**: not yet ported.

### Water-in-Oil (WIO) detection

- **v6.20 site**: `wio.c`/`wioprim.c` (~250 LOC); `wiosettings` struct.
- **Status**: 🟡 **likely retained** — water-in-oil detection is a real ship-engine concern. Both digital and analog WIO sensor support.
- **Action**: confirm with customer base. If used, port to `src/vendor/wio.{h,c}`.

### Sensor-moving threshold

- **v6.20 site**: `sensorMovingstruct`; Modbus 4640.
- **Status**: 🟡 **likely retained** — supports detection of mechanical sensor displacement (sensor came loose / was bumped).
- **Action**: port to `src/sensor_adjust/` as part of the sensor adjustment workflow.

### Direction calibration (FORWARD/ASTERN/UNKNOWN)

- **v6.20 site**: `alarms.c` direction state machine.
- **Status**: 🔴 **retained** — required by spec §2.0 ("astern running disregarded").
- **In src/**: tracked as `bwm_direction_t` in `src/core/types.h`. The state machine itself needs to land in `src/system/` (Phase 4 follow-up).

### RTC battery monitoring

- **v6.20 site**: `adc.c` periodic check; alarms ICRBAT_ALARMS.
- **Status**: 🔴 **retained** — operational concern; lost RTC = lost timestamps on event log.
- **In src/**: not yet ported. Belongs in `src/system/health.{h,c}` (post-autonomous task).

---

## Code styles / patterns to retire

### Direct global mutation across compilation units

v6.20 has many file-scope globals that other modules read/write (`sensor[]`, `damagemon`, `allsensors`, `timers`, `settings`, `config`). The refactor in `src/` introduces module-private data + accessor functions. Legacy globals stay in `SourceCode1/` but are not replicated.

### `#pragma DATA_SECTION` directives placing variables at hardware-specific addresses

v6.20 uses these for register-mapped peripherals (ADC, GPIO, SCI, SPI). In `src/`, hardware access goes through the (eventual) HAL boundary; placement directives are not needed.

### TI-keyword littering (`interrupt`, `EALLOW`, `EDIS`, `near`, `far`, `cregister`)

These are macroed away on host (`host/platform/platform.h`). Refactored code in `src/` should NOT use them at all — hardware access is funneled through the HAL.

### Bit-field structs without explicit size

v6.20 has bit-field structs like `status1struct { unsigned int alarmmask:1; ...}` where the underlying integer width matters but isn't explicit. In `src/` these should be redesigned with `Uint16` payload and explicit bit definitions or accessor inline functions, ensuring the layout matches across CHAR_BIT boundaries.

---

## Investigation queue

Items where customer or field-engineer input is needed before deprecation:

1. **CPP load-percent**: Used by anyone? In what configuration?
2. **SLEM**: Active deployments? What parameter is being measured?
3. **Sensor-moving**: Frequently triggered? False-positive rate?
4. **Direction calibration**: Are bidirectional engines (both forward and astern operation) common in the deployed base, or is it always forward-only?
5. **Slowdown blip period (current 0.495 s)**: Was this hardcoded value deliberate, or just a starting default?

Each would benefit from a brief review with someone who has deployed-installation knowledge. Once answered, items above can move to 🟢 / 🔴 with the right path forward.

---

## Process for deprecating an item

1. Confirm with field engineer that the feature has no active deployments using it.
2. Check `host/docs/CUSTOMER_NOTES.md` to see if it's mentioned to customers.
3. If safe: remove the corresponding `src/` code (or never port it from v6.20).
4. Add an entry in this file with status 🟢, date, and engineer who approved.
5. The legacy `SourceCode1/v6.20/` source remains untouched.

If safety is uncertain: keep the code with a `@deprecated` Doxygen tag and a TODO referencing this document.
