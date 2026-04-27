/*
 * synthetic_engine.c — produces realistic BWM samples.
 */

#include "synthetic_engine.h"

static Uint16 g_num_cylinders;
static Uint16 g_num_sensors;
static Uint16 g_rpm;
static Uint16 g_nominal_rpm;
static synth_direction g_direction;
static Uint32 g_revolution_count;

static float  g_nominal_bdc_mm[SYNTH_MAX_SENSORS];
static float  g_sensor_wear_mm[SYNTH_MAX_SENSORS];
static int    g_sensor_failed[SYNTH_MAX_SENSORS];
static float  g_noise_mm;
static float  g_current_sensor_mm[SYNTH_MAX_SENSORS];

static Uint16 g_barred_low;
static Uint16 g_barred_high;

/* Speed compensation curve for a 'typical' large-bore engine (mm change
 * 20-110% rpm = -0.35). Linear with rpm. */
static float speed_compensation_mm(Uint16 rpm)
{
    if (g_nominal_rpm == 0) return 0.0f;
    /* slope: -0.35 mm across rpm range [0.2*nominal, 1.1*nominal]. */
    float fraction = ((float)rpm - 0.2f * g_nominal_rpm) / (0.9f * g_nominal_rpm);
    if (fraction < 0.0f) fraction = 0.0f;
    if (fraction > 1.0f) fraction = 1.0f;
    return -0.35f * fraction;
}

/* Cheap deterministic pseudo-noise: per-rev hash. Avoids stdlib rand. */
static float pseudo_noise(int sensor, Uint32 rev)
{
    if (g_noise_mm <= 0.0f) return 0.0f;
    Uint32 h = (Uint32)sensor * 2654435761U + rev * 0x9E3779B9U;
    h ^= h >> 16;
    /* Map to [-1, 1] then scale. */
    float u = ((float)((int)(h & 0xFFFF)) - 32768.0f) / 32768.0f;
    return u * g_noise_mm;
}

void synthetic_engine_init(Uint16 num_cylinders)
{
    if (num_cylinders > SYNTH_MAX_CYLINDERS) num_cylinders = SYNTH_MAX_CYLINDERS;
    g_num_cylinders = num_cylinders;
    g_num_sensors = num_cylinders * 2;
    g_rpm = 0;
    g_nominal_rpm = 100;
    g_direction = SYNTH_DIR_FORWARD;
    g_revolution_count = 0;
    g_noise_mm = 0.0f;
    g_barred_low = 0;
    g_barred_high = 0;
    for (int i = 0; i < SYNTH_MAX_SENSORS; i++) {
        g_nominal_bdc_mm[i] = 0.0f;
        g_sensor_wear_mm[i] = 0.0f;
        g_sensor_failed[i] = 0;
        g_current_sensor_mm[i] = 0.0f;
    }
}

void synthetic_engine_set_rpm(Uint16 rpm)              { g_rpm = rpm; }
void synthetic_engine_set_nominal_rpm(Uint16 rpm)      { g_nominal_rpm = rpm; }
void synthetic_engine_set_direction(synth_direction d) { g_direction = d; }

void synthetic_engine_set_nominal_bdc_mm(int sensor, float mm)
{
    if (sensor < 0 || sensor >= SYNTH_MAX_SENSORS) return;
    g_nominal_bdc_mm[sensor] = mm;
}

void synthetic_engine_set_sensor_wear(int sensor, float mm)
{
    if (sensor < 0 || sensor >= SYNTH_MAX_SENSORS) return;
    g_sensor_wear_mm[sensor] = mm;
}

void synthetic_engine_set_sensor_failed(int sensor, int failed)
{
    if (sensor < 0 || sensor >= SYNTH_MAX_SENSORS) return;
    g_sensor_failed[sensor] = failed;
}

void synthetic_engine_set_noise_amplitude(float mm) { g_noise_mm = mm; }

void synthetic_engine_set_barred_band(Uint16 low_rpm, Uint16 high_rpm)
{
    g_barred_low  = low_rpm;
    g_barred_high = high_rpm;
}

void synthetic_engine_tick(void)
{
    g_revolution_count++;
    float speed_comp = speed_compensation_mm(g_rpm);
    for (Uint16 i = 0; i < g_num_sensors; i++) {
        if (g_sensor_failed[i]) {
            g_current_sensor_mm[i] = 0.0f;
            continue;
        }
        g_current_sensor_mm[i] = g_nominal_bdc_mm[i]
                               + speed_comp
                               + g_sensor_wear_mm[i]
                               + pseudo_noise(i, g_revolution_count);
    }
}

float           synthetic_engine_sensor_mm(int sensor)        {
    if (sensor < 0 || sensor >= SYNTH_MAX_SENSORS) return 0.0f;
    return g_current_sensor_mm[sensor];
}
Uint16          synthetic_engine_current_rpm(void)            { return g_rpm; }
synth_direction synthetic_engine_current_direction(void)      { return g_direction; }
Uint32          synthetic_engine_revolution_count(void)       { return g_revolution_count; }
