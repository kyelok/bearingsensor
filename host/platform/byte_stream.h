/*
 * byte_stream.h — 8-bit byte-stream helpers for serialization paths.
 *
 * MOTIVATION
 *
 * Some firmware code paths genuinely deal in 8-bit bytes — Modbus
 * payloads, CSV strings, SD card serialization formats, the XML output
 * required by spec 8.6 / 8.7 §6. On a stdint host these are just byte
 * arrays. On the TI C2000 with CHAR_BIT == 16, an "8-bit byte stream"
 * needs explicit packing — two logical bytes per word, accessed via
 * shift/mask.
 *
 * STATUS: SKELETON
 *
 * This header is a placeholder. The actual byte-stream abstraction is
 * needed for:
 *
 *   - SD card serialization (sdcard.c) — when we extract the CSV header
 *     formatter, the spec 8.7 Appendix E hit-by-hit format, and the
 *     spec 8.7 Appendix F compensation-curve format.
 *
 *   - Modbus payload assembly (PCModBus.c) — already byte-oriented in
 *     v6.20 (it stuffs payload bytes into 16-bit Modbus registers); the
 *     existing pattern works on TI, may need adjusting on host.
 *
 *   - XML output for the surveyor-presentation file (spec §6.4) — only
 *     needed in Phase 4; defer until then.
 *
 * The scaffolding will be filled in during the corresponding Phase 3
 * extraction. Until then, this header documents the intended surface
 * so call sites know what to migrate toward.
 *
 * INTENDED API (sketch)
 *
 *   typedef struct ByteStream ByteStream;
 *
 *   void   byte_stream_init(ByteStream* s, Uint16* backing, Uint16 capacity_bytes);
 *   int    byte_stream_put(ByteStream* s, Uint8 byte);            // returns 0 on overflow
 *   int    byte_stream_put_n(ByteStream* s, const Uint8* src, Uint16 n);
 *   Uint8  byte_stream_get(ByteStream* s, Uint16 byte_index);
 *   Uint16 byte_stream_size_bytes(const ByteStream* s);
 *   Uint16 byte_stream_size_words(const ByteStream* s);            // for sizing FRAM/SD writes
 *
 * On TI: backing is Uint16[]; byte_stream_put packs (byte_count & 1)
 * to choose the high or low half-word and combines via OR.
 * On host: backing is still Uint16[] for symmetry, but each Uint16
 * carries one byte in its low 8 bits (upper 8 bits zeroed). This
 * trades efficiency for code symmetry; call sites needing raw byte
 * arrays on host should use byte_stream_get_byte_array() (TBD).
 *
 * VENDORED FROM TI BIOS PATTERNS
 *
 * TI's BIOS / driverlib for SCI byte streams already does this kind of
 * packing. When we get to Phase 3 SD card extraction, we'll either
 * lift their __byte_peripheral access pattern or reimplement here.
 */

#ifndef BWM_BYTE_STREAM_H
#define BWM_BYTE_STREAM_H

#include "platform.h"

/* Forward declaration so callers can take ByteStream* without the
 * concrete layout being finalized. */
typedef struct ByteStream ByteStream;

/*
 * Helper for the most common sizing question: "how many TI words do I
 * need to hold `byte_count` packed bytes?"
 *
 *   On TI:   ceil(byte_count / 2) — two bytes per word.
 *   On host: byte_count           — one byte per byte (no packing).
 *
 * Defined as a macro so it works in const-context (e.g., array sizing).
 */
#if defined(__TMS320C2000__)
  #define WORDS_FOR_BYTES(byte_count)  ( ((byte_count) + 1) / 2 )
#else
  #define WORDS_FOR_BYTES(byte_count)  ((byte_count) * 0 + (byte_count))  /* identity, kept symmetrical */
#endif

#endif /* BWM_BYTE_STREAM_H */
