/*
 * src/sensor_adjust/sensor_adjust_8_7.c — implementation.
 */

#include "sensor_adjust_8_7.h"
#include "rapid_wear/rapid_wear_8_7.h"

static Int16 average_int16(const Int16 *values, Uint16 count)
{
    if (!values || count == 0) return 0;
    Int32 sum = 0;
    for (Uint16 i = 0; i < count; ++i) sum += values[i];
    return (Int16)(sum / (Int32)count);
}

Int16 sensor_adjust_8_7_refcurve_only(Int16 accumulated_offset,
                                       const Int16 *six_hour_avg_history,
                                       Uint16 history_count)
{
    /* Total offset = O₀ (current physical offset) + O₁ (prior history avg).
     * O₀ is `accumulated_offset` from the 50-hour phase.
     * O₁ is the average of the last ~50h of 6h-averages (≈ 8 entries). */
    Int16 O_1 = average_int16(six_hour_avg_history, history_count);
    return accumulated_offset + O_1;
}

Int16 sensor_adjust_8_7_refcurve_plus_extrap(Int16 accumulated_offset,
                                              const Int16 *six_hour_avg_history,
                                              Uint16 history_count,
                                              Int16 neighbour_rms_offset_O_2)
{
    Int16 base = sensor_adjust_8_7_refcurve_only(accumulated_offset,
                                                 six_hour_avg_history,
                                                 history_count);
    return base + neighbour_rms_offset_O_2;  /* + O₂ */
}

Int16 sensor_adjust_8_7_refcurve_plus_reset(Int16 accumulated_offset)
{
    /* Just the 50-hour part a). Spec §5.2.3 explicitly says no O₁/O₂. */
    return accumulated_offset;
}

void sensor_adjust_8_7_apply_rapid_reset(rapid_wear_sensor_state_t *s, float five_rev_avg)
{
    rapid_wear_reset_8_7(s, five_rev_avg);
}
