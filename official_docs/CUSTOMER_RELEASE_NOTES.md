# BWM SPU Firmware — Customer Release Notes (v8.7 Compliance Update)

**Audience**: vessel operators, marine engineers, classification surveyors, AMOT field service technicians.
**Effective**: from the first installation receiving the v8.7-compliant SPU firmware.
**Issue date**: 2026-04-28.

This document supersedes prior service bulletins for v8.5-era installations and replaces the earlier engineering draft (`host/docs/CUSTOMER_NOTES.md`).

---

## 1. What's new — the v8.5 → v8.7 upgrade headline

The SPU firmware has been updated to comply with **MAN Diesel & Turbo Bearing Wear Monitoring specification revision 07** ("v8.7"), dated 2018-09-18. The previous shipping firmware (v6.20) implemented revision 05 ("v8.5", 2012-09-27).

The customer-visible changes:

1. **Tightened rapid-wear alarm limits** (table 7.5 of the spec). See section 4 for the action this requires.
2. **Refined sensor adjustment workflow**: three procedures replace the single legacy procedure, picked according to how long the sensor was out of service and whether repairs invalidated history.
3. **New chapter 8 hardware interface**: standardized alarm-relay tag numbers (XS8126 alarm, XS8127 slowdown, XS8129 system-fail) and an adjustable 0.1–5 s toggle period on the alarm relay.
4. **Storage requirement expansion**: hit-by-hit data (12 hours per revolution, appendix-E format), compensation-curve change snapshots (appendix-F format), and the four-part XML surveyor file (appendices A–D).
5. **One simplification operators will not notice**: rapid-wear reset on comp-curve update changed from a derived expression to literal zero. Net effect: fewer transient alarms during early learning. No operational change.

The system also retains a **vendor extension** (MB-Sum) not described in any MAN specification — see section 5.

---

## 2. Bugs found and fixed

The following defects in the v6.20 firmware have been corrected in this release. Some are visible to operators; please review before commissioning.

### Bug 1 — sensor replacement zeroes other sensors' RPM (pending)

**What the operator saw**: when the sensor-replacement workflow was activated for one channel, the RPM reading for the *other* (non-selected) sensors went to zero, and normal monitoring stopped functioning until the workflow was exited.

**What changes**: the root cause has been identified (a typo in the modal-RPM detector at `man.c:345` plus tight coupling between the replacement state machine and the rapid-wear pipeline) and the fix is engineered in the new `src/` codebase. **The fix is not yet active on production firmware** — it lands once the integration layer (Phase B-3) wires `src/sensor_adjust/` into the live ADC ISR pipeline.

**Operator workaround until then**: perform sensor replacement only during scheduled downtime, not while the engine is operating.

**See**: `implementation_docs/BUG_1_FIX_NOTES.md`.

### Bug 2 — `system_info.csv` "SPU Firmware" field shows the wrong version (dashboard-side fix)

**What the operator saw**: the dashboard's exported `system_info.csv` reported the SPU firmware as `6.32` for v6.20, and as a blank string for round versions like v7.00. Customers comparing exports across vessels could not reliably tell which firmware was installed.

**What changes**: the formatter in the Windows dashboard (`VerificationData.cs`) has been patched. After the next dashboard rebuild ships, the field will display the correct human-readable version (e.g. `6.20`, `7.00`, `8.70`).

**Status**: SPU firmware itself was never affected. Patch is applied in source; **awaiting next dashboard rebuild and release**.

### Bug 3 — `KValueDamageMonitoring` shown as a negative number (dashboard-side fix)

**What the operator saw**: in the `system_info.csv` export, the `KValueDamageMonitoring` field appeared as a large negative number for any K-value setting above 32767 (the dashboard was mis-casting an unsigned Modbus register to signed 16-bit).

**What changes**: cast corrected in the dashboard source. After the next dashboard rebuild, the field displays the configured value correctly.

**Status**: SPU firmware itself was never affected. Patch is applied in source; **awaiting next dashboard rebuild and release**.

### Bug Lv-005 — calibration restart corrupts adjacent globals (patched)

**What the operator saw**: occasional, hard-to-reproduce changes in unrelated parameters (alarm thresholds, counters) after re-starting calibration on a system that had been running for a while. Operators sometimes described it as "the cal cleared more than I expected."

**What changes**: a buffer-overflow in the calibration restart path has been fixed. The class of unexplained-parameter-change artefact tied to re-cal is eliminated.

### Bug Lv-008 — Modbus parameter table out-of-bounds read (patched)

**What the operator saw**: rare; reading an unrecognised Modbus register could return garbage values rather than cleanly responding "register not supported."

**What changes**: the Modbus parameter lookup now correctly reports unsupported registers without dereferencing past the table.

### Bug Lv-010 — pre-warning timer 16-bit overflow (patched 2026-04-28; BEHAVIOURAL CHANGE)

**This is the headline behavioural change in this release. Read carefully.**

**What the operator saw**: the pre-warning algorithm is supposed to compute a rolling average over an operator-configured window (default 360 minutes / 6 hours) and fire a pre-warning when live values drift outside expected bounds. Because of a 16-bit unsigned-integer overflow in the timer-setup arithmetic on the C2000 chip (`prewarningtimer * 60 * SECS_TO_MS_MULTIPLIER` evaluated as 16-bit before being widened), the timer that gated the averaging window was actually firing after **~5 minutes**, not 6 hours, regardless of what the operator configured.

**What changes after the fix**: the averaging window now matches the configured value. With the default 360 minutes:

- The pre-warning baseline is computed over **6 hours** of operation, not 5 minutes.
- The baseline is **smoother and less reactive** to short-term sensor noise.
- Pre-warnings now reflect drift relative to a longer-term trend, not against a fast-changing reference.

**What to watch for after install**:

- During the first 6 hours after a fresh install, pre-warning behaviour will look different from what operators saw on prior installations. Allow at least one full averaging cycle before treating any pre-warning as actionable.
- If thresholds had been informally tuned against the prior 5-minute behaviour, they will likely need light re-tuning. AMOT field service can advise.

**Modbus interface unchanged**: `prewarningtimer` register still takes minutes. Only the underlying timer math is now correct.

---

## 3. Behavioural changes

### Pre-warning averaging window grows from ~5 minutes to the configured value (default ~6 hours)

This is the headline behavioural change in v8.7, driven by the Bug Lv-010 fix described above. It is the only operationally-visible change introduced by a defect fix in this release.

If an installation had been informally tuned against the previously-broken 5-minute window, threshold review with AMOT field service is recommended once the firmware is loaded and one full 6-hour baseline has been collected.

### Spec-driven simplifications (no operational impact)

- **Rapid-wear reset on comp-curve update**: the old derived form (`5RevAvg − RapidWearAvg`) is replaced by the literal `Rapid Slow = 0`, per spec §4.5/§5.2.4. Operators may notice slightly fewer transient rapid-wear alarms in the minutes after a learning-curve update.
- **Three slow-wear alarm-limit tables** (normal / refining / rough creation) replace the single set. The system selects the right table automatically based on calibration mode; operators do not configure this.

---

## 4. Action required — alarm-limit re-tuning

The v8.7 spec tightens rapid-wear alarm limits substantially:

| Limit | v8.5 (prior) | v8.7 (new default) | Change |
|---|---|---|---|
| `Alarm_Basic, SingleRapid` | 250 µm | **200 µm** | −20% |
| `Alarm_Basic, CylRapidAve` | 180 µm | **90 µm** | **−50%** |
| `Alarm_Basic, TwinCylRapidAve` | 250 µm | **75 µm** | **−70%** |

And refines a slow-wear table:

| Limit | v8.5 (prior) | v8.7 (new default) |
|---|---|---|
| Slowdown filtered sensor value (normal) | ±0.5 mm | unchanged |
| Slowdown sensor deviation (normal) | ±0.5 mm | **±0.6 mm** (loosened) |
| Slowdown sensor deviation (learning) | ±0.7 mm | **±0.5 mm** (tightened) |

**Why**: the new limits reflect five years of fleet operational data MAN collected after rev 05. Engines tracked under the looser v8.5 limits showed bearing-failure precursors that fell *below* the alarm thresholds. Tightening was the design intent of rev 06.

**What this means for operators**: a healthy engine running well under v8.5 firmware will likely show *more* alarms under the v8.7 defaults during the first weeks of operation. This is expected — the new alarms are surfacing precursors that were previously invisible, not creating false alarms.

**What to do at each installation**:

1. **Before** the v8.7 firmware is installed, capture a 30-day baseline of the four key rapid-wear metrics (Single, CylAve, TwinAve, MB-Sum) across the engine's typical operating profile.
2. **After** v8.7 installation, allow at least **72 hours of operation** before treating any new alarm as actionable. This lets the new thresholds settle and lets operators see what the previously-suppressed signals look like.
3. If the new defaults produce persistent alarms on an engine with no documented bearing issues, AMOT may apply a per-installation override via Modbus registers (Single = 4622, Cyl = 4623, MB-Sum = 4624) to relax the threshold within MAN-approved bounds. Document any override in the engine's commissioning log.

**What NOT to do**: do not silence alarms by raising thresholds back to the v8.5 values without engineering review. If the new alarms appear, the spec author (MAN) considers them informative.

---

## 5. Vendor extensions (not in the MAN spec)

These features are AMOT additions to the XTSW+ product. They are additive, fully tested, and never override MAN-mandated behaviour. Classification surveyors should treat them as vendor-specific monitoring beyond the MAN minimum.

### MB-Sum — actively supported

**MB-Sum** is a fourth alarm metric that complements MAN's three (SingleRapid / CylRapidAve / TwinCylRapidAve). It sums the two sensors immediately adjacent to each main bearing — the aft sensor of cylinder N plus the fore sensor of cylinder N+1 — and compares the absolute value to a per-installation threshold (Modbus register 4624).

**Why it exists**: MAN's three metrics target crosshead and crankpin bearings inside or below each cylinder. None specifically targets the **main bearings between cylinders**. MB-Sum closes that gap. AMOT engineers added it in 2010 in response to a customer's main-bearing failure that the spec metrics did not detect early enough.

**For operators**: an additional safety net. If MB-Sum triggers, treat it the same as a TwinCylRapidAve alarm — investigate the bearings between the two cylinders identified.

**Trustworthiness**: 16+ years of production use across the AMOT XTSW+ fleet. Carried forward through every firmware revision. Fully tested (10 unit tests in `host/test/algo/test_module_mb_sum.c` and 9 in `test_vendor_mb_sum.c`) and documented (`implementation_docs/vendor_extensions/mb_sum.md`).

### Deprecation candidates — under review

The following v6.20 vendor features are present in legacy firmware but **not yet ported** to the v8.7 codebase. AMOT engineering is reviewing whether each remains in active customer use before deciding to port forward or drop. Customer input on real-world usage is welcome.

- **CPP (Constant-current Pump) integration** — load-percentage calculation tied to a customer-specific CPP system; legacy Modbus registers 4632–4637.
- **SLEM (Supplementary Level Exceedance Monitoring)** — analog input for an ancillary parameter (likely hydraulic pressure).
- **Water-in-Oil (WIO) detection** — both digital and analog WIO sensor support; ~250 LOC in legacy `wio.c` / `wioprim.c`.
- **Sensor-moving threshold** — detects mechanical sensor displacement (sensor came loose / was bumped); legacy Modbus register 4640.

If you operate an installation that depends on one of these, please notify AMOT field service so the feature can be retained in the v8.7 codebase.

For full deprecation analysis, see `implementation_docs/DEPRECATION_CANDIDATES.md`.

---

## 6. Compatibility & migration

### Configurations preserved across the upgrade

The v8.7 firmware reads the same FRAM layout as v6.20. Customer per-installation Modbus configurations migrate automatically:

- Cylinder count / engine type
- Sensor enable/disable per channel
- Rough-cal (3-stage) state — preserves any in-progress calibration
- Fine-cal (500-hour) state — sample counts and reference values
- Sensor offsets (`offsetA`, `offsetB`)
- Custom alarm thresholds (where overridden from default)
- MB-Sum threshold (Modbus register 4624)
- Pre-warning history per sensor
- Engine runtime hours
- Event log entries
- Long-term storage (5+ years of data)

### Configurations that reset on v8.7 install

- Rapid-wear EMAs (`rapid_slow`, `rapid_fast`) — reinitialised to zero. They re-converge within the first ~20 revolutions of operation, well below alarm-trigger latency.
- Alarm latches — cleared. Operators must re-acknowledge any pending alarm.
- Pre-warning offsets — preserved, but the firmware logs a "v8.7 upgrade" event so the timeline is reconstructable.

### Procedure for installing v8.7 firmware

1. Capture the 30-day baseline (see section 4).
2. Schedule downtime for the SPU during a non-operational period (port stop, dry dock).
3. Power the SPU.
4. Use the reprog procedure documented in `BearingWear.SerialFlash` and `reprog.c` (legacy v6.20 process — unchanged).
5. After reprog, verify the firmware version reports as the agreed v8.7 register value (open question — see section 7).
6. Acknowledge any prior alarms.
7. Resume operation. Monitor for at least 72 hours before treating any new alarm as actionable.

---

## 7. Open questions for the customer

These items have been deliberately deferred to give field engineers something concrete to bring back to operators and AMOT engineering. Each is framed as a question.

1. **Bench validation timing — when can hardware testing happen?** Today, all spec-compliance evidence is from host-side unit and integration tests. Hardware bench validation (golden vector capture from a real F2811 SPU under instrumented engine load) is required before the v8.7 firmware can be released to fleet. What is the earliest window for an AMOT bench session?
2. **Lv-010 fix rollout — per installation or globally?** The Lv-010 patch is behavioural. Should the longer 6-hour pre-warning window apply to every installation in one rollout, or should it be enabled per installation as each is re-baselined and re-tuned?
3. **Version register value for the v8.7 release — `0x0700`, `0x0870`, or another scheme?** Legacy firmware reports `0x0620` for v6.20. The Phase-B integration needs a versionreg value to write at boot. AMOT engineering proposes `0x0870` (matching the spec revision); please confirm or provide an alternative.
4. **CPP / SLEM / WIO / sensor-moving — port forward or drop?** See section 5. Each of these features is in legacy v6.20 but not yet in `src/`. For each, is there an active customer deployment that depends on it? If yes, it stays. If no, it is safe to drop.
5. **Dashboard rebuild for Bug 2 + Bug 3 — when does it ship?** The patches to `VerificationData.cs` are committed but require a Windows-side build and release. What is the target release date for the dashboard binary that operators will deploy?
6. **CC-split position default for V-config / twin-bank engines — what should it be?** MB-Sum's `damagemon.ccsplit` parameter (Modbus register, range 0..N) disables a main-bearing position on engines with a physical bank break. Default is 0 (no split). On a twin-bank engine, what is the right out-of-the-box default — leave at 0 and let commissioning configure it, or auto-detect from cylinder count?
7. **MB-Sum threshold default for the customer's engine size class — review request.** `damagemon.alarmlevelmbsum` is per-installation tunable but defaults to a MAN-conservative value. Engines with a documented main-bearing-prone history may want a tighter default. Should AMOT propose a per-engine-class default table?

---

## Where to find more

| Need | Location |
|---|---|
| Original MAN spec | `3091686-8.7.pdf` (cleaned text in `host/specs/extracted/8.7/8.7.md`) |
| Spec compliance proof (per-section) | `official_docs/SPEC_COMPLIANCE.md` |
| Engineer field manual | `implementation_docs/FIELD_MANUAL.md` |
| Spec-to-test traceability matrix | `implementation_docs/SPEC_TO_TEST_MAPPING.md` |
| MB-Sum design rationale | `implementation_docs/vendor_extensions/mb_sum.md` |
| Deprecation analysis | `implementation_docs/DEPRECATION_CANDIDATES.md` |
| Legacy bug catalogue (incl. Lv-005, Lv-008, Lv-010, Bug 1) | `implementation_docs/LEGACY_BUGS.md`, `implementation_docs/BUG_1_FIX_NOTES.md` |
| Outstanding work | `implementation_docs/POST_AUTONOMOUS_TODO.md` |
| Phase B integration plan (Bug 1 final fix lands here) | `implementation_docs/INTEGRATION_LAYER_DESIGN.md` |

For technical questions about this firmware, contact AMOT engineering. For specification questions, contact MAN Energy Solutions referencing document **3091686-8 revision 07**.
