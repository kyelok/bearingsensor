/*
 * src/sensor_adjust/sensor_adjust_8_7.h — Sensor adjustment per spec rev 07.
 *
 * v8.6/8.7 splits the v8.5 single procedure into THREE procedures plus
 * a "further actions" subsection.
 *
 *   §5.2.1 Re-adjustment of Reference Curve
 *           — sensor changed or relocated; 50-hour offset re-adjustment
 *             plus offset O₁ from prior 6h-average history.
 *
 *   §5.2.2 + Extrapolation of Slow Wear
 *           — sensor out > 100 hours; adds part c) offset O₂
 *             approximated from cylinder neighbour during breakage.
 *
 *   §5.2.3 + Reset of Slow Wear
 *           — repairs that invalidate prior slow wear; just the
 *             50-hour part a) (no O₁ or O₂).
 *
 *   §5.2.4 Further Actions
 *           — Rapid Slow = 0 (8.7 form; was the 5RevAvg-RW expression
 *             in 8.6).
 */

#ifndef BWM_SENSOR_ADJUST_8_7_H
#define BWM_SENSOR_ADJUST_8_7_H

#include "core/types.h"
#include "sensor_adjust.h"  /* reuses sensor_adjust_state_t */
#include "rapid_wear/rapid_wear.h"

typedef enum {
    SENSOR_ADJUST_PROC_NONE = 0,
    SENSOR_ADJUST_PROC_REFCURVE_ONLY,         /* §5.2.1 */
    SENSOR_ADJUST_PROC_REFCURVE_PLUS_EXTRAP,  /* §5.2.2 */
    SENSOR_ADJUST_PROC_REFCURVE_PLUS_RESET    /* §5.2.3 */
} sensor_adjust_procedure_t;

/* @spec 8.7 §5.2.1 — Re-adjustment with offset O₁ from prior history.
 * Inputs:
 *   accumulated_offset    — running average from 50-hour phase (mm hundredths)
 *   six_hour_avg_history  — array of 6h averages from prior 50 running hours
 *   history_count         — number of valid entries in history (≤ 8 typical)
 * Output: total reference-curve offset to apply (mm hundredths).
 */
Int16 sensor_adjust_8_7_refcurve_only(Int16 accumulated_offset,
                                       const Int16 *six_hour_avg_history,
                                       Uint16 history_count);

/* @spec 8.7 §5.2.2 — adds extrapolation offset O₂ from cylinder
 * neighbour during time of breakage. */
Int16 sensor_adjust_8_7_refcurve_plus_extrap(Int16 accumulated_offset,
                                              const Int16 *six_hour_avg_history,
                                              Uint16 history_count,
                                              Int16 neighbour_rms_offset_O_2);

/* @spec 8.7 §5.2.3 — only the 50-hour offset re-adjustment, no
 * historical correction (slow wear is reset). */
Int16 sensor_adjust_8_7_refcurve_plus_reset(Int16 accumulated_offset);

/* @spec 8.7 §5.2.4 — Rapid Wear sensor reset on adjust:
 *   rapid_fast = five_rev_avg
 *   rapid_slow = 0
 *
 * Convenience wrapper around rapid_wear_reset_8_7. */
void sensor_adjust_8_7_apply_rapid_reset(rapid_wear_sensor_state_t *s,
                                          float five_rev_avg);

#endif /* BWM_SENSOR_ADJUST_8_7_H */
