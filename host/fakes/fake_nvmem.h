/*
 * fake_nvmem.h — host-side realistic emulation of the SPU's two FRAM chips.
 *
 * The v6.20 firmware uses two 256-Kbit (32768-byte) Ferroelectric RAM
 * (FRAM) devices accessed over SPI:
 *   - FRAM1: 32768 bytes — primary storage (compensation table, sensor
 *     state, calibration, alarm thresholds, configuration)
 *   - FRAM2: 32768 bytes — secondary storage (1000-sample MAN table,
 *     pre-warning struct, alarm event codes, reference flags/levels)
 *
 * The firmware API is in spi.h:
 *   void WriteNVMemory(unsigned int choice, unsigned int position,
 *                      unsigned int *ptr, unsigned int len);
 *   void ReadNVMemory (unsigned int choice, unsigned int position,
 *                      unsigned int *ptr, unsigned int len);
 *
 *   choice   — FRAM1 (0) or FRAM2 (1)
 *   position — byte offset within the chip (the chip's own addressing)
 *   ptr      — pointer to caller's Uint16 buffer
 *   len      — number of 16-bit words to transfer
 *
 * This fake implements both functions with byte-correct semantics on
 * the host. The proof of accuracy is: when v6.20 firmware code is run
 * against this fake, it passes the spec 8.5 unit tests.
 *
 * KEY NUMBERS (from define.h)
 *
 *   #define FRAM1               0
 *   #define FRAM2               1
 *   #define MAGIC_NUMBER        0x12345678
 *   #define FRAMMAGICNUMBER_POS 32762   // last 4 bytes of FRAM1
 *   #define LASTFRAM_POSITION   32766   // last 2 bytes of FRAM1
 *   #define MANCOMP_TABLE       0       // first 8400 bytes of FRAM1
 *   ...and many more offsets at the per-struct level (see define.h)
 *
 * TEST AFFORDANCES
 *
 * Beyond emulating the API, this fake provides:
 *   - fake_nvmem_init(): one-time setup, called from setUp()
 *   - fake_nvmem_preload_magic(): mark FRAM as "configured" (magic written)
 *   - fake_nvmem_dump_region(): inspect a span (for assertions)
 *   - fake_nvmem_was_written_at(): track last-written addresses
 *   - fake_nvmem_corrupt(): simulate FRAM read failures (for fault tests)
 */

#ifndef BWM_FAKE_NVMEM_H
#define BWM_FAKE_NVMEM_H

#include "platform.h"

#define FAKE_NVMEM_FRAM_BYTES      32768
#define FAKE_NVMEM_FRAM_WORDS      (FAKE_NVMEM_FRAM_BYTES / 2)
#define FAKE_NVMEM_FRAM1           0
#define FAKE_NVMEM_FRAM2           1

/* Reset both FRAM devices to all-zero. Call from setUp() in every test. */
void fake_nvmem_init(void);

/* Pre-write the magic number 0x12345678 at FRAMMAGICNUMBER_POS (32762)
 * of FRAM1. This makes the firmware see the FRAM as "configured". */
void fake_nvmem_preload_magic(void);

/* The two functions the firmware calls. Same signatures as spi.h:
 *   choice   = FAKE_NVMEM_FRAM1 or FAKE_NVMEM_FRAM2
 *   position = byte address within the chip
 *   ptr      = caller's Uint16 buffer
 *   len      = number of 16-bit WORDS to transfer
 */
void WriteNVMemory(unsigned int choice, unsigned int position,
                   unsigned int *ptr, unsigned int len);
void ReadNVMemory (unsigned int choice, unsigned int position,
                   unsigned int *ptr, unsigned int len);

/* Direct inspection helpers — for assertions in tests. */
Uint16 fake_nvmem_read_word(unsigned int choice, unsigned int byte_position);
void   fake_nvmem_write_word(unsigned int choice, unsigned int byte_position, Uint16 value);

/* Last access tracking — tests can verify expected addresses were touched. */
unsigned int fake_nvmem_total_writes(void);
unsigned int fake_nvmem_total_reads(void);
unsigned int fake_nvmem_last_write_position(void);
unsigned int fake_nvmem_last_read_position(void);

/* Fault injection: cause the next N reads or writes to fail silently.
 * On real hardware FRAM is extremely reliable, but the firmware does
 * have read-back verification, so these helpers exist for testing
 * that path. */
void fake_nvmem_inject_read_failure(unsigned int count);
void fake_nvmem_inject_write_failure(unsigned int count);

#endif /* BWM_FAKE_NVMEM_H */
