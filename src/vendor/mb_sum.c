/*
 * src/vendor/mb_sum.c — implementation.
 */

#include "mb_sum.h"
#include <math.h>

float mb_sum_combine(float rw_left_aft, float rw_right_fore)
{
    /* Same arithmetic as TwinCylRapid by design (vendor extension
     * reuses the geometric pair). Separately threshold is in
     * damagemon.alarmlevelmbsum (Modbus 4624). */
    return fabsf(rw_left_aft + rw_right_fore);
}

int mb_sum_position_is_valid(int sensor_left_aft_failed,
                             int sensor_right_fore_failed,
                             int sensor_left_aft_replacing,
                             int sensor_right_fore_replacing,
                             Uint16 cc_split_position,
                             bwm_mb_id_t k)
{
    if (sensor_left_aft_failed || sensor_right_fore_failed) return 0;
    if (sensor_left_aft_replacing || sensor_right_fore_replacing) return 0;
    if (cc_split_position != 0 && cc_split_position == (Uint16)(k + 1)) return 0;
    return 1;
}
