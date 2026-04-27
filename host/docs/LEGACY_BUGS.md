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

## Bug Lv-004 — Multiple suppress-able compiler warnings under modern CGT

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
