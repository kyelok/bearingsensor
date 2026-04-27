/*
 * fake_adc.h — TI F2811 on-chip 12-bit ADC emulation.
 *
 * The SPU's TMS320F2811 has an on-chip 16-channel 12-bit ADC sampled
 * via interrupt every ~33 µs. The firmware reads ADC results from the
 * ADCRESULT0..N memory-mapped registers (see SourceCode1/.../core.h).
 *
 * Channels are external 4-20 mA current-loop inputs. Scaling
 * (per define.h):
 *   #define COUNTS_PER_MA 204.8
 *   4 mA  →  819 counts
 *   20 mA →  4095 counts
 *
 * This fake provides a programmable per-channel sample stream so
 * tests can simulate "sensor 3 reads 14 mA, sensor 5 reads 0 mA
 * (failed)" scenarios.
 *
 * Tests typically:
 *   1. fake_adc_init();
 *   2. fake_adc_set_channel_mA(channel, mA_value);
 *   3. Call firmware function that reads ADC.
 *   4. Inspect outputs.
 */

#ifndef BWM_FAKE_ADC_H
#define BWM_FAKE_ADC_H

#include "platform.h"

#define FAKE_ADC_NUM_CHANNELS  16
#define FAKE_ADC_COUNTS_4MA    819
#define FAKE_ADC_COUNTS_20MA   4095

void fake_adc_init(void);

/* Set the current value for a logical input channel.
 *   channel: 0..15
 *   mA: any float; 4..20 is valid range, < 4 = "below low alarm",
 *       > 20 = "above high alarm". 0 = sensor unplugged. */
void fake_adc_set_channel_mA(Uint16 channel, float mA);

/* Set channel to raw 12-bit count (0..4095) directly. */
void fake_adc_set_channel_raw(Uint16 channel, Uint16 raw_count);

/* Drive a sensor through one revolution of an engine cycle. Sets the
 * channel's instantaneous count, simulating the proximity sensor's
 * BDC-detection peak. */
void fake_adc_pulse_channel(Uint16 channel, Uint16 peak_count);

/* The firmware reads ADCRESULTn registers. This is what those
 * registers return on host. */
Uint16 fake_adc_read_result(Uint16 channel);

/* Returns the current per-channel value in mA — for assertion. */
float fake_adc_get_channel_mA(Uint16 channel);

#endif /* BWM_FAKE_ADC_H */
