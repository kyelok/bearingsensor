/*
 * src/integration/legacy_globals_stubs.c
 *
 * Phase B-1 of the integration layer (per host/docs/INTEGRATION_LAYER_DESIGN.md):
 * provide minimal definitions for the legacy globals that legacy
 * infrastructure code expects to find. These stubs let the linker
 * resolve symbols so we can produce a buildable hybrid `.a00`. The
 * stubs do NOT implement the legacy semantics — they are place-holders
 * to be progressively replaced by real implementations or by bridge
 * functions that delegate to src/ data structures.
 *
 * As Phases B-2 through B-8 land, each global here gets either:
 *   - A real implementation (if the legacy semantics are still useful), OR
 *   - A bridge that translates legacy access patterns to src/ APIs, OR
 *   - Removal (if the calling code is replaced with src/ equivalents).
 *
 * THIS FILE IS A SCAFFOLD. It is not the long-term home for these
 * symbols. See INTEGRATION_LAYER_DESIGN.md § "Bridge functions needed"
 * for the target architecture.
 */

#include "core/types.h"
#include "rapid_wear/rapid_wear.h"
#include "slow_wear/slow_wear.h"
#include "speed_comp/speed_comp.h"
#include "alarms/alarm_thresholds.h"

/* ===== Legacy struct shapes used by infrastructure ===== */

/* Minimal opaque-ish structs to satisfy legacy code's pointer dereferences.
 * Real layouts are in legacy globals.h; we use minimal forward-compatible
 * versions here. */

typedef struct {
    Uint16 dummy;
} legacy_settings_t;

typedef struct {
    Uint16 numsensors;
    Uint16 numsensorsspu1;
    Uint16 numsensorsspu2;
    Uint16 rpmmin;
    Uint16 rpmmax;
    Uint16 dummy[24];
} legacy_allsensorstruct;

typedef struct {
    Uint16 dummy[16];
} legacy_configstruct;

typedef struct {
    Uint16 dummy[16];
} legacy_engineering_globals;

/* ===== Stub globals — legacy code accesses these by name ===== */

legacy_settings_t      settings;
legacy_allsensorstruct allsensors;
legacy_configstruct    config;
legacy_engineering_globals timers;
legacy_engineering_globals clocktime;
legacy_engineering_globals offsetA;
legacy_engineering_globals offsetB;
legacy_engineering_globals speedcompcoeffs;
legacy_engineering_globals safe1;
legacy_engineering_globals safe2;
legacy_engineering_globals prewarn;
legacy_engineering_globals sdsettings;
legacy_engineering_globals wiosettings;
legacy_engineering_globals firmware;
legacy_engineering_globals function;
legacy_engineering_globals livetime;
legacy_engineering_globals logtime;
legacy_engineering_globals modbusrxchar;
legacy_engineering_globals pcmodbus;
legacy_engineering_globals reprogram;
legacy_engineering_globals stringbuffer;
legacy_engineering_globals bitalarmlist;
legacy_engineering_globals biteventlist;
legacy_engineering_globals biteventpos;
legacy_engineering_globals calibrationtd;
legacy_engineering_globals waterinoil;
legacy_engineering_globals damalarms;
legacy_engineering_globals cylinders;
legacy_engineering_globals alarms;
legacy_engineering_globals motion;
legacy_engineering_globals loopcheck;
legacy_engineering_globals damagemonignore;
legacy_engineering_globals sensor;
legacy_engineering_globals status3;
legacy_engineering_globals xtswplusanacal;

/* ===== Stub functions — legacy code calls these ===== */

void WriteWIOSettingstoNVMEM(void) { /* no-op */ }
void bitEventIncrement(void) { /* no-op */ }

/*
 * Stubbed orchestration functions originally in legacy man.c. These
 * are intentionally empty in Phase B-1; they will be replaced by
 * real bridges (Phase B-3+) that drive src/ algorithms from legacy
 * sample data.
 */
void MANModules(void) { /* no-op until Phase B-3 */ }
void MANRefCalcs(int numsens, int rpm) { (void)numsens; (void)rpm; }
void DynamicAlarmLevel(int rpm, float load) { (void)rpm; (void)load; }
unsigned int GetModalRPM(int flag) { (void)flag; return 0; }
void SetRPMChan(unsigned int chan, unsigned int rpm) { (void)chan; (void)rpm; }
unsigned int GetRPM(unsigned int chan) { (void)chan; return 0; }
