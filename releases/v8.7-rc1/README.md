# Release v8.7-rc1 — bench-validation candidate firmwares

> **Status**: release candidate, **not** for fleet rollout. These four `.fr2` files are intended for **bench validation only**.
> **Created**: 2026-04-28
> **Source commit**: `a5ee9762` on `main`

This directory pins the four `.a00 → .fr2` artifacts produced from the v8.7-compliance work, plus the SHA-256 hashes of both the `.fr2` deliverables and the source `.a00` inputs that produced them. Anyone who later asks "what bytes did we actually flash for bench session N?" can answer it from this directory and `SHA256SUMS`.

---

## The four firmware artifacts

| File | Built from | Purpose during bench |
|---|---|---|
| `regression_oracle_v6_20.fr2` | Original 2016 AMOT-shipped `.a00` (unmodified) | **Regression baseline.** Bit-exact match to the 2016 fleet-shipped `6.20bearingwear.fr2`. Flash this first; capture `sensor[].endresult` over UART under known stimulus → `golden_v6_20_endresult.csv`. Subsequent builds are compared against this capture. |
| `bearingwear.fr2` | `build/legacy/bearingwear.a00` — **legacy v6.20 source recompiled with modern TI CGT 25.11**, plus our three legacy patches: Lv-005 (`mancal.c` calibration restart buffer overflow), Lv-008 (`params.c` Modbus param OOB read), Lv-010 (`man.c` 16-bit pre-warning timer overflow). | **Toolchain validation.** Confirms modern CGT 25.11 produces a behaviourally-equivalent v6.20 firmware. Bench should match `regression_oracle` within ADC noise tolerance, with three documented behavioural deltas from the patches. If this doesn't match within tolerance, the modern toolchain is producing different code-gen than CCS 3.3 era and *all subsequent builds need toolchain investigation before they're trustworthy*. |
| `bwm_hybrid.fr2` | `build/hybrid/bwm_hybrid.a00` — legacy hardware infrastructure (boot, ADC ISR, Modbus, SD card, etc.) linked with src/ algorithm modules (speed_comp, slow_wear, rapid_wear, sensor_adjust, alarm thresholds), via `src/integration/man_legacy_bridge.c`. Modal RPM and alarm classification use **placeholder** implementations (simple-average modal, stateless classification). | **Integration architecture validation.** Tests whether the bridge architecture (Phase B-1..B-5 work) actually functions on real hardware: does it boot, does the ADC ISR connect to src/ algorithms, does Modbus expose live values, does the SD card log? The placeholder modal/alarm minimizes confounding behavioural change so any divergence is attributable to the integration seam, not algorithmic differences. |
| `bwm_hybrid_pristine.fr2` | `build/hybrid_pristine/bwm_hybrid_pristine.a00` — same as `bwm_hybrid` but built with `-DBWM_PRISTINE_INTEGRATION=1`, which switches to the spec-compliant code paths: legacy-equivalent modal RPM histogram with `RPM_MODAL_OFFSET=25` 3-strike/10-reset latch, plus latched alarm bits with hysteresis on clear (using `allsensors.sensorhysteresis`). | **v8.7 spec-compliance validation.** A correct pristine build should be operationally indistinguishable from `regression_oracle` on benign signals; where it diverges should match the v8.5→v8.7 spec deltas tabulated in `official_docs/SPEC_COMPLIANCE.md`. **This is the v8.7 release-candidate target.** |

## File hashes

See `SHA256SUMS` for both `.fr2` and source `.a00` hashes, plus a generation timestamp. Verify with:

```bash
shasum -a 256 -c SHA256SUMS
```

## Recommended bench order

1. Flash `regression_oracle_v6_20.fr2` → capture golden vector.
2. Flash `bearingwear.fr2` → confirm modern-CGT recompile matches (toolchain validation).
3. Flash `bwm_hybrid.fr2` → confirm bridge architecture works (integration validation).
4. Flash `bwm_hybrid_pristine.fr2` → confirm spec-pristine modal + latching match v6.20 on real signals (spec-compliance validation).

## Toolchain-flag variants of the legacy build (for bench triage)

The first attempt at flashing `bearingwear.fr2` (built with `-O2`, `-mt`) produced "Failed to check versions after update" — the new firmware flashed successfully but Modbus never came up after reboot. This is symptomatic of timing-sensitive peripheral init code being aggressively optimized away. Two additional `.a00` files are staged here for re-conversion via the AMOT FR2 Generator:

| File | Size | Differs from legacy build by | Hypothesis |
|---|---|---|---|
| `bearingwear-O1.a00` | 468,726 | `-O1` instead of `-O2` | Match legacy CCS 3.3's `-o1` optimization; preserve busy-wait timing loops in SCI/SPI/ADC init code |
| `bearingwear-O1nomt.a00` | 468,788 | `-O1` AND drop `-mt` flag | Same as above plus closer to legacy's `-md` data-mode addressing semantics |

Note: `bearingwear-O1heap.a00` was generated as a separate experiment but turned out **byte-identical** to `bearingwear-O1.a00` because `.esysmem` is uninitialized and not in the boot table — the heap-relocation hypothesis is therefore not testable via this mechanism. SHA-256 confirms identity.

**Bench order for triage**:
1. Convert `bearingwear-O1.a00` → `.fr2` via FR2 Generator. Flash. If "Failed to check versions after update" stops happening, the optimization-level theory was correct.
2. If O1 still fails the same way, convert `bearingwear-O1nomt.a00` → `.fr2`. Flash. If that succeeds, the `-mt` addressing-mode theory was the cause.
3. If both still fail, see "Other ideas" in `implementation_docs/POST_AUTONOMOUS_TODO.md` — runtime library version, fir16.asm calling convention, etc.

Decision tree for outcomes is in `implementation_docs/POST_AUTONOMOUS_TODO.md` Priority 0 § "Phase B integration finishing work" and `official_docs/SPEC_COMPLIANCE.md`.

## How these were produced

1. Source compiled to `.out` via TI CGT 25.11 (cl2000) on macOS arm64.
2. `.out` → `.a00` (ASCII-Hex with SCI-8 boot table) via `hex2000 -boot -sci8 -a`.
3. **Critical step**: `.a00` post-processed `LF → CRLF` to satisfy the 2012 LabVIEW VI's line-ending requirement (otherwise produces a 14-byte stub — see commit `de8ef5c` for the discovery).
4. `.a00 → .fr2` via `AMOT XTSW+ FR2 Generator.exe` running on Windows under **LabVIEW Run-Time Engine 2011 SP1, 32-bit**. Confirmed bit-exact when run on the 2016 reference `.a00` (matches `6.20bearingwear.fr2` SHA-256 `cc3247…6aa0`).

Reproducible from source:

```bash
# Steps 1-3 (run on macOS or Linux):
cd /path/to/bearingsensor
make clean
make binaries
# Outputs: build/{legacy,src,hybrid,hybrid_pristine}/*.a00  — all CRLF.

# Step 4 (run on Windows with LabVIEW RTE 2011 SP1 32-bit installed):
# Drag each .a00 onto AMOT XTSW+ FR2 Generator.exe.
# Output is the .fr2 in this directory.
```

## What this release is NOT

- ❌ Not bench-validated yet. Hardware bench results are required before this becomes anything other than a candidate.
- ❌ Not for fleet rollout. The first bench session is a single-board confirm-it-runs check, not a deployment trigger.
- ❌ Not a final release. Once bench validation completes, the validated `.fr2` and its `SHA256SUMS` line should be promoted to a `releases/v8.7.0/` directory (or whatever release version number AMOT assigns) with the bench-validation date written into the README.

## Open questions

See `official_docs/CUSTOMER_RELEASE_NOTES.md` §7 for the seven open customer questions that must be resolved before this becomes `v8.7.0`. Most consequential:
- Bench validation timing (when is hardware available?)
- Version register value (should the v8.7 firmware report `0x0700`, `0x0870`, or another? Currently the build inherits `versionreg = 0x0620` from legacy `version.c`).
- Lv-010 fix rollout strategy (per-installation or globally — operator-visible behaviour change).
