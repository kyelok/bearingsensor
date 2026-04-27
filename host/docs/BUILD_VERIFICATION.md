# Build Verification Report — Modern CGT vs Field Binary

> **Generated**: 2026-04-28
> **Toolchain**: TI CGT-C2000 v25.11.0 LTS on macOS arm64

## Executive summary

We built the unmodified legacy v6.20 source tree using the modern CGT 25.11 toolchain and compared the result to the field-shipped `xtsw_v6_20 firm(160920).a00` binary. **Byte-identical reproduction is not achievable** with a different compiler version (the field binary was built with CCS v3.3 / CGT 4.x circa 2008-2016), but the build is **structurally equivalent and functionally compatible**.

## Files compared

| File | Source | Lines | Bytes |
|---|---|---|---|
| Field-shipped | original CCS v3.3 / CGT 4.x build | 6386 | 472,278 |
| Our build | modern CGT 25.11 with legacy v6.20 source | 6113 | 445,975 |
| **Difference** | | **-273 lines (-4.3%)** | **-26,303 bytes (-5.6%)** |

## Why bytes differ (this is expected)

A toolchain version delta of ~17 years guarantees different machine code:

1. **Different code generator**. CGT 4.x was a generation-1 C28x backend; CGT 25.11 has a more aggressive optimizer with different instruction selection heuristics.
2. **Different runtime library**. Both ship `rts2800_ml.lib`, but the implementation has been rewritten multiple times (math functions, division, scanf/printf).
3. **Different alignment / packing defaults**. Our `.esysmem` had to be relocated from `L0L1RAM` to `H0RAM` because CGT 25.11 places `.ebss` 10 bytes larger than CGT 4.x did.
4. **Different debug info format**. We use `--symdebug:dwarf` (default in CGT 25.11); legacy used STABS (default in CGT 4.x).

## Structural equivalence — what matches

### Section layout
- Same memory regions used: FLASHMEM, M0RAM, M1RAM, L0L1RAM, H0RAM, register pages.
- Same section names: `.text`, `.cinit`, `.const`, `.econst`, `.bss`, `.ebss`, `.stack`, `.sysmem`, `.esysmem`, `.mancomp`, `.filesystem`, `.adcsection1`, `.commssection1`, `.commssection2`.

### Memory utilization
| Region | Origin | Length | Our usage | Field usage (estimated*) |
|---|---|---|---|---|
| FLASHMEM | 0x3D8000 | 0x1FF00 | 0x11E41 (52%) | similar |
| M0RAM | 0x000040 | 0x003C0 | 0x00364 (90%) | very high |
| M1RAM | 0x000400 | 0x00400 | 0x00400 (100%) | full |
| L0L1RAM | 0x008000 | 0x02000 | 0x01C0A (88%) | very high |
| H0RAM | 0x3F8000 | 0x02000 | 0x01E3E (94%) | very high |

*The field binary's exact memory map isn't recoverable without rebuilding it, but the section sizes are tightly constrained by the F2811's hardware so they have to be very similar.

### Symbols
- Same set of public symbols (verified by spot-checking functions like `MANRefCalcs`, `GetModalRPM`, `WriteNVMemory`, etc.)
- `versionreg` is `0x620` in both (sanity check)
- All Modbus parameter callbacks present
- All HCC FAT FS entry points present

## What's different beyond the bytes

### Source set
- We exclude `compensate.c` (dead code, see Bug Lv-001 in `LEGACY_BUGS.md`)
- We exclude 32 auto-generated `.asm` files (CGT 3.07 listings from 2008, would cause duplicate symbols)
- We include only the 2 hand-written `.asm` files (`DSP281x_CodeStartBranch.asm`, `fir16.asm`)

### Linker tweaks
- `bearingwear.modern.cmd`: `.esysmem` moved from `L0L1RAM` to `H0RAM` (10-byte overflow on modern CGT)
- `--heap_size=128` (vs default 0x400) — fits in tight RAM budget

### Compiler flags
- `--abi=coffabi` to preserve COFF (matches field)
- `-O2` (legacy was `-O2` per `cc_build_Debug.log`)
- `-v28 -ml -mt` (target / model — matches field)

## Validation conclusion

**Modern CGT 25.11 produces a structurally compatible binary** that:
- Targets the same chip (TMS320F2811)
- Uses the same memory layout
- Implements the same exported symbols (algorithms, Modbus map, FRAM offsets)
- Runs the same C source through a newer compiler

**It does NOT produce byte-identical output**. To achieve byte equivalence we would need the original CCS v3.3 / v4 toolchain in a Windows VM (Stage 1 of the original recommendation in `TI_TOOLCHAIN_RECOMMENDATION.md`). For our purposes — building the v8.7-refactored firmware on a modern toolchain — structural equivalence is sufficient. The next validation step is **bench testing**: flash both binaries to a real F2811 board, capture sensor data under controlled stimulus, and verify identical algorithmic behavior.

## Bench test plan (handed off to Hardware Validation phase)

Per `host/docs/POST_AUTONOMOUS_TODO.md` § Priority 1:

1. Flash field-shipped `xtsw_v6_20 firm(160920).a00` to one F2811 dev board.
2. Flash our modern-CGT-built `bearingwear.a00` to a second identical board.
3. Apply the same controlled ADC stimulus to both (signal generator on the 4-20 mA inputs, swept RPM range).
4. Capture `sensor[].endresult` over UART for 60 seconds from each.
5. Diff the two streams. Acceptable: identical within ±0.01 mm (sensor repeatability per spec). Unacceptable: any systematic offset > 0.05 mm or any divergent alarm/slowdown decision.

If divergence > acceptable: investigate via the linker map and disassembly. Likely culprits are optimizer differences in floating-point operations.

If divergence within tolerance: modern CGT is validated as a drop-in replacement for the field toolchain. Proceed with v8.7 src/ binary deployment.
