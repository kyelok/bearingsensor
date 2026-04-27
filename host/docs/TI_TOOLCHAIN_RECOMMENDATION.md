# TI Toolchain Recommendation — F2811 Cross-Compile for v8.7-Refactored Firmware

> **Decision (2026-04-27)**: Use **TI CGT-C2000 v22.6.3 LTS** (or latest 22.6.x patch) installed natively on macOS or Linux. Build via plain Makefile invoking `cl2000` and `hex2000`. Preserve the COFF ABI to minimize behavioral drift from the field-tested v6.20 binary.

---

## Surprising findings (read this first)

The research that drove this recommendation surfaced three things that change the project's outlook:

1. **The F2811 chip is still ACTIVE on TI.com.** Not NRND, not last-time-buy, not obsolete. Production continues. This means the platform is not on borrowed time and any toolchain investment has a long runway. (Source: https://www.ti.com/product/TMS320F2811/part-details/TMS320F2811PBKA)

2. **Modern TI CGT-C2000 runs natively on macOS** — `_osx` installer variants exist for every recent version. **No VM is required for compilation.** The earlier VM-centric guidance was based on an outdated assumption.

3. **The COFF ABI (which the field-tested v6.20 binary uses) is still fully supported in modern CGT** via `--abi=coffabi`. The legacy runtime library `rts2800_ml.lib` still ships. The `#pragma DATA_SECTION` / `#pragma CODE_SECTION` / `interrupt` keyword / `EALLOW`/`EDIS` patterns in the v6.20 source code work unchanged. Risk of subtle behavioral divergence from CCS-3.3-era builds is low if we stay on COFF.

---

## Recommended toolchain

### Primary build (macOS or Linux, command-line, scriptable, CI-friendly)

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

### Optional regression oracle (one-time use)

| Item | Choice | When to use |
|---|---|---|
| Original toolchain | **CCS 3.3 SR12** in a Windows 10/11 VM | Stand it up ONCE during initial bring-up. Build the legacy v6.20 sources to produce a known-good `.a00`. Compare byte-for-byte against the field binary. Compare structurally against the modern-CGT-built v6.20. |
| Why bother | Establishes a "is the modern toolchain producing equivalent output?" baseline. | After the comparison succeeds, the VM can be archived. |
| Alternative | Skip this if you're willing to trust the modern build directly | Higher risk; recommended only if VM setup is genuinely impractical. |

---

## What this changes vs. earlier guidance

The `host/docs/VM_SETUP_GUIDE.md` was written assuming we needed a Linux VM for the build. That guide is **partially obsolete** — keep it as the option for engineers who prefer a Linux build environment, or for the optional CCS 3.3 regression-oracle VM. But the **primary path is now native macOS**:

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

### Why not just use CCS 3.3 in a Windows VM as the primary toolchain?

- It runs only on Windows (no Linux/macOS native).
- Unsupported since ~2010. No security patches, no new device support.
- License is a node-locked file TI no longer issues; survival depends on the VM's MAC address staying stable.
- No CI integration story (would require running a Windows runner).
- Forces every developer to maintain a Windows VM.

Use only as the regression oracle; not as the system of record.

### Why not GCC / LLVM port?

- No production-ready C28x backend exists. The C28x core is too unusual (16-bit char, accumulator-centric ISA, large/small memory models, weird addressing modes) for the open-source toolchains. LLVM has an open issue confirming clangd doesn't even parse C2000 code (https://github.com/llvm/llvm-project/issues/114979).
- TI CGT is effectively the only path.

### Why CGT 22.6.x specifically (not the newer 25.11.x LTS)?

- 25.11 changes the default ABI for some C28x silicon to EABI. For our F2811 the default is still COFF in 25.11 too, but the trend is toward EABI-only and the safer choice for a legacy migration is the LTS branch where COFF remains the comfortable default.
- 22.6 is supported through ~2027. By then we'll have done the EABI migration as a deliberate project, not an accidental one.

---

## Concrete next-action checklist

1. **One engineer-day**: Install CGT 22.6.3 on macOS, write `build/Makefile.cross` and `build/Makefile.cross.legacy` (per skeleton in `VM_SETUP_GUIDE.md` Step 4), produce a `.a00` from the unmodified v6.20 sources. Compare structurally to the field binary.

2. **Two engineer-days**: If structural comparison passes, build the refactored `src/` tree. Compare its output structurally to v6.20-built-with-modern-tools (NOT to the field binary directly — a step-removed comparison). Alarm-threshold defaults, FRAM offsets, Modbus map layout should all match.

3. **Optional, one engineer-day**: Set up the CCS 3.3 Windows VM as the regression oracle. Build the legacy v6.20 sources in CCS 3.3. Diff against the field binary (should be byte-identical or extremely close). This validates that the modern CGT's COFF output is "close enough" to what CCS 3.3 produced.

4. **Two engineer-weeks**: Hardware bench validation. Flash both binaries to an F2811 dev board. Capture `sensor[].endresult` over UART under controlled stimulus. Compare to expected behavior.

5. **CI**: Add the cross-compile step to `.github/workflows/test.yml` (once the workflow scope is added — see `POST_AUTONOMOUS_TODO.md`). Use the Linux x64 CGT installer in CI, even though developers use macOS — keeps the artifact reproducible.

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
