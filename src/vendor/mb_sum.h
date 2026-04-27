/*
 * src/vendor/mb_sum.h — Main Bearing neighbour sum (vendor extension).
 *
 * @vendor-extension MB-Sum (no MAN BWM spec section).
 * Documented at: host/docs/vendor_extensions/mb_sum.md
 *
 * MB-Sum is the firmware's fourth alarm metric (after spec's
 * SingleRapid, CylRapid, TwinCylRapid). It targets MAIN BEARING wear
 * by summing across-cylinder sensor pairs at each main-bearing
 * position.
 *
 * For an N-cylinder engine there are N-1 MB positions (one between
 * each adjacent pair of cylinders). At MB position k (zero-indexed),
 * the inputs are:
 *   - aft sensor of cylinder k+1
 *   - fore sensor of cylinder k+2
 *
 * The arithmetic is shape-identical to TwinCylRapid; the difference
 * is INTENT (main bearings vs. crosshead/crankpin) and SEPARATELY
 * TUNABLE alarm threshold (Modbus register 4624).
 */

#ifndef BWM_VENDOR_MB_SUM_H
#define BWM_VENDOR_MB_SUM_H

#include "core/types.h"

/* For an N-cylinder engine, there are N-1 MB positions. */
static inline Uint16 mb_sum_num_positions(Uint16 num_cylinders)
{
    return (num_cylinders > 0) ? (Uint16)(num_cylinders - 1) : 0;
}

/* Sensor IDs for MB position k:
 *   sensor_aft  = aft sensor of cylinder k+1   = (k+1)*2 + 1 = 2k+3
 *   sensor_fore = fore sensor of cylinder k+2  = (k+2)*2     = 2k+4
 * (Zero-indexed cylinders.) */
static inline bwm_sensor_id_t mb_sum_left_sensor (bwm_mb_id_t k) { return (bwm_sensor_id_t)(2*k + 1); }
static inline bwm_sensor_id_t mb_sum_right_sensor(bwm_mb_id_t k) { return (bwm_sensor_id_t)(2*k + 2); }

/* MB-Sum value at one position. */
float mb_sum_combine(float rw_left_aft, float rw_right_fore);

/* Bitmask helper: position k is valid if both adjacent sensors are
 * enabled and not failed/replaced, AND k is not at the bank-split
 * position (ccsplit). Returns 1 if the position should produce an
 * MB-Sum value, 0 if not. */
int mb_sum_position_is_valid(int sensor_left_aft_failed,
                             int sensor_right_fore_failed,
                             int sensor_left_aft_replacing,
                             int sensor_right_fore_replacing,
                             Uint16 cc_split_position,
                             bwm_mb_id_t k);

#endif /* BWM_VENDOR_MB_SUM_H */
