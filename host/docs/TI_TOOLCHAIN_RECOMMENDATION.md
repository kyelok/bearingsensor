# TI Toolchain Recommendation — F2811 Cross-Compile for v8.7-Refactored Firmware

> **Decision (2026-04-27, REVISED)**: Two-stage approach.
>
> **Stage 1 — Proven baseline**: Stand up **CCS v4 in a Windows VM**. Reproduce the field-tested v6.20 `.a00` binary using the customer's known-working toolchain (cl2000 from CCS v4, **Hex2000 v4.13**). This establishes a rock-solid byte-for-byte baseline before any modernization.
>
> **Stage 2 — Modern build (after baseline succeeds)**: Layer **TI CGT-C2000 v22.6.3 LTS** (native macOS or Linux) as a parallel toolchain. When its `.a00` output structurally matches the CCS v4 build, switch to it for daily development. Keep the CCS v4 VM permanently as a regression oracle.
>
> Preserve the COFF ABI throughout. The customer-supplied evidence ("Another company successfully compiled with Hex2000 v4.13", and the current production deploy uses `C:\Program Files (x86)\Texas Instruments\ccsv4\tools\compiler\c2000\bin\hex2000.exe`) makes CCS v4 the empirically proven path. Modern CGT 22.6.x is the long-term destination but should be validated against, not adopted blind.

---

## Surprising findings (read this first)

Five things change the project's outlook from the original assumption that we'd just install modern tools and go:

1. **The F2811 chip is still ACTIVE on TI.com.** Not NRND, not last-time-buy, not obsolete. Production continues. The platform is not on borrowed time and any toolchain investment has a long runway. (Source: https://www.ti.com/product/TMS320F2811/part-details/TMS320F2811PBKA)

2. **Modern TI CGT-C2000 runs natively on macOS** — `_osx` installer variants exist for every recent version. **No VM is required for the modern compilation path.**

3. **The COFF ABI (which the field-tested v6.20 binary uses) is still fully supported in modern CGT** via `--abi=coffabi`. The legacy runtime library `rts2800_ml.lib` still ships. The `#pragma DATA_SECTION` / `#pragma CODE_SECTION` / `interrupt` keyword / `EALLOW`/`EDIS` patterns in the v6.20 source code work unchanged. Risk of subtle behavioral divergence from CCS-3.3-era builds is low IF we stay on COFF.

4. **There is a documented proven migration path: CCS v3.3 → CCS v4 (Hex2000 v4.13).** The customer's existing production builds are using `C:\Program Files (x86)\Texas Instruments\ccsv4\tools\compiler\c2000\bin\hex2000.exe` — not CCS v3.3. Another vendor has successfully built the firmware with this toolchain. **This makes CCS v4, not CCS v3.3, the genuine known-good baseline.** Modern CGT 22.6.x → field binary is still 13 years of compiler evolution removed from this proven point and must be validated against it.

5. **The deploy pipeline has a Windows-only LabVIEW step.** The `.a00` file produced by hex2000 is fed into the **AMOT XTSW+ FR2 Generator** (already in our repo at `AMOT XTSW+ FR2 Generator/AMOT XTSW+ FR2 Generator.exe`) which produces a `.fr2` file consumed by the SPU bootloader. The FR2 Generator requires **LabVIEW Runtime Engine** to be installed. So even in the macOS-native build path, the final deploy step requires Windows or Wine. See `host/docs/DEPLOY_PIPELINE.md` for details.

---

## Recommended toolchain — two-stage adoption

### Stage 1 — PROVEN baseline (Windows VM with CCS v4)

Per the customer's evidence, this is the empirically known-good toolchain. Stand it up first, prove the build, lock down a baseline `.a00` for comparison.

| Item | Choice | Rationale |
|---|---|---|
| Host platform | Windows 10/11 in a VM (UTM x86_64 on Apple Silicon, or VirtualBox / Parallels) | CCS v4 is Windows-only |
| Compiler suite | **CCS v4** (Code Composer Studio v4) bundling **CGT 5.x** | The proven configuration — same compiler the current production binary was built with |
| Hex tool | **Hex2000 v4.13** specifically | Customer message explicitly cites this version as known-working |
| ABI | COFF (default in CCS v4 era) | Matches field binary |
| Memory model | Large (`-ml`) | Matches v6.20's `BearingWear.pjt` |
| Linker command file | `bearingwear.cmd` | Use as-is |

**Goal of Stage 1**: Open the legacy `BearingWear.pjt` project in CCS v4. Build. Run hex2000 v4.13. Produce a `.a00`. Compare bit-for-bit to the field-shipped `xtsw_v6_20 firm(160920).a00`. They should match (or be very close — verify any differences are non-functional, e.g., timestamp metadata).

**Time investment**: ~1 engineer-day for the VM and CCS v4 install, ~half-day for the build and comparison. Total ~1.5 engineer-days.

### Stage 2 — Modern build (macOS or Linux, command-line, scriptable, CI-friendly)

| Item | Choice | Rationale |
|---|---|---|
| Compiler suite | **TI CGT-C2000 v22.6.3 LTS** | Last patch of the 22.6 LTS branch. Defaults to COFF for 281x silicon (newer 25.11.x defaults to EABI, more risk). LTS through ~2027. |
| Host platform | macOS Apple Silicon (or Linux x64) | Native; no VM. |
| ABI | COFF | `--abi=coffabi`. Matches the field binary's ABI. EABI is a separate migration with different `.bss`/`.const` section names; defer. |
| Memory model | Large | `--large_memory_model` (`-ml`). Same as v6.20. |
| Silicon flag | `--silicon_version=28` | Targets the C28x core (covers F2811). |
| Optimization | Start at `-O0`, raise to `-O1` once verified | Modern compilers optimize more aggressively; type-pun and missing-volatile bugs that were latent at CCS 3.3's `-O2` may surface. Take it slow. |
| Runtime library | `rts2800_ml.lib` | Same library v6.20 used. Still shipped in CGT 22.6. |
| Linker command file | `bearingwear.cmd` (legacy, unchanged) | COFF format; modern CGT honors it. |
| Hex output | `hex2000 -boot -sci8 -a -romwidth 16 -o fw.a00 fw.out` | Same `.a00` ASCII format the field bootloader expects. |

### Secondary tool (debugging, JTAG flashing)

| Item | Choice | When to use |
|---|---|---|
| IDE / debugger | **TI Code Composer Studio v20.5** (Theia) on macOS or Linux | When a developer needs JTAG single-step debugging or first-time-flash on a bench board. |
| Note | Same compiler under the hood as standalone CGT | Build outputs are equivalent. |
| Don't | Make CCS the system of record | Project files become a maintenance burden. Use it interactively, but commit no `.ccsproject` files. CI uses the standalone CGT. |

### Optional deeper baseline (CCS 3.3 — original development environment)

| Item | Choice | When to use |
|---|---|---|
| Original toolchain | **CCS 3.3 SR12** in a Windows VM | Use only if the Stage 1 (CCS v4) build does NOT match the field binary closely enough. Going one version older recovers the actual original development environment. |
| Why bother | Some firmware versions in the AMOT history may have been built with CCS v3.3 not v4. The customer's note says "Development at the time is presumed to have been done with CCStudio_V3.3 C2000" — but the *current* production deploy uses CCS v4 hex2000. So either (a) the binaries got rebuilt with CCS v4 at some point, or (b) only the hex2000 step uses v4 while the cl2000 compile step uses v3.3. CCS 3.3 in VM lets us verify which. |
| Alternative | Skip if Stage 1 produces a satisfactory baseline | Most projects won't need this. |

---

## What this changes vs. earlier guidance

The `host/docs/VM_SETUP_GUIDE.md` was originally written for an Ubuntu Linux build environment. With the customer's input that CCS v4 is the proven path, we now have **two distinct VM use cases**:

1. **Windows VM with CCS v4** — Stage 1, proven baseline. **Primary** initial action.
2. **Linux VM with CGT 22.6** — alternative to native macOS for the Stage 2 modern build, if a team prefers a uniform Linux build environment for CI.

The macOS-native path for Stage 2 is still the recommendation:

```bash
# On macOS, the entire build setup:
mkdir -p ~/ti
cd ~/ti
# Download from https://www.ti.com/tool/C2000-CGT (free, requires TI account)
# File: ti_cgt_c2000_22.6.3.LTS_osx-x64_installer.app or .dmg
open ti_cgt_c2000_22.6.3.LTS_osx-x64_installer.dmg
# Follow installer prompts; accepts default location ~/ti/ti-cgt-c2000_22.6.3.LTS

# Add to ~/.zshrc:
export C2000_CGT=~/ti/ti-cgt-c2000_22.6.3.LTS
export PATH="$C2000_CGT/bin:$PATH"

# Verify:
cl2000 --version
```

Then the `build/Makefile.cross` from the VM guide works on macOS directly. No virtualization layer.

---

## Risk register for this approach

Ranked by impact × likelihood. Mitigations are concrete.

### 1. **Optimizer differences at `-O2`** (Likelihood M, Impact H)

Modern CGT 22.6 has a more aggressive optimizer than CCS 3.3 / CGT 4.x. Code that lacks proper `volatile` qualifiers or relies on defined-by-accident memory ordering may work at `-O0` but break at `-O2`.

**Mitigation**:
- Build first at `-O0`. Verify all unit tests pass on host (already done — `cd host && make`).
- Build at `-O0` for the chip, flash, smoke test on bench.
- Raise to `-O1` only after `-O0` is validated. Re-test.
- Raise to `-O2` only after `-O1`. Re-test.
- The legacy v6.20 `.a00` was built at the equivalent of `-O2` per `cc_build_Debug.log`; we expect to land at `-O2` eventually but earn it incrementally.

### 2. **C language default differences** (Likelihood L, Impact L)

CGT 4.x defaulted to a relaxed K&R/C89 dialect. CGT 22.6 defaults to a relaxed ANSI-C99-ish mode. Code with K&R-style prototypes, implicit `int` returns, or `//` comments-in-headers might warn or fail.

**Mitigation**:
- Compile with `--c99` or `--c11` explicitly.
- Treat warnings as errors (`--emit_warnings_as_errors`).
- Audit the v6.20 source tree for K&R patterns before first build (low odds — code is from 2010-2016, post-ANSI).

### 3. **EABI accidental switch in CGT 25.11** (Likelihood L, Impact H)

If someone in the future installs CGT 25.11.0.LTS instead of 22.6.x, the default ABI for some C28x silicon switches to EABI. EABI has different section names (`.bss` instead of `.ebss`, `.const` instead of `.econst`), different struct return conventions, and 64-bit `double` instead of 32-bit. Silently switching ABIs would cause subtle wrong-result bugs.

**Mitigation**:
- Pin the CGT version in the Makefile: `ifneq ($(shell $(C2000_CGT)/bin/cl2000 --version | grep 22.6),) else $(error wrong CGT version)`.
- Always pass `--abi=coffabi` explicitly, even though it's the default for 281x in 22.6.
- Document the ABI choice prominently in the Makefile comments.

### 4. **CCS 3.3 regression oracle is nontrivial to set up** (Likelihood H, Impact M if skipped)

CCS 3.3 is from 2006. The Windows 10/11 VM works (per E2E forum reports) but JTAG drivers for XDS510 or XDS100 may not pass through cleanly via VM USB.

**Mitigation**:
- For the regression-oracle use, JTAG isn't needed — only the build. So a basic Windows 10 VM with no USB passthrough is sufficient.
- License: CCS 3.3 used a node-locked license that TI no longer issues. Per E2E threads, the IDE will still launch and build in evaluation mode for a limited time after install — long enough to do the one-time regression baseline.
- If you skip this oracle: increased risk on item #1, mitigated by extensive bench testing.

### 5. **Floating-point library mismatch** (Likelihood L, Impact H)

F2811 has no FPU. All `float` arithmetic is software-emulated via `rts2800_ml.lib`. If the build accidentally links against `rts2800_fpu32_ml.lib` (which targets the F2806x and later FPU-enabled C28x chips), the binary will run on the F2811 but produce silently-wrong floating-point results.

**Mitigation**:
- Linker line explicitly names `-lrts2800_ml.lib` (with `_ml` suffix, no `_fpu`).
- Add a smoke test in CI that checks the binary's symbol table for any `__fpu*` symbols (which would indicate accidental FPU lib link).

### 6. **`hex2000` output format drift** (Likelihood L, Impact L)

The `.a00` extension is `hex2000`'s default ASCII output for the first memory section. Modern `hex2000` should produce the same format the AMOT bootloader expects, but flag combinations may have shifted across versions.

**Mitigation**:
- Use the exact `hex2000` invocation that produced the legacy binary (recoverable from `cc_build_Debug.log`).
- Diff a hex dump of legacy vs. modern `.a00` for a v6.20-built-with-modern-tools rebuild.

### 7. **Silent toolchain change in CI** (Likelihood M, Impact M)

If CI later auto-bumps the CGT version (apt upgrade, brew upgrade, etc.), the build could shift without anyone noticing.

**Mitigation**:
- Vendor the CGT installer in S3 or another artifact store.
- CI explicitly downloads the pinned version each run.

---

## Why not the other options?

### Why not just use CCS v4 in a Windows VM as the primary toolchain?

- Runs only on Windows. Forces every developer to maintain a Windows VM.
- CCS v4 is end-of-life since ~2014. Increasing risk of license/install issues over time.
- No CI integration story for daily development (would require running a Windows runner with the legacy IDE).
- The `BearingWear.pjt` is a CCS v4 project file format; modern CCS Theia would re-import it but not edit it natively. Means the project file becomes a maintenance burden.

Stage 1 (CCS v4 baseline) is one-and-done for proving correctness. Stage 2 (modern CGT) is the system of record for daily work.

### Why not just use CCS 3.3 in a Windows VM at all?

- Possible if Stage 1 (CCS v4) doesn't reproduce the field binary closely enough.
- Same drawbacks as CCS v4 (Windows-only, EOL since 2010), worse: no security patches at all, license file even more fragile.
- The customer's current production deploy already uses CCS v4 hex2000, so CCS v4 is more likely the genuine current baseline than CCS v3.3.
- Reserve as a deeper baseline if Stage 1 surfaces unexpected discrepancies.

### Why not GCC / LLVM port?

- No production-ready C28x backend exists. The C28x core is too unusual (16-bit char, accumulator-centric ISA, large/small memory models, weird addressing modes) for the open-source toolchains. LLVM has an open issue confirming clangd doesn't even parse C2000 code (https://github.com/llvm/llvm-project/issues/114979).
- TI CGT is effectively the only path.

### Why CGT 22.6.x specifically (not the newer 25.11.x LTS)?

- 25.11 changes the default ABI for some C28x silicon to EABI. For our F2811 the default is still COFF in 25.11 too, but the trend is toward EABI-only and the safer choice for a legacy migration is the LTS branch where COFF remains the comfortable default.
- 22.6 is supported through ~2027. By then we'll have done the EABI migration as a deliberate project, not an accidental one.

---

## Concrete next-action checklist

### Stage 1 — Proven baseline (FIRST)

1. **One engineer-day**: Set up Windows 10/11 VM (UTM x86_64 on Apple Silicon, or VirtualBox/Parallels). Download CCS v4 from https://software-dl.ti.com/ccs/non-esd/releases/CCSv4/ (TI requires login; if not available there, contact TI support — engineers report the installer is still distributable on request).
2. **Half engineer-day**: Open `SourceCode1/SPU_Firmware/FirmwareSource_6.20/BearingWear.pjt` in CCS v4. Build. Note any errors — the project file might need a license activation grace period to compile.
3. **Half engineer-day**: Run `hex2000.exe` (the v4.13 one shipped with CCS v4) on the build output to produce `.a00`. Use the same flags as the legacy `CC3_3hexprogram.bat` script.
4. **Half engineer-day**: Diff this `.a00` against `SourceCode1/SPU_Firmware/FirmwareSource_6.20/xtsw_v6_20 firm(160920).a00`. If they match (or differ only in metadata), the baseline is validated.
5. **Total Stage 1 time**: ~2.5 engineer-days. Result: a known-good toolchain in a VM, byte-equivalent to production.

### Stage 2 — Modern build (after Stage 1 baseline is established)

6. **One engineer-day**: Install CGT 22.6.3 natively on macOS. Download `ti_cgt_c2000_22.6.3.LTS_osx-x64_installer.dmg` from https://software-dl.ti.com/codegen/non-esd/downloads/download_archive.htm. Author `build/Makefile.cross.legacy` pointing at `SourceCode1/...` sources.
7. **Half engineer-day**: Build legacy v6.20 with modern CGT. Compare `.a00` against the Stage 1 baseline (NOT the field binary directly). Differences are EXPECTED — different optimizer, different code-gen — what we want is *structural* equivalence (same `versionreg`, same Modbus parameter table, same FRAM offsets).
8. **One engineer-day**: Author `build/Makefile.cross` for the refactored `src/` tree. Build. Verify symbol table is sensible, no FPU library accidentally linked, etc.
9. **Two engineer-days**: Hardware bench validation. Flash all three binaries (Stage-1 build, modern-CGT-of-legacy build, modern-CGT-of-`src/` build) to an F2811 dev board. Capture `sensor[].endresult` over UART under controlled stimulus. Compare.

### Stage 3 — Production deploy pipeline (separate task)

10. **One engineer-day**: Document the `.a00` → `.fr2` step (LabVIEW Runtime + AMOT FR2 Generator). See `host/docs/DEPLOY_PIPELINE.md`.
11. **CI**: Add the cross-compile step to `.github/workflows/test.yml` (once the workflow scope is added — see `POST_AUTONOMOUS_TODO.md`). Use the Linux x64 CGT installer in CI, even though developers use macOS — keeps the artifact reproducible. The `.fr2` step stays manual (LabVIEW dependency).

**Total estimated time**: 8–10 engineer-days for Stages 1–2 (ignoring waiting on hardware). Stage 3 is mostly documentation.

---

## Sources

- TI C2000 CGT product page: https://www.ti.com/tool/C2000-CGT
- Download archive (all historical versions): https://software-dl.ti.com/codegen/non-esd/downloads/download_archive.htm
- CGT 22.6.0 LTS readme: https://software-dl.ti.com/codegen/esd/cgt_public_sw/C2000/22.6.0.LTS/README.html
- COFF→EABI migration guide: https://software-dl.ti.com/ccs/esd/documents/C2000_c28x_migration_from_coff_to_eabi.html
- TMS320C28x Optimizing C/C++ Compiler User's Guide (SPRU514R): https://www.ti.com/lit/ug/spru514r/spru514r.pdf
- F2811 part status: https://www.ti.com/product/TMS320F2811/part-details/TMS320F2811PBKA
- E2E migration tip thread (CCS 3.3 → CCS 10): https://e2e.ti.com/support/tools/code-composer-studio-group/ccs/f/code-composer-studio-forum/913692/
- E2E F2812 migration thread: https://e2e.ti.com/support/tools/code-composer-studio-group/ccs/f/code-composer-studio-forum/59991/
- CCS v20 (Theia) IDE: https://www.ti.com/tool/CCSTUDIO
- CCS 3.3 Service Releases archive: https://software-dl.ti.com/ccs/non-esd/releases/CCSv3/CCSv3.3/CCSv3.3ServiceReleases.htm
- CCS 3.3 ISO mirror (archive.org): https://archive.org/details/code-composer-studio-ide-v3.3-tms320c2000-dsp-platform-edition-2007-texas-instruments-cd
- LLVM C2000 support issue: https://github.com/llvm/llvm-project/issues/114979
- hex2000 utility documentation (SPRU513J): https://downloads.ti.com/docs/esd/SPRU513J/Content/SPRU513J_HTML/hex_conversion_utility_description.html
