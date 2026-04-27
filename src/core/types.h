/*
 * src/core/types.h — fundamental types and constants for the BWM system.
 *
 * This header is the foundation that every other src/ module includes.
 * It establishes:
 *   - Width-stable integer typedefs (Uint16, Int16, Uint32, Int32) that
 *     compile identically on TI C28x and host clang/gcc.
 *   - Engine-domain constants (max cylinders, max sensors).
 *   - Physical-unit conventions (mm in hundredths, µm in ones).
 *
 * The types here are deliberately MINIMAL. Each subsystem (slow_wear,
 * rapid_wear, etc.) defines its own domain types in its own header.
 * This keeps coupling low and makes the dependency graph navigable.
 */

#ifndef BWM_CORE_TYPES_H
#define BWM_CORE_TYPES_H

#include "platform.h"   /* from host/platform/ — provides Uint16, Int16, Uint32, Int32 */

/* ===== Engine domain limits ===== */

/* Maximum cylinders any supported engine has. Marine 2-stroke crosshead
 * engines have 4–14 cylinders. Inflated to 14 to be future-proof. */
#define BWM_MAX_CYLINDERS  14

/* Each cylinder has 2 BDC sensors (fore + aft). */
#define BWM_SENSORS_PER_CYL  2

/* Total sensor channels = 2 × cylinders. v6.20 splits this across two
 * SPUs (14 channels each = 28 total). The new design treats them as
 * one unified array; SPU split is a deployment-time concern. */
#define BWM_MAX_SENSORS  (BWM_MAX_CYLINDERS * BWM_SENSORS_PER_CYL)

/* Number of main bearings between cylinders = N - 1. */
#define BWM_MAX_MB_POSITIONS  (BWM_MAX_CYLINDERS - 1)

/* ===== Speed compensation table dimensions ===== */

/* Spec §2.0 mandates ≥100 RPM bands between 20% and 110% of nominal
 * speed. v6.20 ships 150. We keep 150 to preserve runtime characteristics. */
#define BWM_SPEED_BANDS  150

/* ===== Physical units ===== */

/* Internal representation: BDC level in HUNDREDTHS of a millimeter
 * (so 50 = 0.5 mm). This matches v6.20's scaling.
 *
 * Spec §1 specifies sensor repeatability of ±0.01 mm = ±1 unit in
 * this scale. Spec §7 alarm limits express in mm; conversion macros
 * below normalize.
 *
 * Rapid Wear values are in MICROMETERS (µm) per spec §7.2 tables.
 * 1 mm = 1000 µm = 100 hundredths-of-mm. */
typedef Int16  bwm_mm_hundredths_t;   /* range ±327.68 mm — ample */
typedef Int16  bwm_um_t;              /* range ±32767 µm — ample for spec */

/* Conversion helpers — compile-time only when used with constants. */
#define BWM_MM_TO_HUNDREDTHS(mm)         ((bwm_mm_hundredths_t)((mm) * 100))
#define BWM_UM_TO_HUNDREDTHS(um)         ((bwm_mm_hundredths_t)((um) / 10))
#define BWM_HUNDREDTHS_TO_UM(hundredths) ((bwm_um_t)((hundredths) * 10))

/* ===== Channel index types ===== */

typedef Uint16  bwm_sensor_id_t;      /* 0 .. BWM_MAX_SENSORS-1 */
typedef Uint16  bwm_cylinder_id_t;    /* 0 .. BWM_MAX_CYLINDERS-1 */
typedef Uint16  bwm_mb_id_t;          /* 0 .. BWM_MAX_MB_POSITIONS-1 */

/* Convenience: convert sensor index to its cylinder. */
#define BWM_SENSOR_CYL(sid)   ((bwm_cylinder_id_t)((sid) / BWM_SENSORS_PER_CYL))
#define BWM_SENSOR_IS_FORE(sid)  (((sid) % BWM_SENSORS_PER_CYL) == 0)
#define BWM_SENSOR_IS_AFT(sid)   (((sid) % BWM_SENSORS_PER_CYL) == 1)
#define BWM_CYL_FORE_SENSOR(cid) ((bwm_sensor_id_t)((cid) * BWM_SENSORS_PER_CYL))
#define BWM_CYL_AFT_SENSOR(cid)  ((bwm_sensor_id_t)((cid) * BWM_SENSORS_PER_CYL + 1))

/* ===== Direction & operational mode =====
 *
 * Aspirational types — declared here because they will be needed by the
 * Phase B-3 integration layer (per host/docs/INTEGRATION_LAYER_DESIGN.md)
 * but not yet referenced by any src/ module. Per PR review F-12: keeping
 * them with this banner so future code can find them without a separate
 * design doc, and so the type names are stable when bridges are written.
 */

typedef enum {
    BWM_DIR_UNKNOWN = 0,
    BWM_DIR_FORWARD = 1,
    BWM_DIR_ASTERN  = -1   /* Note: enum may be promoted to int on TI C28x */
} bwm_direction_t;

typedef enum {
    BWM_MODE_INIT,
    BWM_MODE_ROUGH_CAL_STAGE_1,
    BWM_MODE_ROUGH_CAL_STAGE_2,
    BWM_MODE_ROUGH_CAL_STAGE_3,
    BWM_MODE_FINE_LEARNING,    /* 500 hours of refinement */
    BWM_MODE_NORMAL_OPERATION,
    BWM_MODE_SENSOR_ADJUSTMENT
} bwm_operational_mode_t;

/* ===== Result / error codes ===== */

typedef enum {
    BWM_OK = 0,
    BWM_ERR_INVALID_ARG,
    BWM_ERR_OUT_OF_RANGE,
    BWM_ERR_NOT_READY,
    BWM_ERR_HARDWARE,
    BWM_ERR_NVMEM_VERIFY_FAILED
} bwm_result_t;

#endif /* BWM_CORE_TYPES_H */
