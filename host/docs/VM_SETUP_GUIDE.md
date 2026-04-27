# Linux VM Setup for TI C2000 Cross-Compilation

> **Purpose**: Set up an Ubuntu Linux environment that can compile our refactored `src/` tree into a flashable `.a00` binary for the TI TMS320F2811 (C2000 DSP). This guide is platform-agnostic — works on macOS (Apple Silicon or Intel), Windows, and Linux hosts.
>
> **Estimated time**: 30–60 minutes to a working build.

---

## Why a Linux VM and not native?

- TI Code Generation Tools (CGT) for C2000 ships for **Linux x86_64 and Windows x86_64**, not for macOS.
- Running on Linux gives us a stable, reproducible build environment that matches what TI engineers use internally.
- A VM (rather than dual-boot) lets you keep your macOS workflow.
- The build is non-interactive, so there's no GUI lag concern.

If you're already on Linux x86_64, skip to "Step 2: Install TI CGT-C2000".

---

## Step 1 — Pick and provision a VM

### Option A: UTM (recommended on Apple Silicon / M-series Macs)

UTM uses Apple's native virtualization framework. Free, fast, no licensing hassle.

1. Install UTM: `brew install --cask utm` (or download from https://mac.getutm.app/).
2. Download Ubuntu 22.04 LTS Server (x86_64 .iso) from https://ubuntu.com/download/server.
3. In UTM: **+** → **Emulate** (since you need x86_64 on Apple Silicon, not Virtualize ARM) → **Linux** → select the .iso.
4. Recommended VM specs:
   - **CPU**: 4 cores
   - **RAM**: 4 GB (8 GB if you also want to run Docker etc.)
   - **Disk**: 20 GB
   - **Architecture**: x86_64 (this is critical — TI CGT is x86_64 only)
5. Boot, install Ubuntu Server (minimal install, OpenSSH server included).
6. After install, note the VM's IP: `ip addr show`.
7. From your Mac terminal: `ssh <user>@<vm-ip>` and you're in.

> **Note**: Emulating x86_64 on Apple Silicon is slower than native (~3-5x), but the BWM build is small (≤10 sec compile time even on slow hardware). Acceptable.

### Option B: Parallels Desktop (commercial, faster on M-series)

Best performance on Apple Silicon if you're already a Parallels user. ~$100/year. Same Ubuntu install process; Parallels handles the architecture translation.

### Option C: VirtualBox (free, Intel Macs only)

Free, mature, well-documented. Doesn't support Apple Silicon. If you're on an Intel Mac or Linux/Windows host, this works fine.

### Option D: Docker (recommended if you don't need a full VM)

If your goal is just to run the build and not develop interactively, Docker is the lightest option. See `docs/Dockerfile` (TBD — to be authored when toolchain is finalized).

```dockerfile
# Sketch — refine after Step 2
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y build-essential wget
# ... install TI CGT-C2000 here ...
WORKDIR /workspace
ENTRYPOINT ["make"]
```

Run with `docker run -v $(pwd):/workspace bwm-build make`.

### Option E: Cloud VM (if you don't want a local VM)

A free-tier AWS EC2 (t2.micro) or GCP e2-micro is plenty. Spin up Ubuntu 22.04, follow Step 2.

---

## Step 2 — Install TI CGT-C2000 in the VM

> The detailed version recommendation comes from `host/docs/TI_TOOLCHAIN_RECOMMENDATION.md` (separate document). This step assumes you've chosen a CGT version per that recommendation.

### Inside the Ubuntu VM:

```bash
# 1. Install build essentials
sudo apt-get update
sudo apt-get install -y build-essential git make python3

# 2. Download TI CGT-C2000
# Pick a version per TI_TOOLCHAIN_RECOMMENDATION.md.
# Example for v22.6.x (the last version known to fully support legacy C28x):
mkdir -p ~/ti
cd ~/ti
wget https://software-dl.ti.com/codegen/esd/cgt_public_sw/C2000/22.6.0.LTS/ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin
chmod +x ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin

# 3. Install (interactive — accept defaults to ~/ti/ti-cgt-c2000_22.6.0.LTS)
./ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin

# 4. Set environment variables (add to ~/.bashrc)
export TI_CGT_C2000=~/ti/ti-cgt-c2000_22.6.0.LTS
export PATH="$TI_CGT_C2000/bin:$PATH"

# 5. Verify
cl2000 --version    # Should print the compiler version banner
```

### Smoke test:

```bash
cd /tmp
cat > smoke.c <<'EOF'
int main(void) { return 42; }
EOF
cl2000 -v28 -ml -mt -O0 smoke.c -z -o smoke.out --rom_model
ls -l smoke.out  # confirms the linker ran end-to-end
```

If `smoke.out` exists, the toolchain works.

---

## Step 3 — Mount the bearingsensor repo into the VM

Two clean approaches:

### Option A: Git clone (cleanest)

```bash
cd ~
git clone https://github.com/kyelok/bearingsensor.git
cd bearingsensor
```

### Option B: Mount the host directory as a shared folder

UTM, Parallels, and VirtualBox all support shared folders. Mount your Mac's `/Users/kyelok/dev/bearingsensor/` into the VM at `/mnt/bearingsensor/` so edits propagate live.

UTM example (with VirtFS):
```
VM Settings → Sharing → Path: /Users/kyelok/dev/bearingsensor
Inside VM: sudo mount -t 9p -o trans=virtio share /mnt/bearingsensor
```

---

## Step 4 — Author the cross-compile Makefile

This is the work item under `host/docs/POST_AUTONOMOUS_TODO.md` § Priority 1. The skeleton:

```makefile
# build/Makefile.cross — TI C2000 cross-compile

CC      = $(TI_CGT_C2000)/bin/cl2000
HEX     = $(TI_CGT_C2000)/bin/hex2000
CFLAGS  = -v28 -ml -mt -O2 -DLARGE_MODEL --abi=eabi
LDFLAGS = -z --rom_model
LIBS    = -l rts2800_ml.lib

# Sources from the refactored src/ tree
SRC_DIRS = src/core src/speed_comp src/slow_wear src/rapid_wear \
           src/sensor_adjust src/storage src/alarms src/system src/vendor
SRCS    = $(wildcard $(SRC_DIRS:%=%/*.c))
OBJS    = $(SRCS:.c=.o)

# Linker command file (preserved from v6.20)
LCF     = SourceCode1/SPU_Firmware/FirmwareSource_6.20/bearingwear.cmd

OUT_DIR = build/cross
OUT     = $(OUT_DIR)/bwm.out
HEX_OUT = $(OUT_DIR)/bwm.a00

all: $(HEX_OUT)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

%.o: %.c | $(OUT_DIR)
	$(CC) $(CFLAGS) -c $< --output_file=$@

$(OUT): $(OBJS) | $(OUT_DIR)
	$(CC) $(LDFLAGS) $(OBJS) -z -o $@ $(LCF) $(LIBS)

$(HEX_OUT): $(OUT)
	$(HEX) -boot -sci8 -b -order MS -romwidth 16 $(OUT) -o $@

clean:
	rm -rf $(OUT_DIR)

.PHONY: all clean
```

Run with `cd ~/bearingsensor && make -f build/Makefile.cross`.

> **Expected blockers**: TI CGT v22.x may flag some legacy patterns. Common ones:
> - `interrupt` keyword is now `__interrupt` (use `--c89_interrupts` to keep the old form, or update source).
> - Old `eabi=coff` is gone; modern toolchain uses `--abi=eabi` (ELF). Linker command file may need `--rom_model` flag adjustments.
> - Optimizer is more aggressive; some `volatile`-missing globals may misbehave at `-O2`. Start with `-O0` for the first build.

---

## Step 5 — Reproduce the field-tested v6.20 binary as a baseline

Before trusting the new toolchain on `src/`, reproduce a known-good binary:

```bash
cd ~/bearingsensor
# Build the legacy v6.20 sources with the new toolchain
make -f build/Makefile.cross.legacy   # (Makefile to be authored — points at SourceCode1/SPU_Firmware/FirmwareSource_6.20/)
ls build/cross/v6_20.a00

# Compare to the field-tested binary
diff build/cross/v6_20.a00 SourceCode1/SPU_Firmware/FirmwareSource_6.20/xtsw_v6_20\ firm\(160920\).a00
```

The new build will NOT be byte-identical (different compiler version, different optimizer). What we look for is **behavioral equivalence**:

- Same `versionreg` (0x620)
- Same Modbus parameter table layout
- Same FRAM offsets
- Same ADC sampling rate
- Same alarm thresholds at boot

A symbol-table comparison tool (`nm`, `objdump`, or TI's `dis2000`) helps validate.

If behavior diverges in unexpected ways, that's the first signal that the chosen CGT version is too aggressive — fall back to a more conservative version per `TI_TOOLCHAIN_RECOMMENDATION.md`.

---

## Step 6 — Build the refactored src/ and integrate

Once Step 5 produces an equivalent v6.20 binary:

```bash
cd ~/bearingsensor
make -f build/Makefile.cross   # builds src/ tree
ls build/cross/bwm.a00
```

This binary is what we'd flash to a real F2811 board (Step 7, hardware bench).

---

## Step 7 — Hardware bench validation (deferred)

See `host/docs/POST_AUTONOMOUS_TODO.md` § Priority 1. Requires a physical TMS320F2811 development board, an XDS100v3 JTAG debugger, and an SD card.

---

## Troubleshooting

### "cannot execute binary file: Exec format error" when running cl2000

You're on Apple Silicon and the VM is running ARM. Re-create the VM with **x86_64 emulation**, not ARM virtualization. CGT-C2000 has no ARM build.

### Linker complains about "rts2800_ml.lib not found"

The runtime library path needs to be on the compiler's library search path. Check `$TI_CGT_C2000/lib/` exists and contains `rts2800_ml.lib`. If not, the install was incomplete — re-run the installer.

### Compiler errors on `EALLOW` / `EDIS` macros

These are TI-specific assembly intrinsics. They live in `$TI_CGT_C2000/include/F2806x_Device.h` (or similar). The legacy v6.20 source has its own definitions in `core.h`. If both are included, you'll get redefinition errors. Use `-D__TMS320C2000__` so the source-tree definitions are gated correctly, OR remove the duplicate from `src/`.

### Floating-point intrinsics differ

F2811 has no FPU. All `float` operations are software-emulated via `rts2800_ml.lib`. If you accidentally link against an FPU-aware runtime (`rts2800_fpu32_ml.lib`), the binary will silently produce wrong results. Always check which runtime you're linking against.

### Build is slow under emulation

Expected on Apple Silicon. ~10-30 seconds for a clean build. If unbearably slow, switch to a Linux x86_64 cloud VM (AWS t2.micro free tier).

---

## Once it works

1. Commit `build/Makefile.cross`, `build/Makefile.cross.legacy`, and any tweaks to `bearingwear.cmd`.
2. Add a `make ti-build` target to the top-level Makefile that wraps the cross-compile.
3. Document the chosen CGT version in `host/docs/TI_TOOLCHAIN_RECOMMENDATION.md`.
4. Update `host/docs/POST_AUTONOMOUS_TODO.md` to mark "TI CGT-C2000 build pipeline" as done.
5. Move on to Step 7 (hardware bench validation).
