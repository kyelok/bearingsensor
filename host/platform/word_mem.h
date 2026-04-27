/*
 * word_mem.h — word-oriented memory operations, identical semantics on
 * TI C2000 (16-bit char) and on a stdint host (8-bit char).
 *
 * MOTIVATION
 *
 * The TI TMS320C2000 family has CHAR_BIT == 16: the smallest addressable
 * unit is a 16-bit word, and `sizeof(char) == sizeof(short) == 1` means
 * "1 word", not "1 byte". On a host (clang/gcc on macOS or Linux),
 * CHAR_BIT == 8. The same C source compiles cleanly on both, but
 * functions like `memset(buf, 0, N)` interpret N as a count of *chars*
 * — which is words on TI and bytes on host. The result: identical code
 * silently does different things on the two targets.
 *
 * This header defines a tiny set of helpers that take counts in
 * **words** (always 16 bits, always portable). Callers that mean
 * "zero N words", "copy N words", etc. should use these functions
 * instead of memset/memcpy with a sizeof-derived length.
 *
 * USAGE
 *
 *   word_zero(buf, 100);                   // zero 100 16-bit words
 *   word_copy(dst, src, WORDS_OF(struct_t)); // copy a struct, portably
 *   if (word_equal(a, b, n)) { ... }         // compare N words
 *
 * SIZEOF: USE WORDS_OF, NOT BARE sizeof()
 *
 *   WRONG (host-broken):
 *     ReadNVMemory(FRAM1, addr, &x, sizeof(struct_t));
 *
 *   RIGHT (portable):
 *     ReadNVMemory(FRAM1, addr, &x, WORDS_OF(struct_t));
 *
 * MIGRATION RULE OF THUMB
 *
 *   - If the count parameter is named `len`, `count`, `*_LEN_WORDS`,
 *     or is passed to a word-oriented API like ReadNVMemory: USE the
 *     word_* helpers and WORDS_OF.
 *   - If the count is a *byte* count (e.g., a Modbus payload length,
 *     a CSV string length, a serialized stream length): leave raw
 *     memset/memcpy in place. Those sites belong in byte_stream.h
 *     territory (see that header for the eventual abstractions).
 *
 * STRUCT-LAYOUT REGRESSION NET
 *
 * Tests in host/test/algo/test_struct_layout.c assert that
 * WORDS_OF(struct_t) matches an EXPECTED_WORDS constant for each
 * shipping struct, on both targets. Any future change to a struct that
 * breaks the word count fails CI.
 *
 * NOT THREAD-SAFE: these helpers are simple wrappers; concurrency is
 * the callers responsibility. On the SPU, nearly all memory work
 * happens from the main loop, with ISRs touching dedicated buffers.
 */

#ifndef BWM_WORD_MEM_H
#define BWM_WORD_MEM_H

#include "platform.h"
#include <string.h>

/*
 * WORDS_OF(t) — count of 16-bit words occupied by a struct or type.
 * Portable across both targets.
 *
 *   On TI C2000 (CHAR_BIT == 16): sizeof returns word count directly.
 *   On host (CHAR_BIT == 8):      sizeof returns byte count; divide by 2,
 *                                 rounding up so a struct ending on an
 *                                 odd byte still occupies a full word.
 */
#if defined(__TMS320C2000__)
  #define WORDS_OF(t)   ((Uint16)(sizeof(t)))
#else
  #define WORDS_OF(t)   ((Uint16)((sizeof(t) + sizeof(Uint16) - 1) / sizeof(Uint16)))
#endif

/* ---- word-counted memory operations ---- */

/* Zero `word_count` 16-bit words at `dst`. */
static inline void word_zero(Uint16* dst, Uint16 word_count)
{
#if defined(__TMS320C2000__)
    /* On TI: memset's count is in chars == words. */
    memset((void*)dst, 0, (size_t)word_count);
#else
    /* On host: convert word count to byte count. */
    memset((void*)dst, 0, (size_t)word_count * sizeof(Uint16));
#endif
}

/* Set every word in `dst` to `value`. (Cannot use memset for a 16-bit
 * pattern in general; use a loop.) */
static inline void word_fill(Uint16* dst, Uint16 value, Uint16 word_count)
{
    for (Uint16 i = 0; i < word_count; ++i) {
        dst[i] = value;
    }
}

/* Copy `word_count` 16-bit words from `src` to `dst`. */
static inline void word_copy(Uint16* dst, const Uint16* src, Uint16 word_count)
{
#if defined(__TMS320C2000__)
    memcpy((void*)dst, (const void*)src, (size_t)word_count);
#else
    memcpy((void*)dst, (const void*)src, (size_t)word_count * sizeof(Uint16));
#endif
}

/*
 * Compare `word_count` 16-bit words. Returns 1 (true) if equal, 0 if not.
 * Note: returns a boolean, NOT memcmp's three-way result. That is
 * intentional — most callers want equality, and word-level ordering
 * is rarely meaningful.
 */
static inline int word_equal(const Uint16* a, const Uint16* b, Uint16 word_count)
{
    for (Uint16 i = 0; i < word_count; ++i) {
        if (a[i] != b[i]) return 0;
    }
    return 1;
}

#endif /* BWM_WORD_MEM_H */
