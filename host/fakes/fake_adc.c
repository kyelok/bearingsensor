/*
 * fake_adc.c — TI F2811 ADC emulation (12-bit, 16-channel).
 */

#include "fake_adc.h"

static Uint16 g_results[FAKE_ADC_NUM_CHANNELS];

static Uint16 ma_to_count(float mA)
{
    if (mA < 0.0f) mA = 0.0f;
    float counts_f = mA * 204.8f;
    if (counts_f > 4095.0f) counts_f = 4095.0f;
    return (Uint16)counts_f;
}

static float count_to_ma(Uint16 count)
{
    return (float)count / 204.8f;
}

void fake_adc_init(void)
{
    for (int i = 0; i < FAKE_ADC_NUM_CHANNELS; i++) g_results[i] = 0;
}

void fake_adc_set_channel_mA(Uint16 channel, float mA)
{
    if (channel >= FAKE_ADC_NUM_CHANNELS) return;
    g_results[channel] = ma_to_count(mA);
}

void fake_adc_set_channel_raw(Uint16 channel, Uint16 raw_count)
{
    if (channel >= FAKE_ADC_NUM_CHANNELS) return;
    if (raw_count > 4095) raw_count = 4095;
    g_results[channel] = raw_count;
}

void fake_adc_pulse_channel(Uint16 channel, Uint16 peak_count)
{
    fake_adc_set_channel_raw(channel, peak_count);
}

Uint16 fake_adc_read_result(Uint16 channel)
{
    if (channel >= FAKE_ADC_NUM_CHANNELS) return 0;
    return g_results[channel];
}

float fake_adc_get_channel_mA(Uint16 channel)
{
    if (channel >= FAKE_ADC_NUM_CHANNELS) return 0.0f;
    return count_to_ma(g_results[channel]);
}
