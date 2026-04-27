/*
 * src/main.c — minimal main entry point for the v8.7 BWM SPU firmware.
 *
 * STATUS: Bare-bones. Initializes the algorithm modules and enters an
 * infinite loop. Does NOT yet wire up:
 *   - ADC ISR for per-revolution sample acquisition
 *   - SPI FRAM initialization
 *   - SCI Modbus protocol stack
 *   - SD card / FAT FS init
 *   - Watchdog
 *   - Cylinder/sensor configuration loading from FRAM
 *
 * Those integration layers are tracked in host/docs/POST_AUTONOMOUS_TODO.md
 * § Priority 2. This file proves end-to-end that the refactored src/
 * tree can be linked into a flashable .a00 binary using modern TI CGT.
 *
 * Architecture goal: this file is THE ONLY firmware-side glue layer.
 * Each subsystem (HAL, algorithms, storage, alarms) initializes and
 * runs independently. main() wires them up at boot and dispatches the
 * main-loop tick.
 */

#include "core/types.h"
#include "rapid_wear/rapid_wear.h"
#include "rapid_wear/rapid_wear_8_7.h"
#include "slow_wear/slow_wear.h"
#include "speed_comp/speed_comp.h"
#include "sensor_adjust/sensor_adjust.h"
#include "sensor_adjust/sensor_adjust_8_7.h"
#include "alarms/alarm_thresholds.h"
#include "storage/storage_classes.h"
#include "system/alarm_relays_8_7.h"
#include "vendor/mb_sum.h"

/* ===== Module state instances =====
 *
 * The speed_comp_table is large (~16KB) and would overflow the 8KB
 * L0L1RAM if placed in default .ebss. Use #pragma DATA_SECTION to
 * place it in the .mancomp section, which the linker file maps to
 * H0RAM. This matches the legacy v6.20 layout where the man_comptable
 * lives in .mancomp.
 *
 * In production this region would be backed by FRAM (Ferroelectric RAM)
 * via the SPI driver. For now it lives in regular RAM.
 */

#pragma DATA_SECTION(g_speed_comp_table, ".mancomp")
static speed_comp_table_t         g_speed_comp_table;

static rapid_wear_sensor_state_t  g_rapid_state[BWM_MAX_SENSORS];
static slow_wear_sensor_state_t   g_slow_state[BWM_MAX_SENSORS];
static sensor_adjust_state_t      g_adjust_state[BWM_MAX_SENSORS];
static alarm_latch_state_t        g_alarm_latches[BWM_MAX_SENSORS];
static alarm_relay_state_t        g_alarm_relays;

/* ===== Stub globals required by the legacy boot code =====
 *
 * DSP281x_CodeStartBranch.asm references a few global hardware-port
 * structs that are normally defined in legacy globals.c (which we don't
 * link). For the minimal main, provide stubs at the addresses the
 * boot code expects. These are placed in their respective register-
 * mapped sections via the linker command file's PAGE 2 mappings.
 */

#pragma DATA_SECTION(gpd, ".gpdregisters")
volatile unsigned int gpd;

/* ===== Initialization ===== */

static void init_all_modules(void)
{
    Uint16 i;

    /* Per-sensor algorithm state. */
    for (i = 0; i < BWM_MAX_SENSORS; i++) {
        rapid_wear_init_sensor(&g_rapid_state[i]);
        slow_wear_init_sensor(&g_slow_state[i]);
        sensor_adjust_init(&g_adjust_state[i]);
        g_alarm_latches[i].alarm_latched     = 0;
        g_alarm_latches[i].slowdown_latched  = 0;
        g_alarm_latches[i].prewarning_latched = 0;
    }

    /* System-wide state. */
    speed_comp_init(&g_speed_comp_table);
    alarm_relays_init(&g_alarm_relays);
}

/* ===== Main loop tick =====
 *
 * Called once per main-loop iteration. The actual SPU runs this from
 * the (eventual) ADC ISR or a software timer. For now this is just
 * the algorithmic skeleton.
 */
static void main_loop_tick(Uint16 nominal_rpm,
                           Uint16 current_rpm,
                           const Int16 *raw_samples)
{
    Uint16 i;
    Int16  speed_compensated;

    /* For each sensor: speed-compensate, feed slow- and rapid-wear pipelines. */
    for (i = 0; i < BWM_MAX_SENSORS; i++) {
        speed_compensated = speed_comp_apply(&g_speed_comp_table,
                                             (bwm_sensor_id_t)i,
                                             current_rpm,
                                             nominal_rpm,
                                             raw_samples[i]);

        slow_wear_apply_sample(&g_slow_state[i], (float)speed_compensated);
        rapid_wear_apply_sample(&g_rapid_state[i], (float)speed_compensated);
    }
}

/* ===== Boot entry point ===== */

int main(void)
{
    init_all_modules();

    /* Synthetic minimal main loop — replace with real ADC ISR drive. */
    Int16 samples[BWM_MAX_SENSORS] = { 0 };
    Uint16 nominal = 100;
    Uint16 current = 80;
    Uint32 tick = 0;

    while (1) {
        main_loop_tick(nominal, current, samples);
        tick++;
        /* In a real firmware: idle here until ADC ISR fires; on
         * marine engines the ADC fires every 33µs. */
    }

    /* Unreachable. */
    return 0;
}
