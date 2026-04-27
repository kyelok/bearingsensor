/*
 * synthetic_engine.h — drive realistic BWM sensor signals for tests.
 *
 * A "synthetic engine" models a BWM scenario:
 *   - N cylinders (typically 6-12 for marine 2-stroke crosshead engines)
 *   - 2N sensors (fore + aft per cylinder)
 *   - Configurable RPM (steady, ramping, fluctuating)
 *   - Per-sensor BDC level (mm relative to nominal)
 *   - Per-sensor wear pattern: none, slow drift, sudden step, gradual ramp
 *
 * The engine "ticks" once per revolution and produces:
 *   - One BDC-level sample per sensor (in mm)
 *   - The current RPM
 *   - The current direction (forward/astern)
 *
 * Tests use this to drive realistic scenarios and verify firmware
 * algorithms produce correct alarms / log entries / state transitions.
 *
 * Example (testing a slow-wear alarm):
 *   synthetic_engine_init(6); // 6-cylinder
 *   synthetic_engine_set_rpm(80);
 *   for (int rev = 0; rev < 1000; rev++) {
 *       synthetic_engine_set_sensor_wear(2, rev * 0.0001f); // gradual wear on cyl 2 fore
 *       synthetic_engine_tick(); // produce one rev of samples
 *   }
 *   // assert: slow-wear alarm released for sensor 2
 *
 * Sensor numbering convention: sensor[0] = cyl 1 fore, sensor[1] = cyl 1 aft,
 * sensor[2] = cyl 2 fore, sensor[3] = cyl 2 aft, etc.
 */

#ifndef BWM_SYNTHETIC_ENGINE_H
#define BWM_SYNTHETIC_ENGINE_H

#include "platform.h"

#define SYNTH_MAX_CYLINDERS  14
#define SYNTH_MAX_SENSORS    (SYNTH_MAX_CYLINDERS * 2)

typedef enum {
    SYNTH_DIR_UNKNOWN = 0,
    SYNTH_DIR_FORWARD = 1,
    SYNTH_DIR_ASTERN  = -1
} synth_direction;

void synthetic_engine_init(Uint16 num_cylinders);

/* Engine speed control. */
void synthetic_engine_set_rpm(Uint16 rpm);
void synthetic_engine_set_nominal_rpm(Uint16 rpm);
void synthetic_engine_set_direction(synth_direction d);

/* Per-sensor controls — additive. The "true" BDC level reported on a
 * tick is: nominal_bdc_level + speed_compensation(rpm) + wear[i] + noise(). */
void synthetic_engine_set_nominal_bdc_mm(int sensor, float mm);
void synthetic_engine_set_sensor_wear(int sensor, float mm);
void synthetic_engine_set_sensor_failed(int sensor, int failed); /* if failed, returns 0 mA */
void synthetic_engine_set_noise_amplitude(float mm);

/* Advance the engine one revolution and produce per-sensor samples
 * accessible via the query functions below. */
void synthetic_engine_tick(void);

/* Per-tick query functions — what the firmware would observe. */
float          synthetic_engine_sensor_mm(int sensor);
Uint16         synthetic_engine_current_rpm(void);
synth_direction synthetic_engine_current_direction(void);
Uint32         synthetic_engine_revolution_count(void);

/* Simulation of a barred-speed-band reading: forces the next tick's
 * RPM to be inside the user-defined torsional vibration band. */
void synthetic_engine_set_barred_band(Uint16 low_rpm, Uint16 high_rpm);

#endif /* BWM_SYNTHETIC_ENGINE_H */
