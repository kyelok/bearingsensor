# MAN BWM Spec Corpus — OCR'd & Cleaned

**Source documents**: MAN Diesel & Turbo, document number 3091686-8, "Bearing Wear Monitoring — Specification of Signal Processing and Operational Limits for Engines Coupled to a Fixed Pitch Propeller".

**OCR engine**: Claude vision (via the Read tool on rendered 300dpi PNGs). Tesseract was tested on samples and produced lower-quality output, especially on tables, rotated copyright sidebars, and table-of-contents dot-leaders. Claude vision was selected for the full pass.

| Spec (informal) | Doc Revision | Date | Pages | Cleaned text |
|---|---|---|---|---|
| 8.5 | Rev 05 | 2012-09-27 | 33 | `8.5/8.5.md` |
| 8.6 | Rev 06 | 2017-11-27 | 39 | `8.6/8.6.md` |
| 8.7 | Rev 07 | 2018-09-18 | 38 | `8.7/8.7.md` |

Raw page PNGs at 300 dpi are in `extracted/{8.5,8.6,8.7}/raw_images/page-NN.png`.

---

## Critical insight: Spec ↔ firmware version mapping

The "8.5/8.6/8.7" labels are **informal short-hands for MAN document revisions** of doc 3091686-8. Cross-referencing the SPU firmware tree:

- **Firmware v6.10** release notes (2012-12-10) say: "update firmware according to MAN specification v05" → that's **rev 05 = spec 8.5**.
- **Firmware v6.20** (2016-08-18, the current production firmware) is dated AFTER spec 8.5 (2012) but BEFORE spec 8.6 (2017-11-27).
- Conclusion: **v6.20 implements spec 8.5 (rev 05)** plus 4 years of post-2012 field bug fixes. The user's initial belief that "v6.20 implements 8.6" was off by one revision.
- Spec 8.6 and 8.7 are *future targets* — the firmware has never implemented them.

This dramatically changes the project plan: we are upgrading from spec 8.5 to spec 8.7, which means implementing the entire rev 06 "General revision" delta (a major overhaul) plus the small rev 07 refinement.

---

## Structural delta map (8.5 → 8.6 → 8.7)

### Document structure

| Aspect | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| Total pages | 33 | 39 | 38 |
| Chapter 1 title | "System Response" | "Overview of System Responses" | (same as 8.6) |
| Chapter 4 title | "Rapid Wear Algorithms" | "Rapid Wear Monitoring" | (same as 8.6) |
| Chapter 5 title | "Sensor Adjustment" | "Sensor Failure" | (same as 8.6) |
| Chapter 8 (Interface) | absent | new | (same as 8.6) |
| Appendix E (hit-by-hit) | absent | new | (same as 8.6) |
| Appendix F (comp curves) | absent | new | (same as 8.6) |

### Chapter 4 reorganization in rev 06 (8.5 → 8.6)

| 8.5 section | 8.6 section |
|---|---|
| 4.1 Rapid Wear Value Calulation [sic] | 4.1 Rapid Wear Value Calculation |
| 4.1.3 Rapid Wear Sensor Value | 4.1.3 Rapid Wear Value |
| 4.2 Learning Mode (with 4.2.1, 4.2.2) | 4.5 Rapid Wear Sensor Value Reset during Learning Mode |
| 4.3 Full Learning | (folded into 4.6 Flow Chart) |
| 4.4 Combining Rapid Wear Sensor Values: 4.4.1 Single Rapid, 4.4.2 CylRapid, 4.4.3 TwinCylRapid | 4.3 Combining Rapid Wear Sensor Values: 4.3.1 SingleRapid, 4.3.2 CylinderRapidAve, 4.3.3 TwinCylinderRapidAve |
| (no Rapid Wear deviation section) | **4.2 Rapid Wear Deviation Calculations** (new) |
| 4.5 Dynamic Rapid Alarm | 4.4 Dynamic Rapid Alarm limits |
| 4.6 Reporting to Ship AMS-system | (removed; moved to new Chapter 8) |

### Algorithm changes — Rapid Wear

| Concept | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| `SingleRapid` | `abs(Rapid Wear)` | `min(\|RWS\|, \|dRS\|)` (uses NEW deviation) | (same as 8.6) |
| `CylRapid` | `abs(RW_FoCyl + RW_AftCyl)` | renamed to `CylinderRapidAve = min(\|RWC\|, \|dRC\|)` | (same as 8.6) |
| `TwinCylRapid` | `abs(RW_AftCyl,n + RW_FoCyl,n+1)` (different indexing) | renamed to `TwinCylinderRapidAve = min(\|RWT\|, \|dRT\|)`, all 4 sensors averaged | (same as 8.6) |
| Rapid Wear deviations | not specified | new `dRS`, `dRC`, `dRT` formulas | (same as 8.6) |
| Dynamic alarm formula | `max(Alarm_1, Alarm_2)` with k=8, β=300; Alarm_2 has exp(-Hits/β) | `Alarm_Dynamic = Alarm_Basic*(1+ΔRPM_PCT/k)`, k=16; no β, no exp | (same as 8.6) |
| ΔRPM threshold for alarm pause | 15 (units = rpm? or %?) | 25% of nominal | (same as 8.6) |
| ΔRPM cap | "if ΔRPM > 4 rpm, set to 4 rpm" | between 16–25%, ΔRPM_PCT = 16 | (same as 8.6) |

### Algorithm changes — Reset on compensation curve update

This is the section rev 07 (8.7) refines:

| | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| Rapid Fast = | 5 Rev Speed Compensated Average | (same) | (same) |
| Rapid Slow = | `5 Rev Avg − Rapid Wear Avg` (uses fast-updating Avg with 0.85/0.15 floating average) | `5 Rev Avg − Rapid Wear (before reset)` | **`0` (literal zero — simpler)** |

This is the *only* algorithmic delta from 8.6 to 8.7.

### Rapid Wear alarm limit values

| Limit | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| Basic SingleRapid | 250 µm | 200 µm | (same as 8.6) |
| Basic CylRapidAve (was CylRapid in 8.5) | 180 µm | 90 µm | (same as 8.6) |
| Basic TwinCylRapidAve | 250 µm | 75 µm | (same as 8.6) |
| Refining-period SingleRapid | not specified | 230 µm | (same) |
| Refining-period CylRapidAve | not specified | 120 µm | (same) |
| Refining-period TwinCylRapidAve | not specified | 105 µm | (same) |
| Rough-period SingleRapid | not specified | 260 µm | (same) |
| Rough-period CylRapidAve | not specified | 150 µm | (same) |
| Rough-period TwinCylRapidAve | not specified | 135 µm | (same) |

Notable: the absolute alarm levels were **substantially tightened** in rev 06 — TwinCyl dropped from 250 µm to 75 µm (−70%).

### Slow Wear alarm limit values

| Limit | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| Filtered sensor value (normal running) | ±0.5 mm | ±0.5 mm | (same) |
| Sensor deviation (normal running) | ±0.4 mm | ±0.4 mm | (same) |
| Cylinder deviation (normal running) | ±0.3 mm | ±0.3 mm | (same) |
| Slowdown filtered sensor value (normal) | ±0.7 mm | ±0.7 mm | (same) |
| Slowdown sensor deviation (normal) | **±0.5 mm** | **±0.6 mm** | (same as 8.6) |
| Slowdown sensor deviation (learning) | **±0.7 mm** | **±0.5 mm** | (same as 8.6) |
| Slowdown filtered sensor value (learning) | ±0.9 mm | ±0.9 mm | (same) |
| Pre-warning level (6h avg) | ±0.25 mm | ±0.25 mm | (same) |

### Storage requirements

| Storage | 8.5 | 8.6 | 8.7 |
|---|---|---|---|
| Short term | 24h, ≥1 sample/30 revs, +5 min after alarm | (same) | (same) |
| Rapid Wear floating | 2h | 2h, with explicit field list (timestamp, rpm, RW sensor, Rapid fast/slow, SingleRapid, CylRapidAve, TwinCylAve, deltaRpm, Rapid Alarm) | (same as 8.6) |
| Long term | 6h max/min/avg, ≥5 yrs back | (same) | (same) |
| Hit-by-hit data | not specified | 12h, +1h after alarm, **Appendix E format** | (same) |
| Compensation curves at update | not specified | new — **Appendix F format** | (same) |
| Frozen copy retention | not explicit | 1 year, 65h hit-by-hit always available (5 events) | (same) |

### Sensor adjustment / sensor failure

8.5 has a **single combined procedure** in chapter 5 ("Sensor Adjustment"). 8.6 splits this into:
- 5.1 Corrections for Failed Sensors (deviation-formula correction when a sensor signal is lost)
- 5.2 Re-adjustment of Reference Curve, with 3 sub-procedures:
  - 5.2.1 Re-adjustment of Reference Curve (sensor changed/relocated)
  - 5.2.2 + Extrapolation of Slow Wear (out of operation > 100 hrs)
  - 5.2.3 + Reset of Slow Wear (after major repairs)
  - 5.2.4 Further Actions (rapid-wear reset on adjust)

8.7 changes only the rapid-wear reset formula in 5.2.4 (Rapid Slow = 0 vs. the 8.6 expression).

---

## What this corpus enables

1. **Phase 0.2 — Empirical baseline determination**: We can now bisect the v6.20 firmware against each spec's requirements. Expected outcome: most v6.20 features map cleanly to spec 8.5; a small subset of damage-monitoring features may be early/partial implementations of 8.6 ideas (the firmware has gone through 4 years of post-spec-8.5 field tweaks).

2. **Phase 1 — Test coverage matrix**: The OCR'd specs give us the canonical requirement IDs to anchor `@spec` tags against. We can now author `feature_matrix.csv` row-by-row from the cleaned markdown.

3. **Phase 4 — Upgrade to v8.7**: The delta map above is the change set we have to implement. The bulk of the work is the 8.5→8.6 jump (chapter 4 reorganization + new chapter 8 + appendices E/F + tightened alarm limits + new sensor-failure procedures + new storage requirements). The 8.6→8.7 jump is just `Rapid Slow = 0`.

---

## Quality notes / caveats

- Figures (flow charts, calibration curve diagrams, sensor-arrangement diagrams) are described in prose because they are images embedded in the PDF. The descriptions name the boxes/arrows but do not visually reproduce the diagram.
- A few formula symbols may be slightly mis-typeset in markdown (subscripts, Greek letters). Spot-check against the raw PNGs in `raw_images/` if precision matters.
- The yellow highlights in 8.6 explicitly marked changes vs. rev 05 — those are preserved as `[Δ8.5→8.6]` annotations in `8.6/8.6.md`. 8.7 had no highlights (its changes vs. rev 06 are described in the "Major changes in Revision 7" section on page 2, also captured).
- 8.5 has a typo in its own TOC: section 4.1 is titled "Rapid Wear Value Calulation" (missing the "c"). Preserved verbatim with a `[sic]` note.
