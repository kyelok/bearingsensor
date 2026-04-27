# Legacy v6.20 Firmware — Known Bugs Catalogue

> **Audience**: engineers maintaining the legacy `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` codebase, OR using it as a reference during the v8.7 migration.
>
> **Project principle**: legacy code stays untouched as a field-tested reference. The only exception is small, surgical patches needed to make the legacy code compile under modern toolchains (so we can produce a baseline `.a00` for comparison). All such patches are documented here with rationale.

---

## Bug Lv-001 — `compensate.c` is dead code

**Severity**: low (no functional impact — file is never executed)
**Discovered**: 2026-04-27
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/compensate.c`

### Symptoms
- File fails to compile under modern TI CGT 25.11 with multiple errors:
  - Line 29: `identifier "inputs" is undefined`
  - Line 316: `struct "tag_inputstruct" has no field "compresults"`

### Root cause
1. **Missing include**: file references `inputs` (declared in `adc.h`) without including `adc.h`.
2. **Stale struct references**: file references `inputs.compresults.chan[i]` and `inputs.compresults.compprevious[i]`, but the `compresults` field no longer exists in `tag_inputstruct` (per `adc.h:290`).
3. **Zero callers**: no other file in the codebase calls `InitCompensation()`, `SpeedCompensation()`, `TempCompensation()`, or `ZeroAveraging()`. The functions are dead.

### Why it didn't break the field build
The `BearingWear.pjt` CCS v3.3 / v4 project file likely excluded compensate.c from the build (or CCS was permissive about errors in unreferenced files). The field-shipped binary was built without it, evidenced by the absence of any `Compensation` symbol in the binary's symbol table (would need confirmation via `nm` on the `.a00`).

### Resolution in our toolchain
Two surgical changes:

1. **Patch applied** (`compensate.c` line 13): added `#include "adc.h"` to fix the missing-include issue. This is a one-line non-functional change — it doesn't alter behavior, just makes the file's intent explicit.

2. **Build exclusion**: omit `compensate.c` from the legacy build's source list. Since no other file calls into it, exclusion has zero functional impact.

The `build/Makefile.legacy.cross` (TBD) explicitly excludes this file. Documented at the top of that Makefile.

### Recommendation
- **For legacy reference**: leave the file in `SourceCode1/...` as-is (with the one-line include patch). It's historical context — someone may have intended to reactivate it.
- **For the v8.7 refactor**: don't port any of compensate.c's functionality to `src/`. The features it implements (`SpeedCompensation`, `TempCompensation`) have either been:
  - Completely replaced by `src/speed_comp/` (which is the spec-compliant compensation)
  - Or were never actually used in production

---

## Bug Lv-002 — Always-false comparison in `GetModalRPM`

**Severity**: medium (degrades modal-RPM stability detection accuracy)
**Discovered**: 2026-04-27
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/man.c`
**Line**: 345

### The bug
```c
if(rpmval > (rpmuse+RPM_MODAL_OFFSET) || rpmval < rpmval-RPM_MODAL_OFFSET && rpmval != 0)
```

The right-hand side `rpmval < rpmval - RPM_MODAL_OFFSET` is always false for any non-negative `rpmval` and positive `RPM_MODAL_OFFSET` (= 25 in this codebase). The comparison is tautologically false.

The author clearly meant:
```c
if(rpmval > (rpmuse+RPM_MODAL_OFFSET) || (rpmval < (rpmuse-RPM_MODAL_OFFSET) && rpmval != 0))
```
i.e., compare `rpmval` to `rpmuse - RPM_MODAL_OFFSET` (the modal RPM minus tolerance), not `rpmval - RPM_MODAL_OFFSET`. Typo of `rpmval` instead of `rpmuse`.

### Effect
The OOR (out-of-range) detector for sensor RPMs only fires for sensors reading *higher* than the modal RPM by more than 25, never for sensors reading *lower* than the modal by more than 25. This means:
- A sensor reading much higher than typical (likely sensor noise / fault) → flagged correctly.
- A sensor reading much lower than typical (e.g., a sensor about to fail, or a sensor that lost signal) → never flagged.

### Relationship to Bug 1 (sensor replacement zeroes others' RPM)
This was previously hypothesized as the root cause of Bug 1 (the user-reported field bug). Re-examination shows the connection is plausible but unproven. The line 345 typo is real; whether it directly produces the reported "RPMs zero during replacement" symptom needs proper reproduction in a host-side simulation harness. See `host/docs/BUG_1_FIX_NOTES.md` for the longer discussion.

### Resolution
- **Legacy code**: NOT patched. Stays as-is per project principle.
- **Refactored `src/`**: doesn't have an equivalent function yet. When implemented (Phase 4 follow-up under §3.3 evaluation cadence), the spec-correct logic will be used.
- **Potentially related field-reported issues**: if customers running v6.20 report that low-RPM sensor faults aren't being detected (sensors reading near 0 while others run normally), this typo is the likely cause.

### Static-analysis note
Modern compilers / static analyzers (`-Wtautological-compare` family in clang and gcc) flag this immediately. Worth a one-time pass over the entire legacy codebase with such tools to find similar lurking bugs.

---

## Bug Lv-003 — `inputs` global declared in `adc.h` but used outside ADC contexts

**Severity**: low (organization/maintainability concern, not a runtime bug)
**File**: pattern across many files
**Discovered**: 2026-04-27 (during compensate.c investigation)

The global `inputs` (of type `inputstruct`) is declared in `adc.h` because it represents ADC input data. But it's used by many files outside the ADC subsystem (compensate.c, others). This is a coupling concern — `adc.h` becomes a de-facto required include for many unrelated modules.

### Resolution
- **Legacy code**: not changed. The `compensate.c` patch (Lv-001 #1) just makes one such usage explicit by adding the include.
- **Refactored `src/`**: cleaner separation. ADC-related state lives in `src/hal/` (TBD) with explicit accessors; no globals leak into algorithm modules.

---

## Bug Lv-005 — `mancal.c` writes past end of `manrefsum[]` (buffer overflow)

**Severity**: HIGH (memory corruption)
**Discovered**: 2026-04-28 (cppcheck static analysis pass)
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/mancal.c`
**Lines**: 517-528 (in `RestartCalibration()` or similar)
**Status**: PATCHED in legacy code (this is one of the rare exceptions to the "legacy untouched" principle — buffer overflows have a higher priority than the principle).

### The bug

```c
// Original mancal.c around line 517-528:
for(i=0; i<MAX_NUM_CHANNELS; i++)    // MAX_NUM_CHANNELS = 28
{
    manref[i].reflevel = 0;
    /* ... 5 more manref[i] field writes ... */

    manrefsum[i].cylsum = 0;          // BUG: manrefsum is size 14, not 28
    manrefsum[i].mbnsum = 0;          // BUG: same
}
```

`manrefsum[]` is declared `manrefsum[MAX_NUM_CYLINDERS]` (= 14 entries, see `man.c:57`). The loop iterates from 0 to 27 (`MAX_NUM_CHANNELS`). When `i >= 14`, the writes go past the end of `manrefsum[]` and corrupt adjacent BSS memory.

### Effect

Calibration restart corrupts whatever variable happens to be allocated immediately after `manrefsum` in BSS. The exact corruption depends on linker layout and could cause:
- Silent data corruption (hardest to debug — bad calibration values, alarm thresholds, etc.)
- Watchdog reset if a critical timer/counter is overwritten
- Subtle algorithm misbehavior after a calibration restart

This bug is triggered every time the operator initiates a calibration restart, which happens at:
- Initial commissioning
- Sensor replacement
- Manual recal request via Modbus

So it's reliably exercised in the field but its symptoms are likely attributed to "calibration didn't complete cleanly, try again."

### Patch applied

Split the offending loop into two, each with the correct upper bound:

```c
for(i=0; i<MAX_NUM_CHANNELS; i++) {
    /* manref[i] writes — these are correct since manref[] IS sized MAX_NUM_CHANNELS */
    manref[i].reflevel = 0;
    /* ... etc ... */
}
for(i=0; i<MAX_NUM_CYLINDERS; i++) {
    /* manrefsum[i] writes — corrected bound */
    manrefsum[i].cylsum = 0;
    manrefsum[i].mbnsum = 0;
}
```

This is the minimum surgical patch. Behavior of the SUCCESSFULLY-zeroed indices (0-13) is unchanged. The previously-corrupted memory beyond manrefsum[13] now stays untouched.

### Customer notification

Operators currently running v6.20 should be told: if they have observed unexplained alarm behavior or calibration failures after a sensor replacement workflow, this bug is a likely cause. The fix is included in the v8.7-compliance firmware update.

### Prevention in `src/`

Our refactored `src/` doesn't have a `manrefsum`-equivalent global. The MB-Sum extension lives in `src/vendor/mb_sum.{h,c}` with its own state per main-bearing position; the loop bound is `mb_sum_num_positions(num_cylinders) = num_cylinders - 1`, which is mathematically correct. The cylinder-sum is similarly per-cylinder with bounds tied to `num_cylinders`.

No equivalent bug can exist in `src/` because:
1. We use `BWM_MAX_CYLINDERS` (14) and `BWM_MAX_SENSORS` (28) as distinct names — the type system catches misuse.
2. Bounds are derived from struct dimensions, not from a separate `MAX_NUM_*` macro.
3. The struct-layout regression tests in `host/test/algo/test_struct_layout.c` would catch any size mismatch.

### Static analysis

cppcheck (`--enable=warning,style`) catches this with:
```
mancal.c:526:13: error: Array 'manrefsum[14]' accessed at index 27, which is out of bounds. [arrayIndexOutOfBounds]
```

Recommend running cppcheck as a CI gate on the legacy code (until it's retired) AND on `src/`.

---

## Bug Lv-006 — `common.c` uses uninitialized `pos->cluster`

**Severity**: medium (HCC FAT FS — third-party, but worth noting)
**Discovered**: 2026-04-28 (cppcheck)
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/common.c:1695`

```c
pos->prevcluster = pos->cluster;   // pos->cluster never initialized
```

When `_f_clustertopos` is called from common.c:2440, the `pos` struct hasn't been zeroed.

### Resolution
- Legacy code: NOT patched (this is HCC FAT FS, third-party). Document for future maintenance.
- The legacy code has run for years with this and the FAT FS works in production, so the actual impact is bounded — likely just one stale value gets propagated, the next FAT operation overwrites it.

---

## Bug Lv-007 — Multiple printf format-string mismatches

**Severity**: low (no functional impact unless the prints actually run)
**Discovered**: 2026-04-28 (cppcheck)
**Files**:
- `chkdsk.c:927, 1490` — `%ld` vs `unsigned long`
- `mancal.c:1464` — `%d` vs `unsigned int`
- `sdcard.c:893` — `%u` vs `signed int`

Most of these are in debug `sprintf` strings that may or may not execute depending on debug-output flags. Format-string mismatches on the C28x with these specific types typically still print readable values (signedness reinterpretation only matters for very large values), but it's poor hygiene.

### Resolution
- Legacy code: NOT patched. Low impact, debug-only.

---

## Bug Lv-008 — `params.c` Modbus parameter table off-by-one risk

**Severity**: medium (potential out-of-bounds read)
**Discovered**: 2026-04-28 (cppcheck)
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/params.c:154-155`
**Status**: PATCHED in legacy code 2026-04-28 (per PR review F-10 — same memory-safety class as Lv-005, internally consistent to patch both).

```c
while(reg != parameters[i].reg && i < NUM_PARAMETERS_IN_LIST) i++;
if(i == NUM_PARAMETERS_IN_LIST) return(0);
```

The condition `reg != parameters[i].reg` is evaluated FIRST, then `i < NUM_PARAMETERS_IN_LIST`. If `i == NUM_PARAMETERS_IN_LIST` (just past the end), `parameters[i].reg` is read out of bounds. The subsequent check on the next line is too late.

### Effect

When a Modbus client requests an unrecognized register, the `parameters[i].reg` access at i=NUM_PARAMETERS_IN_LIST reads beyond the array. The value read is whatever lives in BSS after the `parameters[]` array; it might happen to match `reg`, in which case the function continues into garbage logic.

In practice, the legacy build's parameter array is exactly 93 entries; reading parameters[93].reg gets whatever struct field happens to be next in memory. Could produce unexpected behavior on unrecognized Modbus register reads.

### Patch applied

```c
// Original:
// while(reg != parameters[i].reg && i < NUM_PARAMETERS_IN_LIST) i++;
// Patched (operand order swapped so bounds check short-circuits first):
while(i < NUM_PARAMETERS_IN_LIST && reg != parameters[i].reg) i++;
```

### Resolution
- **Legacy code**: PATCHED (operand order swap). Defensible because (a) memory-safety class matches Lv-005 which we patched, (b) one-line surgical change, (c) no behavioral difference for known-good register lookups, (d) only changes behavior for previously-OOB-read paths.
- **Refactored `src/`**: when `src/comms/modbus.c` is written (Phase B-5 of integration layer per `INTEGRATION_LAYER_DESIGN.md`), it must use the safe-order check. Test this explicitly.

---

## Bug Lv-009 — `test.c:714` always-false condition (dead code)

**Severity**: low (dead code in test harness, not shipped to production)
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/test.c:714`

```c
if (ret) return _f_result(35,ret);  // line 697 — exits if ret != 0
...
if (ret) return _f_result(39,ret);  // line 714 — but ret can't be != 0 here
```

After the first early-return, `ret` is provably zero, so the second check is dead code.

### Resolution
- Legacy code: NOT patched (in test harness, never executes in production).

**Severity**: low (warnings, not errors)
**Files**: scattered

When building 31 of 32 legacy `.c` files with TI CGT 25.11 (`--abi=coffabi --silicon_version=28`), the compiler emits many warnings:
- Implicit function declarations
- Sign-comparison mismatches
- Possibly-uninitialized variables
- Unused parameters

### Resolution
- **Legacy code**: warnings tolerated for the legacy reference build. Goal is byte-equivalent or behaviorally-equivalent output, not zero-warning code.
- **Refactored `src/`**: builds at `--c99 -O0` with all warnings enabled, no warnings emitted (verified 2026-04-27).

A future "polish the legacy code for handoff" pass could systematically address these, but it's not a current project goal.

---

## Bug Lv-010 — `man.c` 16-bit integer overflow in pre-warning timer setup

**Severity**: medium (timer fires hours earlier than intended; non-safety)
**Discovered**: 2026-04-28 (cppcheck `truncLongCastAssignment`)
**File**: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/man.c:2744, 2776, 2872`

### The bug

```c
timers.prewarn = allsensors.prewarningtimer * 60 * SECS_TO_MS_MULTIPLIER;
```

Where:
- `allsensors.prewarningtimer` is `unsigned int` (16-bit on C2000)
- `SECS_TO_MS_MULTIPLIER` is `#define SECS_TO_MS_MULTIPLIER (unsigned int)(200)` — also 16-bit
- The integer literal `60` is `int` (16-bit)
- The result is assigned to `timers.prewarn`, which is `unsigned long` (32-bit)

### Root cause

C arithmetic on TI C2000 (16-bit `int`) computes the entire RHS in 16-bit unsigned before widening. With the production default `prewarningtimer = 360` (per `setup.c:552`):
- `360 * 60 = 21600` (still fits in 16-bit, max 65535)
- `21600 * 200 = 4,320,000` — **overflows 16-bit unsigned** (max 65535)
- Modulo 65536: 4,320,000 % 65,536 = 60,160

Then `timers.prewarn = 60160` (a valid 16-bit value, widened to 32-bit). **Intended** value: 4,320,000 ms.

### Effect

The pre-warning averaging window timer fires **far earlier than the operator-configured value**. With default 6 h = 360 min configured, the actual delay is 60,160 ms = ~5 minutes (set in 5 ms ticks since SECS_TO_MS_MULTIPLIER is the 5 ms-tick rate, so 60,160 ticks × 5 ms ≈ 5 min). Operator expects 6 h average, gets 5 min average instead → noisier, less accurate pre-warning level baseline.

### Resolution
- **Legacy code**: NOT patched. Behavioral change to a long-shipped firmware would require careful re-validation; the spec describes the *intent* as a 6 h averaging window but the firmware has been operating for years with the truncated value, so service expectations may have adapted to the actual behavior. Document and defer to the next intentional firmware revision.
- **Refactored `src/`**: when the pre-warn module is added in `src/` (Phase 4 follow-up under §3.3 evaluation cadence), use explicit `(unsigned long)` casts:
  ```c
  state->prewarn_ticks = (unsigned long)config.prewarn_minutes * 60UL * SECS_TO_MS_MULTIPLIER;
  ```

### Three call sites
- `man.c:2744` — `PreWarningInitOnRestart()`-style function (resets after a restart)
- `man.c:2776` — `PreWarningInit()` (initial setup)
- `man.c:2872` — `PreWarningStateMachine()` (resets after timer expiry)

All three lines have the same overflow.

---

## How to file a new legacy bug

When you find another issue in `SourceCode1/SPU_Firmware/FirmwareSource_6.20/`, append a section here following this template:

```
## Bug Lv-XXX — short description

**Severity**: critical / high / medium / low
**Discovered**: YYYY-MM-DD
**File**: relative/path/to/file.c
**Line**: NNN  (if applicable)

### The bug
(reproduce the offending code or behavior)

### Root cause
(explain WHY it's wrong)

### Effect
(what happens at runtime as a result)

### Resolution
- Legacy code: (patched / not patched, with rationale)
- Refactored src/: (how the new architecture handles it)
```

Numbering: `Lv-001`, `Lv-002`, ... in order of discovery.

---

## Severity guide

- **Critical**: causes incorrect operation, safety risk, data loss. Must fix.
- **High**: degrades function visibly to operator. Should fix.
- **Medium**: degrades function in ways operators may not notice. Fix during refactor.
- **Low**: code quality, maintainability, or cosmetic. Fix opportunistically.
