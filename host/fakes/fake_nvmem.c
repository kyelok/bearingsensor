/*
 * fake_nvmem.c — implementation. See fake_nvmem.h for the contract.
 */

#include "fake_nvmem.h"
#include "word_mem.h"
#include <string.h>

/* Backing storage: each chip is 32768 bytes = 16384 16-bit words. */
static Uint16 g_fram[2][FAKE_NVMEM_FRAM_WORDS];

/* Tracking */
static unsigned int g_writes;
static unsigned int g_reads;
static unsigned int g_last_write_position;
static unsigned int g_last_read_position;
static unsigned int g_fail_reads;
static unsigned int g_fail_writes;

void fake_nvmem_init(void)
{
    word_zero(&g_fram[0][0], FAKE_NVMEM_FRAM_WORDS);
    word_zero(&g_fram[1][0], FAKE_NVMEM_FRAM_WORDS);
    g_writes = 0;
    g_reads = 0;
    g_last_write_position = 0;
    g_last_read_position = 0;
    g_fail_reads = 0;
    g_fail_writes = 0;
}

void fake_nvmem_preload_magic(void)
{
    /* MAGIC_NUMBER is a 32-bit value (0x12345678) stored as two
     * 16-bit words at byte position FRAMMAGICNUMBER_POS = 32762.
     * Word index = 32762 / 2 = 16381.
     * Layout: low word at 16381, high word at 16382 (little-endian
     * on TI C28x for 32-bit longs). */
    g_fram[FAKE_NVMEM_FRAM1][16381] = 0x5678;  /* low word */
    g_fram[FAKE_NVMEM_FRAM1][16382] = 0x1234;  /* high word */
}

void WriteNVMemory(unsigned int choice, unsigned int position,
                   unsigned int *ptr, unsigned int len)
{
    if (g_fail_writes > 0) {
        g_fail_writes--;
        return; /* silently drop — simulates SPI bus glitch */
    }

    if (choice > 1) return;
    /* `position` is a byte address; convert to word index. */
    unsigned int word_index = position / 2;

    for (unsigned int i = 0; i < len; ++i) {
        if (word_index + i >= FAKE_NVMEM_FRAM_WORDS) break;
        g_fram[choice][word_index + i] = (Uint16)ptr[i];
    }

    g_writes++;
    g_last_write_position = position;
}

void ReadNVMemory(unsigned int choice, unsigned int position,
                  unsigned int *ptr, unsigned int len)
{
    if (g_fail_reads > 0) {
        g_fail_reads--;
        for (unsigned int i = 0; i < len; ++i) ptr[i] = 0xFFFF; /* simulate bus floating high */
        return;
    }

    if (choice > 1) return;
    unsigned int word_index = position / 2;

    for (unsigned int i = 0; i < len; ++i) {
        if (word_index + i >= FAKE_NVMEM_FRAM_WORDS) {
            ptr[i] = 0;
        } else {
            ptr[i] = g_fram[choice][word_index + i];
        }
    }

    g_reads++;
    g_last_read_position = position;
}

Uint16 fake_nvmem_read_word(unsigned int choice, unsigned int byte_position)
{
    if (choice > 1) return 0;
    unsigned int word_index = byte_position / 2;
    if (word_index >= FAKE_NVMEM_FRAM_WORDS) return 0;
    return g_fram[choice][word_index];
}

void fake_nvmem_write_word(unsigned int choice, unsigned int byte_position, Uint16 value)
{
    if (choice > 1) return;
    unsigned int word_index = byte_position / 2;
    if (word_index >= FAKE_NVMEM_FRAM_WORDS) return;
    g_fram[choice][word_index] = value;
}

unsigned int fake_nvmem_total_writes(void)        { return g_writes; }
unsigned int fake_nvmem_total_reads(void)         { return g_reads; }
unsigned int fake_nvmem_last_write_position(void) { return g_last_write_position; }
unsigned int fake_nvmem_last_read_position(void)  { return g_last_read_position; }

void fake_nvmem_inject_read_failure(unsigned int count)  { g_fail_reads = count; }
void fake_nvmem_inject_write_failure(unsigned int count) { g_fail_writes = count; }
