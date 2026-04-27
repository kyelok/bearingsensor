/*
 * test_word_mem.c — exercises the word-oriented memory API.
 *
 * Verifies that word_zero, word_fill, word_copy, word_equal, and
 * WORDS_OF behave correctly on the host build. Together with TI build
 * verification (when bench access is restored), these tests are the
 * regression net guaranteeing identical word semantics on both
 * targets.
 */

#include "unity.h"
#include "platform.h"
#include "word_mem.h"

void setUp(void) { }
void tearDown(void) { }

/* word_zero must zero exactly `word_count` 16-bit words and not touch
 * adjacent memory. We allocate a buffer with sentinel words on either
 * side and check those remain untouched. */
static void test_word_zero_fills_exact_range(void)
{
    Uint16 sentinel_before = 0xDEAD;
    Uint16 buf[10];
    Uint16 sentinel_after  = 0xBEEF;

    for (Uint16 i = 0; i < 10; ++i) buf[i] = 0xAAAA;

    word_zero(buf, 10);

    for (Uint16 i = 0; i < 10; ++i) {
        TEST_ASSERT_EQUAL_UINT16(0x0000, buf[i]);
    }
    TEST_ASSERT_EQUAL_UINT16(0xDEAD, sentinel_before);
    TEST_ASSERT_EQUAL_UINT16(0xBEEF, sentinel_after);
}

/* word_zero with count==0 is a no-op. */
static void test_word_zero_with_zero_count_does_nothing(void)
{
    Uint16 buf[3] = { 0x1111, 0x2222, 0x3333 };
    word_zero(buf, 0);
    TEST_ASSERT_EQUAL_UINT16(0x1111, buf[0]);
    TEST_ASSERT_EQUAL_UINT16(0x2222, buf[1]);
    TEST_ASSERT_EQUAL_UINT16(0x3333, buf[2]);
}

/* word_fill sets every word to the given value, including high bits. */
static void test_word_fill_sets_all_words_to_value(void)
{
    Uint16 buf[5];
    word_fill(buf, 0xCAFE, 5);
    for (Uint16 i = 0; i < 5; ++i) {
        TEST_ASSERT_EQUAL_UINT16(0xCAFE, buf[i]);
    }
}

/* word_copy copies word-for-word. Destination and source are distinct. */
static void test_word_copy_replicates_source_into_destination(void)
{
    const Uint16 src[4] = { 0x1234, 0x5678, 0x9ABC, 0xDEF0 };
    Uint16 dst[4] = { 0, 0, 0, 0 };
    word_copy(dst, src, 4);
    for (Uint16 i = 0; i < 4; ++i) {
        TEST_ASSERT_EQUAL_UINT16(src[i], dst[i]);
    }
}

/* word_equal returns 1 on identical buffers, 0 on first difference. */
static void test_word_equal_returns_true_for_identical_buffers(void)
{
    const Uint16 a[3] = { 0x1, 0x2, 0x3 };
    const Uint16 b[3] = { 0x1, 0x2, 0x3 };
    TEST_ASSERT_EQUAL_INT(1, word_equal(a, b, 3));
}

static void test_word_equal_returns_false_for_diff_in_first_word(void)
{
    const Uint16 a[3] = { 0xFFFF, 0x2, 0x3 };
    const Uint16 b[3] = { 0x0000, 0x2, 0x3 };
    TEST_ASSERT_EQUAL_INT(0, word_equal(a, b, 3));
}

static void test_word_equal_returns_false_for_diff_in_last_word(void)
{
    const Uint16 a[3] = { 0x1, 0x2, 0x3 };
    const Uint16 b[3] = { 0x1, 0x2, 0xFFFF };
    TEST_ASSERT_EQUAL_INT(0, word_equal(a, b, 3));
}

/*
 * WORDS_OF for a Uint16 must always be 1.
 * WORDS_OF for a 4-byte uint32 must always be 2.
 * On TI: sizeof gives word count directly.
 * On host: divide by sizeof(Uint16) and round up.
 * Either way, the macro must produce the same value.
 */
static void test_words_of_uint16_is_one(void)
{
    TEST_ASSERT_EQUAL_UINT16(1, WORDS_OF(Uint16));
}

static void test_words_of_uint32_is_two(void)
{
    TEST_ASSERT_EQUAL_UINT16(2, WORDS_OF(Uint32));
}

/*
 * A struct of three 16-bit fields = 3 words on both targets.
 */
static void test_words_of_three_uint16_struct(void)
{
    typedef struct { Uint16 a, b, c; } three_words_t;
    TEST_ASSERT_EQUAL_UINT16(3, WORDS_OF(three_words_t));
}

/*
 * A struct of one 16-bit + one 32-bit = 3 words on TI (1+2),
 * also 3 words on host (sizeof returns 8 bytes due to alignment;
 * (8+1)/2 = 4? No — sizeof on host arm64 gives 8 (4+4 with padding to
 * 4-byte alignment), so WORDS_OF gives ceil(8/2) = 4. On TI no padding
 * because everything is a word, so sizeof gives 3. Layout DIVERGES.
 *
 * This is an important demonstration: WORDS_OF is only portable for
 * structs whose host-side sizeof matches their TI-side word count.
 * For structs that cross the chip-host boundary (NVMEM, SD card,
 * Modbus payloads), the application MUST declare them with explicit
 * Uint16 fields and avoid mixed widths. This test documents the
 * pitfall: when a struct mixes Uint16 and Uint32, host alignment
 * padding makes WORDS_OF non-portable for that struct.
 */
static void test_struct_with_padding_documents_the_pitfall(void)
{
    typedef struct { Uint16 a; Uint32 b; } padded_t;
    /* On host arm64: sizeof(padded_t) is 8 (a + 2 pad + b). WORDS_OF = 4. */
    /* On TI:        sizeof(padded_t) is 3 (1+2). WORDS_OF = 3. */
    /* This test asserts the host value to make the divergence explicit
     * — and reminds future maintainers to use explicit Uint16 in any
     * struct that crosses the host/target boundary. */
#if defined(__TMS320C2000__)
    TEST_ASSERT_EQUAL_UINT16(3, WORDS_OF(padded_t));
#else
    TEST_ASSERT_EQUAL_UINT16(4, WORDS_OF(padded_t));
#endif
}

/*
 * Round-trip: fill a buffer with word_fill, zero half of it with
 * word_zero, verify the half-and-half pattern with word_equal.
 */
static void test_round_trip_fill_zero_compare(void)
{
    Uint16 a[8];
    Uint16 expected[8] = { 0xCAFE, 0xCAFE, 0xCAFE, 0xCAFE, 0, 0, 0, 0 };

    word_fill(a, 0xCAFE, 8);
    word_zero(a + 4, 4);
    TEST_ASSERT_EQUAL_INT(1, word_equal(a, expected, 8));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_word_zero_fills_exact_range);
    RUN_TEST(test_word_zero_with_zero_count_does_nothing);
    RUN_TEST(test_word_fill_sets_all_words_to_value);
    RUN_TEST(test_word_copy_replicates_source_into_destination);
    RUN_TEST(test_word_equal_returns_true_for_identical_buffers);
    RUN_TEST(test_word_equal_returns_false_for_diff_in_first_word);
    RUN_TEST(test_word_equal_returns_false_for_diff_in_last_word);
    RUN_TEST(test_words_of_uint16_is_one);
    RUN_TEST(test_words_of_uint32_is_two);
    RUN_TEST(test_words_of_three_uint16_struct);
    RUN_TEST(test_struct_with_padding_documents_the_pitfall);
    RUN_TEST(test_round_trip_fill_zero_compare);
    return UNITY_END();
}
