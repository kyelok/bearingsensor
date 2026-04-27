# BWM SPU Firmware Deploy Pipeline

> Per AMOT vendor instructions, the production firmware deploy uses a multi-step pipeline. This document captures the full flow for engineers who need to ship a binary to a real SPU.

---

## Pipeline overview

```
src/*.c (refactored modules)         SourceCode1/...*.c (legacy v6.20 reference)
         │                                       │
         │  TI CGT C2000 (cl2000)                │  CCS v4 (cl2000) — proven baseline
         │  --abi=coffabi -ml                    │  Same flags as legacy build
         │                                       │
         └────────────────┬──────────────────────┘
                          │
                          ▼
                    *.obj (COFF object files)
                          │
                          │  TI Linker (cl2000 --run_linker)
                          │  bearingwear.cmd (linker command file)
                          │  rts2800_ml.lib (runtime library)
                          ▼
                    bwm.out (COFF executable)
                          │
                          │  hex2000.exe v4.13 (PROVEN) or modern hex2000
                          │  -boot -sci8 -a -romwidth 16
                          ▼
                    bwm.a00 (ASCII-hex bootloader format)
                          │
                          │  AMOT XTSW+ FR2 Generator.exe
                          │  (Windows-only, requires LabVIEW Runtime Engine)
                          ▼
                    bwm.fr2 (vendor flash format)
                          │
                          │  AMOT proprietary download tool
                          │  (Windows, RS-232 or USB to SPU bootloader)
                          ▼
                  TMS320F2811 chip flashed
                          │
                          │  Reboot SPU
                          ▼
                  Production deployment
```

---

## Step-by-step details

### Step 1 — Compile to `.obj`

**Tool**: `cl2000` (TI C/C++ compiler for C2000)

**Sources**:
- For Stage 1 baseline build: `SourceCode1/SPU_Firmware/FirmwareSource_6.20/*.c`
- For refactored build: `src/*/*.c`

**Flags** (from `cc_build_Debug.log` and our analysis):
```
--silicon_version=28
--abi=coffabi
--large_memory_model      (-ml)
--symdebug:dwarf
-O2                       (or -O0 / -O1 during early bring-up)
--include_path=$(C2000_CGT)/include
--include_path=src/headers (or SourceCode1/.../)
```

**Output**: One `.obj` per `.c` file.

### Step 2 — Link to `.out`

**Tool**: Same `cl2000` binary in `--run_linker` mode.

**Inputs**:
- All `.obj` files from Step 1
- `bearingwear.cmd` (linker command file — preserved unchanged from v6.20)
- `rts2800_ml.lib` (runtime library — shipped with CGT)

**Command**:
```
cl2000 --run_linker \
       --map_file=bwm.map \
       --output_file=bwm.out \
       -i$(C2000_CGT)/lib \
       *.obj \
       bearingwear.cmd \
       -lrts2800_ml.lib
```

**Output**: `bwm.out` (TI COFF executable).

### Step 3 — Convert to `.a00`

**Tool**: `hex2000.exe`

**Critical**: Use **hex2000 v4.13** specifically (the version the customer's current production toolchain uses). Modern hex2000 from CGT 22.6 should produce equivalent output but this needs validation in Stage 2.

**Path** to the proven version:
- In CCS v4 install: `C:\Program Files (x86)\Texas Instruments\ccsv4\tools\compiler\c2000\bin\hex2000.exe`

**Flags** (from the legacy `CC3_3hexprogram.bat`):
```
-boot          (boot loader format)
-sci8          (SCI 8-bit format)
-a             (ASCII output)
-order MS      (most-significant byte first)
-romwidth 16   (16-bit ROM width — F2811 is word-addressable)
-o bwm.a00     (output filename)
bwm.out        (input)
```

**Output**: `.a00` ASCII-hex file. The `.a00` extension is `hex2000`'s default for the first/only memory section ASCII output.

### Step 4 — Convert `.a00` to `.fr2`

**Tool**: `AMOT XTSW+ FR2 Generator.exe`

**Location**: Already in our repo at `AMOT XTSW+ FR2 Generator/AMOT XTSW+ FR2 Generator.exe` (Windows binary, ~430 KB).

**Requires**: Microsoft Windows + **National Instruments LabVIEW Runtime Engine** installed. Download free from https://www.ni.com/en/support/downloads/software-products/download.labview-runtime.html.

**Workflow**:
1. Launch `AMOT XTSW+ FR2 Generator.exe`.
2. Select input `.a00` file.
3. Configure SPU parameters per the AMOT manual (built-in, accessed via the "?" icon in the GUI).
4. Click "Generate" to produce `.fr2` output.

**Output**: `.fr2` file consumed by the SPU's bootloader.

### Step 5 — Flash to SPU

**Tool**: AMOT proprietary download tool (per AMOT vendor instructions).

**Workflow**: Per the AMOT manual (in-program). Typically RS-232 or USB serial to the SPU bootloader, which receives the `.fr2` and writes it to the F2811's flash.

---

## What's macOS-friendly and what isn't

| Pipeline step | macOS native? | Workaround |
|---|---|---|
| Step 1 (Compile) | ✅ Yes — CGT 22.6 ships `_osx` installer | None needed |
| Step 2 (Link) | ✅ Yes — same toolchain | None needed |
| Step 3 (hex2000) | ✅ Yes — included in CGT 22.6 macOS install | Stage 1 baseline must use v4.13 in Windows VM |
| Step 4 (FR2 Generator) | ❌ Windows-only (LabVIEW) | Run in Windows VM (UTM, Parallels, etc.). Wine support unverified — likely partial. |
| Step 5 (Flash to SPU) | ❌ Windows AMOT tool (likely) | Run in Windows VM. JTAG drivers need USB passthrough, which is hit-and-miss in VMs. |

The bottom line: **steps 4 and 5 require Windows.** A small Windows 10/11 VM with the FR2 Generator and the AMOT download tool is permanent infrastructure, not just a transition step.

---

## Stage 1 vs. Stage 2 application

For the **Stage 1 proven baseline** (per `TI_TOOLCHAIN_RECOMMENDATION.md`):
- Run all 5 steps in the Windows VM
- Goal: byte-equivalent `.a00` to the field-shipped `xtsw_v6_20 firm(160920).a00`

For the **Stage 2 modern build** (per `TI_TOOLCHAIN_RECOMMENDATION.md`):
- Run steps 1–3 on macOS or Linux (CGT 22.6 native)
- Hand off `.a00` to Windows VM for steps 4–5

For **CI** (when the GitHub Actions workflow scope is enabled):
- Steps 1–3 on Linux x64 with CGT 22.6
- Stop at `.a00` — `.fr2` and flashing happen manually post-CI

---

## Open questions for the AMOT field engineer

1. Is the **AMOT XTSW+ FR2 Generator** version we have in `AMOT XTSW+ FR2 Generator/` the latest? Newer SPU firmware versions might require a newer FR2 Generator.
2. The current production `.a00`-to-`.fr2` step may include configuration metadata (engine type, cylinder count, calibration parameters). Is this metadata embedded in the `.fr2` or stored separately on the SPU's FRAM after first boot?
3. Is there an automated flash command (CLI) for the AMOT download tool, or only a GUI? If CLI exists, we can include it in CI eventually.
4. Where is the AMOT download tool? Is it bundled with the FR2 Generator or a separate executable?
5. The customer message mentions "Manual is built into the program — click the ? icon at the bottom right." Is there a PDF version we can include in this repo for offline reference?

---

## Risks specific to the deploy pipeline

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| LabVIEW Runtime version mismatch breaks FR2 Generator | M | M | Note the LabVIEW version that works with our copy of the Generator. Pin in docs. |
| Windows VM USB passthrough fails for AMOT serial flasher | M | H | Use Parallels (best USB support) or a physical Windows machine for the actual flash. VMs OK for FR2 generation only. |
| `.fr2` format changes silently across FR2 Generator versions | L | H | Save a known-good `.fr2` from the field as a binary reference. |
| AMOT proprietary tool is no longer available from the vendor | L | H | Already in our repo — preserve the existing copy carefully. Coordinate with AMOT to confirm we have the latest. |

---

## When we'll automate this

`.fr2` generation likely never gets automated — LabVIEW dependency makes it manual. But:

- Steps 1–3 will be in CI by Stage 2 completion (modern CGT).
- Steps 4–5 will be a documented manual procedure that an engineer follows when shipping a release.
- A 5-minute manual deploy step is acceptable for marine engine firmware that ships at most a few times per year.
