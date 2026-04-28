# Building the legacy SPU firmware with CCS 3.3 SR12

> **Audience**: an engineer who wants to reproduce the 2016 production firmware from source using the original AMOT toolchain. This is the parallel "known-good" path while the modern-CGT investigation continues.
>
> **Goal**: produce a `bearingwear.a00` from `SourceCode1/SPU_Firmware/FirmwareSource_6.20/` that's byte-near-identical to the field-shipped `xtsw_v6_20 firm(160920).a00`. Convert to `.fr2`. Flash. Verify Modbus comes up.

---

## 0. What you'll need

| Item | Notes |
|---|---|
| Windows host or VM | Windows XP, 7, or 10. CCS 3.3 was last validated on XP/Win7; Win10 works with compatibility mode (right-click → Properties → Compatibility → Win XP SP3). 32-bit or 64-bit Windows is fine; CCS 3.3 itself is 32-bit. |
| **CCS 3.3 SR12 installer** | The original AMOT toolchain. **TI no longer hosts CCS 3.3 directly** — you'll need to source it from your AMOT contact, an internal archive, or the engineer who originally maintained the firmware. The installer name is typically `CCS_v3.3_SR12.zip` or similar; size around 600-800 MB. SR12 is the latest service pack and what AMOT used. |
| ~3 GB free disk space | CCS 3.3 install is ~1.5 GB; project + build outputs ~500 MB. |
| The repo cloned to your Windows host | `git clone https://github.com/kyelok/bearingsensor.git` (or copy via shared folder if no Git on Windows). |
| Access to the AMOT FR2 Generator + LabVIEW 2011 SP1 32-bit RTE | To convert `.a00` → `.fr2` after the build. Both are already in this repo at `AMOT XTSW+ FR2 Generator/`. |

If you don't have a Windows machine, see `implementation_docs/VM_SETUP_GUIDE.md` for VM options. UTM on Apple Silicon, VirtualBox or VMware on Intel — all work.

---

## 1. Install CCS 3.3 SR12

1. Run the installer as Administrator on Windows.
2. Accept defaults; the installer will create `C:\CCStudio_v3.3\` (this path is *significant* — the legacy `CC3_3hexprogram.bat` in the repo references it directly).
3. When prompted for license, the C2000 compiler is included with CCS 3.3 SR12 by default for evaluation; if you have an AMOT-supplied license file, install it.
4. Reboot if asked.

**Verification**:
```
C:\CCStudio_v3.3\C2000\cgtools\bin\cl2000.exe -version
```
Should print something like `TMS320C2000 C/C++ Compiler vX.X.X` (typically v5.x for CCS 3.3 SR12).

---

## 2. Open the BearingWear project

The project file is committed in the repo:
```
SourceCode1/SPU_Firmware/FirmwareSource_6.20/BearingWear.pjt
```

`.pjt` is the legacy CCS 3.3 project format. **It's a plain-text file** — you can open it in Notepad to see what's there.

In CCS 3.3:

1. **Project → Open** → navigate to `BearingWear.pjt` → Open.
2. The Project Explorer pane shows the full file tree: ~30 `.c` files, the `.cmd` linker file, the `.asm` files, and the auto-generated assembly listings.
3. **Build Configuration**: choose `Debug` from the toolbar dropdown (matching what `cc_build_Debug.log` shows AMOT used).

**Verification**: in the Project Explorer, you should see `version.c`, `man.c`, `core.c`, etc. The `.cmd` file should be `bearingwear.cmd`.

---

## 3. Configure compiler options (verify they match the legacy build)

The `BearingWear.pjt` file should have these encoded already, but verify:

**Project → Build Options → Compiler tab**:

```
-k -q -al -o1 -fr"<output dir>" -d"LARGE_MODEL" -md -mf -ml -mn -mv2 -v28
```

Decode:
- `-v28` — target the C28x core (TMS320F2811 specifically).
- `-ml` — large memory model (large code, large data).
- `-mv2` — silicon version 2.
- `-md`, `-mf`, `-mn` — CCS 3.3-era memory-mode flags. These don't have direct modern-CGT equivalents and are part of why we can't perfectly replicate this build with modern CGT.
- `-o1` — optimization level 1 (modest). Critical: matches legacy CCS 3.3 default.
- `-d"LARGE_MODEL"` — preprocessor define. Confirmed unused in source code; harmless either way.
- `-k -q -al -fr` — keep listings, quiet, asm listing, output directory.

**Linker tab**:

The linker uses `bearingwear.cmd` from the source tree. Don't modify it — that file is what gives `_c_int00` its fixed flash address `0x3F7F00`.

---

## 4. Build

**Project → Build**, or hit F7.

Expected output: 0 errors, 0 warnings, the line `Build Complete` at the bottom.

Outputs land in `Debug/` next to the source:
```
SourceCode1/SPU_Firmware/FirmwareSource_6.20/Debug/
├── bearingwear.out      ← COFF executable
├── BearingWear.map      ← linker memory map (USEFUL for diagnosis)
├── *.obj                ← per-file object files
└── ...
```

**Validation hint**: `BearingWear.map` should have the line `ENTRY POINT SYMBOL: "_c_int00"  address: 003f7f00`. If `_c_int00` is at any other address, something's misconfigured (this is the precise issue we hit with modern CGT — see `implementation_docs/POST_AUTONOMOUS_TODO.md` for the diagnosis).

---

## 5. Convert `.out` → `.a00` via hex2000

CCS 3.3 SR12 includes `hex2000.exe` v4.13. The legacy build used this exact command (per `cc_build_Debug.log`):

```cmd
C:\CCStudio_v3.3\C2000\cgtools\bin\hex2000.exe ^
   <repo>\SourceCode1\SPU_Firmware\FirmwareSource_6.20\Debug\bearingwear.out ^
   -sci8 -a -boot
```

Or use the helper batch file already in the repo:
```
SourceCode1/SPU_Firmware/FirmwareSource_6.20/CC3_3hexprogram.bat
```

This runs the hex2000 command and produces `bearingwear.a00` in the same `Debug/` directory.

**Output**:
```
Debug/bearingwear.a00   ← ASCII-Hex bootloader format, ~470 KB, CRLF line endings
```

**Verification (should match the field-shipped 2016 reference within ~1%)**:
```
file size:  ~470,000 bytes  (the 2016 reference is 472,278 bytes)
SHA256:     should be near-identical to:
            (whatever the field-shipped xtsw_v6_20 firm(160920).a00 hashes to)
```

If the source code is unmodified, the resulting `.a00` should be byte-identical or within a handful of bytes of the 2016 reference. **We have applied three patches to the legacy code** (Lv-005, Lv-008, Lv-010 — see `implementation_docs/LEGACY_BUGS.md`). With those patches applied, the binary will differ from the 2016 reference in the patched code regions but otherwise match.

If you want a true byte-exact reproduction of the 2016 reference, temporarily revert the three patches before building:
```bash
cd SourceCode1/SPU_Firmware/FirmwareSource_6.20
git log --oneline -- man.c mancal.c params.c
# Find the three Lv-* commits and `git checkout <hash>~1 -- <file>` to revert each
```

---

## 6. Convert `.a00` → `.fr2` via FR2 Generator

(Same flow we already documented; same `.fr2` we already converted bit-exactly.)

1. Make sure **LabVIEW 2011 SP1 32-bit Runtime** is installed (see `implementation_docs/DEPLOY_PIPELINE.md`).
2. Run `AMOT XTSW+ FR2 Generator/AMOT XTSW+ FR2 Generator.exe`.
3. Browse for input `.a00` (the one from step 5).
4. Click Generate. Output is `.fr2` in the same directory.
5. Sanity-check: ~150 KB. The 2016 reference is 156,734 bytes. A 14-byte stub means the LabVIEW runtime or `.a00` line endings are wrong (CCS 3.3 hex2000 produces CRLF natively, so this should not happen — but verify with `head -c 8 yourfile.a00 | xxd`; expect `02 0d 0a 41 41 20 30 38`).

---

## 7. Flash and verify

(Standard AMOT SPU Upgrade tool flow — see `implementation_docs/DEPLOY_PIPELINE.md` step 5.)

1. Connect the SPU via RS-485.
2. Run `UpgradeSPU.exe`.
3. Select COM port, select baud rate (38400 default), select your `.fr2`.
4. Click Upgrade.

Stages will progress through:
- Reading Update File ✓
- Checking SPU Versions (pre-update) ✓
- Erasing SPI Flash ✓
- Writing SPI Flash ✓
- Erasing/Programming Master SPU ✓
- **Checking SPU Versions (post-update)** ← if this succeeds, the firmware booted and Modbus is responding

If "Checking SPU Versions (post-update)" succeeds with the CCS 3.3 build but failed with the modern CGT builds, **that's the diagnostic we needed**: the modern CGT runtime / startup code has an incompatibility we haven't pinned down (likely `.cinit` format, EABI / COFF runtime divergence, or auto-init order).

---

## 8. What this proves

| Result | Implication |
|---|---|
| CCS 3.3 build flashes successfully | Source code + linker .cmd are correct. The issue is purely in the modern CGT toolchain interaction. Long-term: maintain CCS 3.3 build for legacy `bearingwear.a00`; pursue modern CGT only for `src/` (hybrid + pristine) where C99 is required. |
| CCS 3.3 build also fails | Something has changed in the source tree (e.g., one of our three Lv- patches has a bug). Revert patches, rebuild, retest. If still fails, bench hardware itself is the suspect. |

The CCS 3.3 build is the regression oracle. Once it produces a working `.fr2`, you can also use that build to validate any future legacy-code patches — they should produce a similar-sized `.a00` and a working `.fr2`.

---

## 9. If you don't have CCS 3.3 SR12

The toolchain isn't trivially redistributable. Sources to try in order:

1. **Original AMOT engineer or build server** — wherever the 2016 reference firmware was originally built. The CCS 3.3 install on that machine has all the right service packs and license files.
2. **TI's archive request** — TI may still provide CCS 3.3 SR12 to existing customers via a support ticket: <https://e2e.ti.com/support/microcontrollers/c2000-microcontrollers-group/c2000>.
3. **Internet archive** — `web.archive.org` snapshots of TI's old download page sometimes have direct download links. Check around 2010-2014 era.
4. **CDROM / ISO archives** — CCS 3.3 was distributed on CD/DVD with TI Code Composer Studio Essentials kits. If your organization has any old TI dev kit boxes from that era, the disc may be there.

**TI does NOT recommend CCS 3.3 for new development** — for new projects use modern CGT. We're using it specifically to maintain a legacy binary that was originally built with it.

---

## 10. Useful tips

- **CCS 3.3 on Windows 10**: install in `C:\CCStudio_v3.3\` (default). If it crashes on launch, run as Administrator and / or use Win XP SP3 compatibility mode. The dongle license driver may need separate installation if your install came with one.
- **Project file paths are absolute**: the `BearingWear.pjt` references files relative to `SourceCode1/SPU_Firmware/FirmwareSource_6.20/`. As long as you open it from that directory, paths resolve. If CCS warns about missing files, check that the working directory is correct.
- **Keep `Debug/` clean between builds**: stale `.obj` files can mask source changes. Right-click project → **Clean** before each build.
- **Don't touch `bearingwear.cmd`**: this is the linker .cmd file that pins critical sections (especially `_c_int00` at `0x3F7F00`). Modifying it is what caused the modern-CGT build's structural divergence.

---

## 11. Sanity-checking checklist before flashing

Before sending the new `.fr2` to the SPU:

- [ ] `BearingWear.map` shows `ENTRY POINT SYMBOL: "_c_int00"  address: 003f7f00`
- [ ] `bearingwear.a00` is ~470 KB
- [ ] `bearingwear.a00` first bytes are `02 0d 0a 41 41 20 30 38` (STX + CRLF + "AA 08")
- [ ] `bearingwear.fr2` is ~150 KB
- [ ] `bearingwear.fr2` first bytes are `5b 41 4d 4f 54 5d 80 00` (`[AMOT]` + 2 magic bytes)
- [ ] FR2 Generator UI reported a non-trivial block count (not "1 block written" if file is small — that was the LF/CRLF symptom we hit earlier)

Once all checked: proceed to flash.
