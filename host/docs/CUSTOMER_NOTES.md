# BWM Customer Release Notes — v8.7 Compliance Update

> **Audience**: Vessel operators, marine engineers, classification surveyors, AMOT field service technicians.
> **Effective**: from the first installation receiving the v8.7-compliant SPU firmware.

This document accumulates everything end-customers need to know about the v8.7-compliance update. It supersedes prior service bulletins for v8.5-era installations.

---

## What's new — at a glance

The SPU firmware has been updated to comply with **MAN Diesel & Turbo Bearing Wear Monitoring specification revision 07** ("8.7"), dated 2018-09-18. Previously the SPU implemented revision 05 ("8.5", 2012-09-27).

The headline customer-visible changes:

1. **Tightened rapid-wear alarm limits** (§7.2 — see Action Required).
2. **Refined sensor adjustment workflow**: three procedures replace the single procedure.
3. **New chapter 8 hardware interface**: standardized alarm-relay tag numbers and toggle behavior.
4. **Storage requirement expansion**: hit-by-hit data, compensation-curve change log, surveyor XML file (rolling out across point releases).
5. **One simplification customers will not notice**: rapid-wear reset on comp-curve update changed from a derived expression to literal zero. Effect: fewer transient alarms during early learning. No operational change.

The system also retains a **vendor extension** (MB-Sum) not described in any MAN specification — see "Vendor Extensions" below.

---

## Action Required — Alarm Limit Re-tuning

The v8.7 spec tightens rapid-wear alarm limits substantially:

| Limit | v8.5 (prior) | v8.7 (new default) | Change |
|---|---|---|---|
| `Alarm_Basic, SingleRapid` | 250 µm | **200 µm** | -20% |
| `Alarm_Basic, CylRapidAve` | 180 µm | **90 µm** | **-50%** |
| `Alarm_Basic, TwinCylRapidAve` | 250 µm | **75 µm** | **-70%** |

Plus a refined slow-wear table:

| Limit | v8.5 (prior) | v8.7 (new default) |
|---|---|---|
| Slowdown filtered sensor value (normal) | ±0.5 mm | unchanged |
| **Slowdown sensor deviation (normal)** | ±0.5 mm | **±0.6 mm** (loosened) |
| **Slowdown sensor deviation (learning)** | ±0.7 mm | **±0.5 mm** (tightened) |

**Why**: The new limits reflect five years of fleet operational data MAN collected since rev 05. Engines tracked under the looser 8.5 limits showed bearing-failure precursors that fell *below* the alarm thresholds. Tightening was the design intent of rev 06.

**Why this matters to operators**: An engine that has been running healthy under the v8.5 firmware will likely show *more* alarms under the v8.7 defaults during the first weeks of operation. This is expected — the new alarms are surfacing precursors that were previously invisible, not creating false alarms.

**What to do**: For each installation, AMOT field service should:

1. Capture a 30-day baseline of the four key rapid-wear metrics (Single, CylAve, TwinAve, MB-Sum) across the engine's typical operating profile, BEFORE the v8.7 firmware is installed.
2. After v8.7 installation, allow at least 72 hours of operation before treating any alarm as actionable. This lets the new thresholds settle and lets operators see what previously-suppressed signals look like.
3. If the new defaults cause persistent alarms on an engine with no documented bearing issues, AMOT may apply a per-installation override via Modbus registers (single = 4622, cyl = 4623, mbsum = 4624) to relax the threshold — within MAN-approved bounds. Document the override in the engine's commissioning log.

**What NOT to do**: Do not silence alarms by raising thresholds back to the v8.5 values without engineering review. If the new alarms appear, the spec author (MAN) considers them informative.

---

## Vendor Extensions — what's NOT in the MAN spec

### MB-Sum (Main Bearing neighbour sum)

The XTSW+ implementation includes a **fourth alarm metric** that complements MAN's three (SingleRapid / CylRapidAve / TwinCylRapidAve):

- **MB-Sum** = sum of the two sensors immediately adjacent to each main bearing (the aft sensor of cylinder N + the fore sensor of cylinder N+1), evaluated as |sum| against a configurable threshold.

**Why we have it**: MAN's three metrics target crosshead and crankpin bearings. None of them specifically target the *main* bearings between cylinders. MB-Sum closes that gap. AMOT engineers added it in 2010 in response to a customer's main-bearing failure that the spec metrics did not detect early enough.

**What it means for operators**: An additional safety net. MB-Sum has its own configurable threshold (Modbus register 4624) so customers can tune main-bearing sensitivity independently. If MB-Sum triggers, treat it the same as a TwinCylRapidAve alarm — investigate the bearings between the two cylinders identified.

**Trustworthiness**: MB-Sum has been in production for 16 years across the AMOT XTSW+ fleet. It has been carried forward through every firmware revision (v6.10, v6.20, and the current v8.7-compliance update). It is fully tested (`test_module_mb_sum.c`, 10 unit tests) and documented (`host/docs/vendor_extensions/mb_sum.md`).

**Compliance status**: MB-Sum does NOT replace any MAN BWM specification metric. The system still implements all MAN-mandated metrics in full. MB-Sum is purely additive; classification surveyors should treat it as vendor-specific monitoring beyond MAN's minimum.

### Future extensions

Other vendor features (CPP load-percent calculation, SLEM supplementary monitoring, Water-in-Oil detection, sensor-moving threshold) are documented in their own files under `host/docs/vendor_extensions/` and follow the same principle: additive, fully tested, and never overriding MAN-mandated behavior.

---

## What changed under the hood — for engineers

The v8.7 firmware update is built on a refactored codebase (`src/`). Key engineering changes:

- **CHAR_BIT-portable memory API**: every cross-platform memory operation goes through `word_mem.h` helpers (`word_zero`, `word_copy`, `WORDS_OF`). Eliminates a class of latent bugs that were silent on the chip but would have surfaced during host-side testing.
- **Spec-defined module boundaries**: each spec chapter maps to a distinct `src/<topic>/` module. New engineers can navigate the codebase by spec section.
- **Realistic hardware fakes**: full host-side emulation (`host/fakes/`) of FRAM, ADC, RTC, and a synthetic engine. Tests reproduce real BWM scenarios at the unit level.
- **Spec-tagged tests**: every test references the spec section it covers (`@spec 8.7 §N.M.K`). The traceability matrix at `host/docs/SPEC_TO_TEST_MAPPING.md` is auto-readable.
- **MAN spec preserved as source of truth**: original spec PDFs are in the repo. OCR'd cleaned text at `host/specs/extracted/`. No "what the engineer remembered the spec said" — always what the document actually says.

For full engineer-facing documentation, see `host/docs/FIELD_MANUAL.md`.

---

## Compatibility & migration

### Configurations preserved across the upgrade

The v8.7 firmware reads the same FRAM layout as v6.20. Customer per-installation Modbus configurations migrate automatically:

- Cylinder count / engine type
- Sensor enable/disable per channel
- Rough cal (3-stage) state — preserves any in-progress calibration
- Fine cal (500-hour) state — sample counts and reference values
- Sensor offsets (offsetA, offsetB)
- Custom alarm thresholds (where overridden from default)
- MB-Sum threshold (4624)
- Pre-warning history per sensor
- Engine runtime hours
- Event log entries
- Long-term storage (5+ years of data)

### Configurations that reset on v8.7 install

- Rapid-wear EMAs (rapid_slow, rapid_fast) — reinitialized to zero. They re-converge within the first ~20 revolutions of operation, well below alarm-trigger latency.
- Alarm latches — cleared. Operators must re-acknowledge any pending alarm.
- Pre-warning offsets — preserved, but the firmware logs a "v8.7 upgrade" event so the timeline is reconstructable.

### Procedure for installing v8.7 firmware

1. Capture a baseline (see "Action Required").
2. Schedule downtime for the SPU during a non-operational period (port stop, dry dock).
3. Power the SPU.
4. Use the reprog procedure documented in `BearingWear.SerialFlash` and `reprog.c` (legacy v6.20 process — unchanged).
5. After reprog, verify firmware version reports as `0x870` (was `0x620` for v6.20).
6. Acknowledge any prior alarms.
7. Resume operation. Monitor for 72 hours before treating any new alarm as actionable.

---

## Things customers should know that previously weren't documented

Accumulating list — please add as more emerges from field deployment.

- **Modbus 4624 (MB-Sum threshold)** is per-installation tunable but defaults to a MAN-conservative value. Engines with a documented main-bearing-prone history should review this threshold with AMOT.
- **CC-split position** (Modbus register, value range 1..N): set this for engines with a physical bank break (e.g., V-config or twin-bank engines). Default 0 = no split.
- **The sensor-replacement bug** (zeroes RPM on non-selected sensors during the replacement workflow) is being addressed in a follow-up update. Until then, when replacing a sensor, perform the replacement during scheduled downtime, not under load.
- **The system_info.csv fields** "firmware version" and "KValueDamageMonitoring" do not display correctly in CPU-side exports. Field investigation: the CSV is generated by the Windows dashboard software, not the SPU firmware. The dashboard team has the issue tracked separately.
- **Hit-by-hit storage (12h, Appendix E format)**: NOT YET FULLY IMPLEMENTED in this firmware version. Engineers should configure the SPU log rate to 30 revs/sample (the maximum currently supported); the 12h hit-by-hit feature lands in a follow-on release.
- **XML 4-part surveyor file**: NOT YET FULLY IMPLEMENTED. The system currently exports binary/CSV. For surveyor reviews, AMOT field engineers can convert the binary export to the XML format manually using the offline tool `AMOT XTSW+ FR2 Generator.exe`.

---

## Where to find more

| Need | File |
|---|---|
| Original MAN spec | `3091686-8.7.pdf` (cleaned text in `host/specs/extracted/8.7/8.7.md`) |
| Engineer field manual | `host/docs/FIELD_MANUAL.md` |
| Spec → test → code matrix | `host/docs/SPEC_TO_TEST_MAPPING.md` |
| MB-Sum design rationale | `host/docs/vendor_extensions/mb_sum.md` |
| CHAR_BIT mitigation strategy | `host/audits/charbit_audit.md` |
| Known v6.20 → v8.7 deltas | `host/specs/v6.20_compliance.md` |
| Outstanding follow-ups | `host/docs/POST_AUTONOMOUS_TODO.md` |

For technical questions about this firmware, contact AMOT engineering. For specification questions, contact MAN Energy Solutions referencing document 3091686-8 revision 07.
