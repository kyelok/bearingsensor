# Vendor Extension — MB-Sum (Main Bearing Neighbour Sum)

**Status**: Active in firmware v6.20. Decision (2026-04-27): retain through v8.7 refactor as a documented vendor extension.

**In MAN BWM specification?** No — not in 8.5, 8.6, or 8.7.

**Origin**: Added 2010-08-19 by engineer initials "AJB" (per `man.c` source comments). 16+ years in production at the time of this writing.

---

## What it is

MAN's BWM specification (any revision) defines three rapid-wear alarm metrics:

1. **SingleRapid** — single sensor anomaly
2. **CylRapid** / **CylinderRapidAve** — sums the FORE+AFT sensors *within one cylinder*
3. **TwinCylRapid** / **TwinCylinderRapidAve** — combines sensors across two adjacent cylinders

The first two target **crosshead** and **crankpin** bearing wear (the ones inside / just below each cylinder unit). TwinCylRapid is a fallback for when one sensor in a cylinder is unhelpful.

What none of those metrics specifically target is the **main bearings** — the bearings *between* cylinders, supporting the crankshaft. Main-bearing wear shows up as a small, correlated change across the AFT sensor of cylinder N and the FORE sensor of cylinder N+1, because those are the two sensors physically adjacent to that main bearing.

**MB-Sum is a fourth alarm metric, structured exactly like CylRapid but summing across the cylinder boundary** so it triggers on main-bearing wear that the spec's three metrics may miss.

```
Engine cylinders:  [ 1 ] [ 2 ] [ 3 ] [ 4 ] [ 5 ] [ 6 ] ...
Sensors (fore/aft): F A   F A   F A   F A   F A   F A
                       \_/   \_/   \_/   \_/   \_/        ← CylRapid pairs (within cylinder)
                         \___/  \___/  \___/  \___/       ← MB-Sum pairs (across MB between cylinders)
```

For an N-cylinder engine, there are N CylRapid pairs and (N-1) MB-Sum pairs. (One fewer because there are N cylinders but only N-1 main bearings between them.)

---

## Algorithm

Where the spec's CylRapid (per spec 8.5 §4.4.2) is:

```
CylRapid_n = abs( RapidWear_FoCyl,n + RapidWear_AftCyl,n )       /* same cylinder */
```

MB-Sum is the analogous formula one position over:

```
MBSum_n = abs( RapidWear_AftCyl,n + RapidWear_FoCyl,n+1 )         /* across MB n */
```

It then feeds the same dynamic-alarm pipeline as Single/Cyl/TwinCyl:

```
Alarm_1_mbsum  = damagemon.alarmlevelmbsum * (1 + ΔRPM / k)              /* k = 8 */
Alarm_2_mbsum  = damagemon.alarmlevelmbsum * (1 + ΔRPM_at_alarm / k) * exp(-Hits / β)   /* β = 300 */
Alarm_dyn_mbsum = max(Alarm_1_mbsum, Alarm_2_mbsum)
```

If the running MB-Sum value (`manrefsum[k].mbnsum`, computed from `manref[].refvalue_int`) exceeds `Alarm_dyn_mbsum`, an MB-Sum slowdown is requested via `MBNeighbourDamageMonSlowDown()`.

---

## Implementation map

**v6.20 source locations**:

| Concern | File:line | Symbol |
|---|---|---|
| Per-pair sum computation | `man.c:1006` | `void MBNeighbourSum(int numsens)` |
| Bitmask of valid pairs (excluding disabled / failed / replaced sensors) | `man.c:920` | `void MBNeighbourRegSet(void)` |
| Alarm threshold check | `man.c:723`, callers in `MANRefCalcs` | `MBNeighbourDamageMonSlowDown()` |
| Configurable alarm level | `damagemonstruct.alarmlevelmbsum` | `man.h:128` |
| Persistent storage | FRAM via `damagemon` struct | save/load in `man.c:1780, 1803` |
| Modbus exposure | Register **4624** ("AlrmLvlMBS") | `params.c:127` |
| Modbus read of dynamic level | Register **MBSUM** | `PCModBus.c:1430` |
| Per-pair sums array | `manrefsum[k].mbnsum` (one per main bearing) | `man.h:101` (`manrefsumstruct`) |
| Bitmask of enabled pairs | `damagemon.mbneighbour` | `man.h:113` |
| Bitmask of enabled pairs for alarm purposes | `damagemon.mbneighbouralarms` | `man.h:132` |
| Configuration "split point" between cylinder banks | `damagemon.ccsplit` (zero MB-Sum at this position) | `man.c:953` |

### Worked example: `ccsplit` on a 6-cylinder dual-bank engine

Per PR review F-20: a concrete worked example helps surveyors and integrators understand the bank-split semantics.

**Scenario**: A 6-cylinder marine 2-stroke engine with a physical bank split between cylinder 3 and cylinder 4 (i.e., the structure between cyl 3 and cyl 4 doesn't share a common main bearing). Cylinders are zero-indexed (0..5).

**Configuration**: set `damagemon.ccsplit = 4` via Modbus register or commissioning tool.

**Effect**: at MB position k=3 (zero-indexed), the bitmask predicate evaluates `cc_split == k+1 → 4 == 4 → true`, so position 3 is permanently disabled. The 5 MB positions on this engine become:

```
MB position k=0  →  active (between cyl 0 and cyl 1)
MB position k=1  →  active (between cyl 1 and cyl 2)
MB position k=2  →  active (between cyl 2 and cyl 3)
MB position k=3  →  DISABLED (between cyl 3 and cyl 4 — bank split)
MB position k=4  →  active (between cyl 4 and cyl 5)
```

**Sensors involved at the disabled position** (per `mb_sum_left_sensor` / `mb_sum_right_sensor`):
- left  = sensor 7 (aft of cyl 3)
- right = sensor 8 (fore of cyl 4)

These sensors continue to be measured and contribute to other algorithm pathways (SingleRapid, slow-wear) — they are NOT disabled overall. Only their MB-Sum *combination* is disabled.

**Why**: In a dual-bank configuration, the apparent "main bearing" position is a structural division; sensors on either side respond to different mechanical loads and their sum has no physical meaning. Including the position would produce a noisy alarm signal not tied to actual main-bearing wear.

**Default**: `ccsplit = 0` for single-bank engines (the typical case). All MB positions active.

**Why two bitmasks** (`mbneighbour` and `mbneighbouralarms`)?

`MBNeighbourRegSet()` (`man.c:920`) walks every potential MB-Sum pair and computes two predicates per pair:

- `condition`: pair is fully valid for *summing* (both sensors enabled, neither failed, neither in replacement, not at the engine's bank-split position). If `condition == 0`, the corresponding bit in `damagemon.mbneighbour` is set.
- `alarmcondition`: pair is fully valid for *alarming* (above + neither sensor's alarm is masked). Stricter than `condition`. If `alarmcondition == 0`, the corresponding bit in `damagemon.mbneighbouralarms` is set.

This split lets the system continue *computing* an MB-Sum value (for logging/display) on a pair where one sensor's alarms are temporarily masked, without *firing alarms* on that pair. It's the kind of detail you only design after running a production system for a few years.

---

## Default and customer-tunable parameters

| Parameter | Default in v6.20 | Range | Notes |
|---|---|---|---|
| `damagemon.alarmlevelmbsum` | (FRAM-stored, customer-configurable per installation) | `ALARMLEVELMBSUM_LOW` to `ALARMLEVELMBSUM_HI` (defines TBD; see `define.h`) | Modbus register 4624. Tightened by individual customer based on engine size and observed natural variation. |
| `damagemon.mbneighbour` | computed at runtime | bitmask | Per-bit: 1 = MB-Sum pair active, 0 = skip (failed/replaced/disabled sensor). |
| `damagemon.ccsplit` | 0 (no split) | 1..MAX_NUM_CYLINDERS | Set non-zero for engines with two cylinder banks where the "main bearing" between bank N and bank N+1 isn't physically shared. |

---

## Why we keep it through the v8.7 refactor

1. **It catches a real failure mode the spec doesn't address.** Removing it would silently regress safety on a class of failures the field has seen.
2. **No spec collision.** MB-Sum doesn't conflict with any 8.7 requirement; it's purely additive.
3. **Stable code.** 16 years of production with no recorded MB-Sum-specific bug. Refactoring should preserve, not restructure.
4. **Customer parameter tuning is established.** Operators have set per-installation alarm levels via Modbus 4624; ripping it out invalidates that configuration.

---

## Treatment in the v8.7 refactor

When `man.c` is split into modules (Phase 3), MB-Sum lives alongside the spec metrics in the new `man_neighbour.c` / `man_neighbour.h` module:

```c
/* man_neighbour.h — public API for cylinder & MB-neighbour sums. */

/* @spec 8.7 §4.3.2 */
float manalg_cylinder_rapid_ave(int cyl, const RapidWearState* state);

/* @spec 8.7 §4.3.3 */
float manalg_twin_cylinder_rapid_ave(int cyl_pair, const RapidWearState* state);

/* @vendor-extension MB-Sum (no spec reference; see docs/vendor_extensions/mb_sum.md) */
float manalg_mb_neighbour_sum(int mb_position, const RapidWearState* state);
```

Tests for MB-Sum live at `host/test/algo/test_mb_neighbour_sum.c` and use the `@vendor-extension` tag (vs. `@spec`) so the spec coverage matrix correctly identifies them as out-of-spec but in-source. The tag is recognized by `host/tools/spec_matrix.py` (Phase 1.1).

Customer-facing v8.7 compliance documentation (`host/spec_8.7_compliance.md`, Phase 5) references MB-Sum in a separate "Vendor extensions beyond MAN spec 8.7" section pointing here.

---

## Things to verify on bench

When hardware bench access is available, validate:

1. **`MBNeighbourRegSet` correctly excludes failed pairs**: induce sensor-failure on one channel, confirm the corresponding `mbneighbour` bit clears.
2. **MB-Sum slowdown fires below SingleRapid/CylRapid limits**: feed correlated wear into adjacent fore/aft sensors (cyl N aft + cyl N+1 fore) at amplitudes below SingleRapid's threshold but above MBSum's; confirm slowdown is triggered.
3. **Modbus 4624 round-trip**: write a non-default `alarmlevelmbsum`, power-cycle, confirm value persists from FRAM.
4. **`ccsplit` behavior on dual-bank engines**: set `ccsplit = N`, confirm MB-Sum bit N is permanently zero regardless of sensor state.

---

## Glossary

- **MB**: Main Bearing — the crankshaft-supporting bearings between adjacent cylinders.
- **manrefsum[].mbnsum**: per-position MB-Sum running value (sum of two `manref[].refvalue_int` values).
- **damagemon**: persistent damage-monitoring config, lives in FRAM.
- **dynalarmlevels**: live (per-tick) dynamic alarm levels, recomputed each main-loop iteration.
- **AJB**: Engineer who added MB-Sum (per source comments). Original design rationale not preserved in the codebase.

---

*If you are extending this document with field-evidence stories ("the time MB-Sum caught X but CylRapid didn't"), please add them as a section below dated and signed.*
