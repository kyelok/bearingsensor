/*
 * src/integration/man_legacy_bridge.c
 *
 * Phase B-1/B-3 integration bridge: provides the public symbols that
 * the legacy infrastructure (core.c, adc.c, alarms.c, PCModBus.c,
 * mancal.c, etc.) expects to find in man.c. Since we exclude the
 * legacy man.c from the hybrid build, every public function from
 * legacy man.h needs a definition here.
 *
 * Phase B-1 (current): no-op or trivial pass-through implementations
 * just so the linker resolves all symbols. The hybrid binary builds
 * but doesn't yet drive src/ algorithms with live ADC data.
 *
 * Phase B-3+ (next): each bridge body grows to read the legacy
 * `sensor[]` global, call the matching src/ algorithm, write results
 * back to the legacy global where downstream legacy code expects them.
 *
 * @warning This file is the *only* place where legacy globals (declared
 * in `globals.h`) and src/ APIs meet. Keep the boundary narrow.
 */

#include "core/types.h"

/* Pull in legacy types for sensor[], allsensors, settings, etc.
 * man.h is the legacy header that declares man.c's public globals
 * (sensor[], offsetA, offsetB, manref, etc.). alarms.h declares the
 * status3[] global which several getters read. */
#include "globals.h"
#include "man.h"
#include "alarms.h"
#include "define.h"
#include "utils.h"
#include <string.h>    /* memset for init helpers */

/* Legacy utils.c defines this but utils.h doesn't declare it. Forward
 * declare so the compiler doesn't complain about implicit declaration. */
extern int FloattoIntRound(float val);

/* Pull in the src/ APIs we will eventually call. */
#include "rapid_wear/rapid_wear.h"
#include "rapid_wear/rapid_wear_8_7.h"
#include "rapid_wear/delta_rpm_tracker.h"
#include "slow_wear/slow_wear.h"
#include "speed_comp/speed_comp.h"
#include "sensor_adjust/sensor_adjust.h"
#include "alarms/alarm_thresholds.h"
#include "alarms/alarm_thresholds_8_7.h"

/* ================================================================ */
/* Sensor-replacement state expected by legacy PCModBus.c           */
/* ================================================================ */

/* These four globals were defined in legacy man.c (lines ~140). */
int iSensorInRepalceMode  = 0;
int iSensorInResetMode    = 0;
int iSensorInRepalceTimer = 0;
int iSensorInRepalce      = 0;
int iSensorToMonitor      = 0;

/* Speed compensation table — was a 150x28 array in legacy man.c.
 * Phase B-3 will route reads/writes to src/speed_comp/. For now,
 * provide a placeholder so the symbol resolves.
 *
 * The DATA_SECTION pragma matches legacy man.c:48 — `man_comptable`
 * lives in the H0RAM-mapped `.mancomp` section, NOT in the small
 * L0L1RAM `.ebss`. Without this, .ebss overflows by ~3 KB. */
#pragma DATA_SECTION(man_comptable, ".mancomp");
int man_comptable[150][28];

/* ================================================================ */
/* Legacy globals defined-in-man.c (referenced by infrastructure)   */
/* ================================================================ */

/* Per man.h declarations. Using the legacy types preserves layout. */
prewarnstruct       prewarn;
offsetstruct        offsetA;
offsetstruct        offsetB;
sensorstruct        sensor[MAX_NUM_CHANNELS];
functionstruct      function;
manrefstruct        manref[MAX_NUM_CHANNELS];
manrefsumstruct     manrefsum[MAX_NUM_CYLINDERS];
damagemonstruct     damagemon;
dynamicalarmsstruct dynalarmlevels;
damalarmsstruct     damalarms;
unsigned int        checkmanalarms[MAX_NUM_CHANNELS];
unsigned int        iBarred;
unsigned int        iDeltaRPM15;
enginestruct        engine;

/* ================================================================ */
/* Init / setup functions                                           */
/* ================================================================ */

void SetupNormalModeAlarmLevels(void) { /* TODO B-4 */ }

/* B-3: clear the speed-compensation reference table. Mirrors legacy
 * man.c ClearMANTable(type=0) behaviour: zero every entry. type=1
 * (selective clear) is left as TODO. */
void ClearMANTable(int type)
{
    int i, j;
    if (type == 0) {
        for (i = 0; i < 150; i++) {
            for (j = 0; j < 28; j++) man_comptable[i][j] = 0;
        }
    }
    /* type==1 path is "clear only invalid bands" — TODO when needed. */
}

/* B-2: zero the sensor[] array, manref[], manrefsum[]. Mirrors legacy
 * InitSensors() role of returning all per-channel state to a known
 * baseline before NVMEM data is loaded over the top. */
void InitSensors(void)
{
    memset(sensor,    0, sizeof sensor);
    memset(manref,    0, sizeof manref);
    memset(manrefsum, 0, sizeof manrefsum);
}

/* B-2: init the per-channel status1 bits. After power-up everything is
 * disabled until enabled by config or NVMEM load. */
void InitStatus1Flags(void)
{
    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        sensor[i].status1.enabled = 0;
    }
}

/* B-2: init the speed-comp table + related state. Legacy InitMAN was
 * a thicker function; for B-1 we just clear the table. NVMEM load
 * happens in ReadAllSensorStructfromNVMEM (Phase B-6). */
void InitMAN(void)
{
    ClearMANTable(0);
}

void NominalSpeedUpdate(void) { /* TODO B-3 */ }
void StartupRefReload(void) { /* TODO B-3 */ }
void WriteDamagemontoNVMEM(void) { /* TODO B-6 */ }
void ReadDamagemonfromNVMEM(void) { /* TODO B-6 */ }
void PreWarningInit(void) { /* TODO B-3 */ }
void PreWarningPowerUpInit(void) { /* TODO B-3 */ }
void PreWarnLevelReset(void) { /* TODO B-3 */ }
void EnableNoiseFilter(int flag) { (void)flag; /* TODO B-3 */ }
void ClearSelectiveMANTable(void) { /* TODO B-3 */ }
void ModbusUpdateSensorStatus(void) { /* TODO B-5 */ }

/* ================================================================ */
/* Per-sensor configuration (called from PCModBus.c, mancal.c)      */
/* ================================================================ */

void SetSensorEnabled(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].status1.enabled = (val == 1) ? 1 : 0;
}

void SetCalMode(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].status1.calmode = (val) ? 1 : 0;
}

void SetAlarmMask(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].status1.alarmmask = (val) ? 1 : 0;
}

/* ================================================================ */
/* RPM accessors (called from adc.c ISR)                            */
/* ================================================================ */

/* B-3 RPM accessors — direct field access on the legacy sensor[] array.
 *
 * Modal-RPM logic comes in two flavours selected at compile time:
 *
 *   default            — simple average of enabled-sensor RPMs.
 *                        Placeholder; usable for bench bring-up but
 *                        REGRESSIVE vs legacy v6.20 (legacy used the
 *                        modal-histogram + 25-RPM trap mechanism).
 *
 *   BWM_PRISTINE_INTEGRATION — port of the legacy mechanism: build a
 *                        per-revolution histogram of channel RPMs,
 *                        pick the most-popular bin, and flag any
 *                        channel whose RPM is more than RPM_MODAL_OFFSET
 *                        away from modal as out-of-range (rpmoor=1).
 *                        Legacy required >3 consecutive strikes to
 *                        latch rpmoor and >10 consecutive in-range
 *                        samples to clear; preserved here.
 *
 * Phase B-β closes this gap. Both behaviours are kept in-tree to make
 * A/B comparison on bench trivial: build hybrid → placeholder build,
 * build hybrid_pristine → legacy-equivalent build. */

#ifndef BWM_PRISTINE_INTEGRATION
#define BWM_PRISTINE_INTEGRATION 0
#endif

#define BWM_RPM_MODAL_OFFSET   25  /* matches legacy define.h */
#define BWM_RPM_MODAL_STRIKES   3
#define BWM_RPM_MODAL_RESETS   10

void SetRPMChan(unsigned int chan, unsigned int rpm)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].rpm = rpm;
}

/* Engine-wide nominal-RPM seed. Legacy callers use this from PCModBus
 * to push a configured RPM. We mirror to allsensors.nominalspeed. */
void SetRPM(unsigned int rpmin)
{
    allsensors.nominalspeed = rpmin;
}

#if BWM_PRISTINE_INTEGRATION

/* Pristine modal-RPM histogram with 25-RPM trap.
 *
 * Legacy v6.20 keeps two state arrays (modalsetcounters /
 * modalresetcounters) per channel for the rpmoor latching. Each call
 * with flag=1 rebuilds the histogram and updates the rpmoor flags;
 * flag=0 returns the most recent modal value; flag=2 forces clear. */

static int s_rpm_strikes[MAX_NUM_CHANNELS];
static int s_rpm_resets [MAX_NUM_CHANNELS];
static unsigned int s_modal_rpm_cache;

unsigned int GetModalRPM(int flag)
{
    unsigned int i, k, pos;
    int rpmval;
    int modal_rpm[MAX_NUM_CHANNELS][2];   /* [bin_value, count] */
    int modal_pos = 0;
    int modal_count = 0;
    unsigned int n_active = 0;

    if (flag == 2) {
        s_modal_rpm_cache = 0;
        return 0;
    }
    if (flag == 0) return s_modal_rpm_cache;

    /* flag == 1 → recompute. */
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        modal_rpm[i][0] = -1;
        modal_rpm[i][1] = 0;
    }

    /* Build histogram: each enabled channel's rpm goes in a bin. */
    pos = 0;
    n_active = (allsensors.numsensorsspu1 == 0) ? MAX_NUM_CHANNELS
                                                : allsensors.numsensorsspu1;
    if (n_active > MAX_NUM_CHANNELS) n_active = MAX_NUM_CHANNELS;
    for (i = 0; i < n_active; i++) {
        if (sensor[i].status1.enabled == FALSE) continue;
        rpmval = (int)sensor[i].rpm;
        for (k = 0; k < pos; k++) {
            if (modal_rpm[k][0] == rpmval) {
                modal_rpm[k][1]++;
                break;
            }
        }
        if (k == pos) {
            modal_rpm[pos][0] = rpmval;
            modal_rpm[pos][1] = 1;
            pos++;
        }
    }

    /* Find most-populous bin. */
    modal_pos = 0;
    modal_count = (pos > 0) ? modal_rpm[0][1] : 0;
    for (i = 1; i < pos; i++) {
        if (modal_rpm[i][1] >= modal_count) {
            modal_count = modal_rpm[i][1];
            modal_pos   = i;
        }
    }
    s_modal_rpm_cache = (pos > 0) ? (unsigned int)modal_rpm[modal_pos][0] : 0;

    /* Update the rpmoor latch on each channel. */
    if (s_modal_rpm_cache != 0) {
        int modal_int = (int)s_modal_rpm_cache;
        for (i = 0; i < n_active; i++) {
            if (sensor[i].status1.enabled == FALSE) continue;
            int v = (int)sensor[i].rpm;
            int delta = v - modal_int;
            if (delta < 0) delta = -delta;
            if (delta > BWM_RPM_MODAL_OFFSET) {
                if (s_rpm_strikes[i] >= BWM_RPM_MODAL_STRIKES) {
                    Status3Flags(i)->rpmoor = 1;
                } else {
                    s_rpm_strikes[i]++;
                }
                s_rpm_resets[i] = 0;
            } else {
                s_rpm_strikes[i] = 0;
                if (s_rpm_resets[i] >= BWM_RPM_MODAL_RESETS) {
                    Status3Flags(i)->rpmoor = 0;
                } else {
                    s_rpm_resets[i]++;
                }
            }
        }
    }

    return s_modal_rpm_cache;
}

#else  /* BWM_PRISTINE_INTEGRATION == 0 — placeholder build */

unsigned int GetModalRPM(int flag)
{
    if (flag == 2) return 0;
    unsigned int sum = 0;
    unsigned int n   = 0;
    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        if (sensor[i].status1.enabled && sensor[i].rpm > 0) {
            sum += sensor[i].rpm;
            n++;
        }
    }
    return (n > 0) ? (sum / n) : 0;
}

#endif  /* BWM_PRISTINE_INTEGRATION */

unsigned int GetRPM(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return 0;
    return sensor[chan].rpm;
}

/* ================================================================ */
/* Per-sensor scaled-value accessors (called from PCModBus.c)       */
/* ================================================================ */

/* These accessors mirror legacy man.c:401-466. The clamping behaviour
 * (SCALEDVAL_LIMIT) is preserved verbatim. */

void SetImmScaledValue(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].immediateval = (val < SCALEDVAL_LIMIT) ? val : SCALEDVAL_LIMIT;
}

void SetScaledValue(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].initialval = (val < SCALEDVAL_LIMIT) ? val : SCALEDVAL_LIMIT;
}

int GetScaledValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return 0;
    return sensor[chan].initialval;
}

int GetPreCompValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return DISABLED_LOG_VALUE;
    if (sensor[chan].status1.enabled == FALSE) return DISABLED_LOG_VALUE;
    if (settings.dcmode == 0) {
        if (status3[chan].low  == TRUE) return LOWLEVEL_LOG_VALUE;
        if (status3[chan].high == TRUE) return HILEVEL_LOG_VALUE;
    }
    return sensor[chan].precomp;
}

void SetPreCompValue(unsigned int chan, int val)
{
    if (chan >= MAX_NUM_CHANNELS) return;
    sensor[chan].precomp = (val < SCALEDVAL_LIMIT) ? val : SCALEDVAL_LIMIT;
}

int GetPostCompValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return 0;
    return sensor[chan].postcomp;
}

int GetPostFilteredValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return 0;
    return FloattoIntRound(sensor[chan].postfilter);
}

int GetEndResultValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return DISABLED_LOG_VALUE;
    if (sensor[chan].status1.enabled == FALSE) return DISABLED_LOG_VALUE;
    if (status3[chan].low  == TRUE) return LOWLEVEL_LOG_VALUE;
    if (status3[chan].high == TRUE) return HILEVEL_LOG_VALUE;
    return sensor[chan].endresult;
}

int GetSensorDeviationValue(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) return DISABLED_LOG_VALUE;
    if (sensor[chan].status1.enabled == FALSE) return DISABLED_LOG_VALUE;
    if (status3[chan].low  == TRUE) return LOWLEVEL_LOG_VALUE;
    if (status3[chan].high == TRUE) return HILEVEL_LOG_VALUE;
    return sensor[chan].deviation;
}

int GetCylinderAverageValue(unsigned int num)
{
    if (num >= MAX_NUM_CYLINDERS) return 0;
    return cylinders[num].average;
}

int GetCylinderDeviationValue(unsigned int num)
{
    if (num >= MAX_NUM_CYLINDERS) return 0;
    return cylinders[num].deviation;
}

int *MANCompTable(unsigned int chan, unsigned int refpoint)
{
    /* Legacy returned a pointer into the [refpoint][chan] cell. */
    if (refpoint >= 150) refpoint = 0;
    if (chan    >= 28)  chan    = 0;
    return &man_comptable[refpoint][chan];
}

/* ================================================================ */
/* Orchestration entry points (called from core.c main loop)        */
/* ================================================================ */

/* B-3: per-sensor algorithm state. The src/ modules are pure — they
 * don't define globals — so the bridge owns the long-lived state.
 * Cleared at boot by InitSensors via `manbridge_init_states()`. */
static rapid_wear_sensor_state_t s_rapid[MAX_NUM_CHANNELS];
static slow_wear_sensor_state_t  s_slow[MAX_NUM_CHANNELS];
static delta_rpm_tracker_state_t s_drpm;

void manbridge_init_states(void)
{
    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        rapid_wear_init_sensor(&s_rapid[i]);
        slow_wear_init_sensor(&s_slow[i]);
    }
    delta_rpm_tracker_init(&s_drpm);
}

/* @brief Process one new sample for one sensor through the src/ pipeline.
 * Reads sensor[i].precomp (raw, micron-scale), runs speed comp, slow-wear
 * filter, rapid-wear EMAs. Writes back postcomp, postfilter, endresult. */
static void process_one_sensor(unsigned int i, Uint16 rpm, Uint16 nominal_rpm)
{
    if (i >= MAX_NUM_CHANNELS) return;
    if (sensor[i].status1.enabled == FALSE) return;
    if (sensor[i].newval == FALSE) return;

    Int16 raw = (Int16)sensor[i].precomp;

    /* Step 1: speed compensation (lookup table - linear interp). For
     * B-3 we use the legacy man_comptable directly; later phases may
     * replace it with src/speed_comp_table_t entirely. */
    int band = (int)((Uint32)rpm * 150 / nominal_rpm);
    if (band < 0)            band = 0;
    if (band >= 150)         band = 149;
    Int16 ref = (Int16)man_comptable[band][i];
    Int16 v_comp = (Int16)(raw - ref);
    sensor[i].postcomp = v_comp;

    /* Step 2: slow-wear filter (per-sensor low-pass EMA). */
    slow_wear_apply_sample(&s_slow[i], (float)v_comp);
    sensor[i].postfilter = s_slow[i].filtered_value;
    sensor[i].endresult  = FloattoIntRound(s_slow[i].filtered_value);

    /* Step 3: rapid-wear EMAs (slow + fast). The deviation per spec
     * is rapid_fast - rapid_slow; sensor[i].deviation is an
     * unrelated legacy field used for slow-wear sensor deviation,
     * so we don't write rapid_wear into it. */
    rapid_wear_apply_sample(&s_rapid[i], (float)v_comp);

    sensor[i].newval = FALSE;
}

/**
 * @brief Main per-cycle algorithm dispatcher.
 *
 * Called from the legacy main loop in core.c at every iteration. We
 * walk every enabled sensor, drive new samples through the src/
 * pipeline, and update the legacy sensor[] fields the rest of the
 * legacy code reads.
 */
void MANModules(void)
{
    /* Use the modal RPM from the legacy ADC tracker. */
    unsigned int rpm = GetModalRPM(0);
    Uint16 nominal = (Uint16)allsensors.nominalspeed;
    if (nominal == 0) return;  /* not configured yet */

    /* Update the §4.4 ΔRPM tracker once per cycle. */
    delta_rpm_tracker_update(&s_drpm, (Uint16)rpm);

    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        process_one_sensor(i, (Uint16)rpm, nominal);
    }
}

/* B-4: per-sensor alarm classification.
 *
 * Two flavours selectable at compile time, same shape as the modal-RPM
 * code above:
 *
 *   default            — stateless instantaneous classification.
 *                        Sets `sensor[i].status2.alarm/slowdown` bits
 *                        whenever the latest filtered value is over
 *                        threshold; clears them as soon as it isn't.
 *                        Placeholder; OK for bench bring-up but does
 *                        not match v8.7 alarm-dwell expectations.
 *
 *   BWM_PRISTINE_INTEGRATION — latched classification with hysteresis.
 *                        Once an alarm trips (filtered_abs ≥ threshold)
 *                        it stays latched in `sensor[i].status2.*latched`
 *                        until the value drops below
 *                        (threshold - allsensors.sensorhysteresis).
 *                        Mirrors legacy v6.20 SensorAlarm() / SensorSlowDown()
 *                        latching idiom.
 *
 * Phase B-γ closes this gap. */

static int abs_int(int v) { return v < 0 ? -v : v; }

#if BWM_PRISTINE_INTEGRATION

/* Latched classification: alarm bit and *latched bit follow the legacy
 * idiom. Hysteresis is in `allsensors.sensorhysteresis`, configurable
 * over Modbus by the operator. */
static void classify_one_pristine(unsigned int i)
{
    if (sensor[i].status1.enabled == FALSE) {
        sensor[i].status2.alarm           = 0;
        sensor[i].status2.alarmlatched    = 0;
        sensor[i].status2.slowdown        = 0;
        sensor[i].status2.slowdownlatched = 0;
        return;
    }

    int filtered_abs = abs_int(sensor[i].endresult);
    int hysteresis   = allsensors.sensorhysteresis;
    if (hysteresis < 0) hysteresis = 0;

    /* Slowdown threshold (worst). */
    if (filtered_abs >= SLOWDOWN_SLOW_FILTERED_NORMAL_8_7) {
        sensor[i].status2.slowdown        = 1;
        sensor[i].status2.slowdownlatched = 1;
        sensor[i].status2.alarm           = 1;
        sensor[i].status2.alarmlatched    = 1;
        return;
    } else if (filtered_abs <= SLOWDOWN_SLOW_FILTERED_NORMAL_8_7 - hysteresis) {
        if (sensor[i].status2.slowdownlatched) {
            sensor[i].status2.slowdown        = 0;
            sensor[i].status2.slowdownlatched = 0;
        }
    }

    /* Alarm threshold. */
    if (filtered_abs >= ALARM_SLOW_FILTERED_NORMAL_8_7) {
        sensor[i].status2.alarm        = 1;
        sensor[i].status2.alarmlatched = 1;
    } else if (filtered_abs <= ALARM_SLOW_FILTERED_NORMAL_8_7 - hysteresis) {
        if (sensor[i].status2.alarmlatched && !sensor[i].status2.slowdownlatched) {
            sensor[i].status2.alarm        = 0;
            sensor[i].status2.alarmlatched = 0;
        }
    }

    /* Rapid-wear contribution — sets alarmlatched if exceeded; never
     * un-sets a slow-wear-induced latch. */
    float rapid_wear = s_rapid[i].rapid_fast - s_rapid[i].rapid_slow;
    if (rapid_wear < 0) rapid_wear = -rapid_wear;
    if ((int)rapid_wear >= ALARM_RAPID_BASIC_SINGLE_NORMAL_8_7) {
        sensor[i].status2.alarm        = 1;
        sensor[i].status2.alarmlatched = 1;
    }
}

void MANAlarmChecks(unsigned int rpm)
{
    (void)rpm;
    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) classify_one_pristine(i);
}

#else  /* BWM_PRISTINE_INTEGRATION == 0 — placeholder, stateless build */

void MANAlarmChecks(unsigned int rpm)
{
    (void)rpm;
    unsigned int i;
    for (i = 0; i < MAX_NUM_CHANNELS; i++) {
        if (sensor[i].status1.enabled == FALSE) {
            sensor[i].status2.alarm    = 0;
            sensor[i].status2.slowdown = 0;
            sensor[i].status2.prewarning = 0;
            continue;
        }

        int filtered_abs = abs_int(sensor[i].endresult);

        if (filtered_abs >= SLOWDOWN_SLOW_FILTERED_NORMAL_8_7) {
            sensor[i].status2.alarm    = 1;
            sensor[i].status2.slowdown = 1;
        } else if (filtered_abs >= ALARM_SLOW_FILTERED_NORMAL_8_7) {
            sensor[i].status2.alarm    = 1;
            sensor[i].status2.slowdown = 0;
        } else {
            sensor[i].status2.alarm    = 0;
            sensor[i].status2.slowdown = 0;
        }

        float rapid_wear = s_rapid[i].rapid_fast - s_rapid[i].rapid_slow;
        if (rapid_wear < 0) rapid_wear = -rapid_wear;
        if ((int)rapid_wear >= ALARM_RAPID_BASIC_SINGLE_NORMAL_8_7) {
            sensor[i].status2.alarm = 1;
        }
    }
}

#endif  /* BWM_PRISTINE_INTEGRATION */

/* ================================================================ */
/* Additional functions referenced by legacy infrastructure         */
/* (defined-in-legacy-man.c, missing without man.c in the link)     */
/* ================================================================ */

void EngineRunTimeUpdate(void) { /* TODO B-3 */ }
unsigned int GetCheckedRPM(int unit) { (void)unit; return 0; /* TODO B-3 */ }
unsigned int GetSensorAlarmMask(unsigned int chan) { (void)chan; return 0; /* TODO B-4 */ }
unsigned int GetSensorEnabled(unsigned int chan) { (void)chan; return 0; /* TODO B-2 */ }

sensoralarmstruct *GetStatus2Flags(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) chan = 0;
    return &sensor[chan].status2;
}

unsigned int ReadStatus1Int(unsigned int chan) { (void)chan; return 0; /* TODO B-3 */ }
void LoadDamagemonDefaults(void) { /* TODO B-2 */ }
void PrewarnReset(unsigned int chan) { (void)chan; /* TODO B-3 */ }

/* NVMEM persistence stubs — Phase B-6 wires these to legacy
 * sdcard.c + ReadNVMemory/WriteNVMemory primitives. For B-1, no-op
 * is sufficient: the boot sequence runs but persistence is a no-op. */
void ReadAllSensorStructfromNVMEM(void) { /* TODO B-6 */ }
void WriteAllSensorStructtoNVMEM(void) { /* TODO B-6 */ }
void WriteEngineStructtoNVMEM(void) { /* TODO B-6 */ }
void WriteMANCompTabletoNVMEM(void) { /* TODO B-6 */ }
void WriteOffsetAtoNVMEM(unsigned int chan) { (void)chan; /* TODO B-6 */ }
void WriteOffsetBtoNVMEM(unsigned int chan) { (void)chan; /* TODO B-6 */ }
void WriteSensorStatustoNVMEM(unsigned int chan) { (void)chan; /* TODO B-6 */ }

/* Status1Flags returns a pointer into the per-sensor status1 field.
 * Legacy callers use this to query/modify status bits without going
 * through accessor functions. */
status1struct *Status1Flags(unsigned int chan)
{
    if (chan >= MAX_NUM_CHANNELS) chan = 0;
    return &sensor[chan].status1;
}
