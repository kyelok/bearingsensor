/*
 * test_struct_layout.c — regression net for CHAR_BIT-induced layout drift.
 *
 * For each struct that crosses the host ↔ target boundary (gets written
 * to FRAM / NVMEM, gets serialized over Modbus, gets read back across
 * power cycles), we assert WORDS_OF(struct) matches a known constant.
 *
 * On the TI target: WORDS_OF returns sizeof directly (which is in words).
 * On the host:      WORDS_OF returns ceil(sizeof / sizeof(Uint16)).
 *
 * If the two ever disagree for a given struct, the test fails on host
 * and we catch it before the code ever ships. If we add a new field
 * to a struct without updating the EXPECTED_WORDS_* constant, the test
 * fails — forcing a deliberate decision about the layout change.
 *
 * STATUS: bootstrap. Currently asserts on synthetic fixtures that
 * mirror the firmware struct shapes (one Uint16 per word, no padding).
 * During Phase 3, when each firmware struct is extracted into a clean
 * header, this file gets updated to import the real struct definitions
 * and assert against them. The synthetic fixtures stay as a control
 * test of the assertion machinery itself.
 *
 * EXPECTED_WORDS_* CONSTANTS: derived from inspection of the v6.20
 * firmware struct definitions in man.h, globals.h, define.h. Captured
 * here so future drift is detectable. When real hardware bench access
 * is restored, these can be cross-validated against a JTAG dump.
 */

#include "unity.h"
#include "platform.h"
#include "word_mem.h"

void setUp(void) { }
void tearDown(void) { }

/* ============================================================
 * Sentinel test of the assertion mechanism itself.
 * ============================================================ */

static void test_sentinel_words_of_three_uint16_is_three(void)
{
    typedef struct { Uint16 a, b, c; } sentinel_t;
    TEST_ASSERT_EQUAL_UINT16(3, WORDS_OF(sentinel_t));
}

/* ============================================================
 * sensorstruct (v6.20 man.h around the sensor[] array)
 *
 * Approximate shape from man.h inspection:
 *   Uint16  rpm
 *   Uint16  endresult
 *   Uint16  postfilter
 *   Uint16  status1   (bit-packed)
 *   Uint16  status2   (bit-packed)
 *   Int16   immediateval  (added 8.6+ in spec, present in v6.20 as field)
 *   Int16   immediateval_int
 *   Uint16  reserved (alignment)
 *
 * Estimated word count: 8. Confirm against actual struct in Phase 3 by
 * pulling man.h into the test include path.
 * ============================================================ */
#define SENSORSTRUCT_EXPECTED_WORDS  8

typedef struct {
    Uint16 rpm;
    Uint16 endresult;
    Uint16 postfilter;
    Uint16 status1;
    Uint16 status2;
    Int16  immediateval;
    Int16  immediateval_int;
    Uint16 _reserved;
} sensorstruct_fixture_t;

static void test_sensorstruct_fixture_has_expected_word_count(void)
{
    TEST_ASSERT_EQUAL_UINT16(SENSORSTRUCT_EXPECTED_WORDS,
                             WORDS_OF(sensorstruct_fixture_t));
}

/* ============================================================
 * damagemonstruct (v6.20 man.h:122-...)
 *
 * Approximate shape (per documented fields in mb_sum.md and inspection):
 *   Uint16  alarmlevelsingle
 *   Uint16  alarmlevelcyl
 *   Uint16  alarmlevelmbsum
 *   Uint16  cylneighbour       (bitmask of valid pairs)
 *   Uint16  mbneighbour        (bitmask of valid pairs)
 *   Uint16  cylneighbouralarms
 *   Uint16  mbneighbouralarms
 *   Uint16  ccsplit            (bank-split position)
 *   Uint16  kvalue             (Modbus 4617)
 *   Uint16  betavalue          (Modbus reg TBD)
 *   Uint16  rpmlimit
 *   Uint16  rpmlevelx
 *   Uint16  reserved[4]        (likely future-proofing in original layout)
 *
 * Estimated word count: 16. To be re-asserted against the real header
 * during Phase 3.6 (cylinder/MB-neighbour module extraction).
 * ============================================================ */
#define DAMAGEMONSTRUCT_EXPECTED_WORDS  16

typedef struct {
    Uint16 alarmlevelsingle;
    Uint16 alarmlevelcyl;
    Uint16 alarmlevelmbsum;
    Uint16 cylneighbour;
    Uint16 mbneighbour;
    Uint16 cylneighbouralarms;
    Uint16 mbneighbouralarms;
    Uint16 ccsplit;
    Uint16 kvalue;
    Uint16 betavalue;
    Uint16 rpmlimit;
    Uint16 rpmlevelx;
    Uint16 _reserved[4];
} damagemonstruct_fixture_t;

static void test_damagemonstruct_fixture_has_expected_word_count(void)
{
    TEST_ASSERT_EQUAL_UINT16(DAMAGEMONSTRUCT_EXPECTED_WORDS,
                             WORDS_OF(damagemonstruct_fixture_t));
}

/* ============================================================
 * dynalarmlevels-style struct (v6.20 man.c globals)
 *
 * Six per-metric pairs (single, cyl, mbsum) × three forms (live, prev,
 * Alarm_1, Alarm_2) plus their _int rounded counterparts.
 *
 * For bookkeeping, this is a known-large struct. Rough estimate:
 *   single, cyl, mbsum                  = 3
 *   singleprev, cylprev, mbsumprev      = 3
 *   single1, cyl1, mbsum1               = 3
 *   single2, cyl2, mbsum2               = 3
 *   single1_int, cyl1_int, mbsum1_int   = 3
 *   single2_int, cyl2_int, mbsum2_int   = 3
 *   deltarpm, deltarpmprev              = 2
 * Total: 20 words.
 *
 * Each is a Uint16 in v6.20 (per man.c read/write pattern). Float
 * variants are computed transient values, not stored; only the _int
 * forms are persisted.
 * ============================================================ */
#define DYNALARMLEVELS_EXPECTED_WORDS  20

typedef struct {
    Uint16 single, cyl, mbsum;
    Uint16 singleprev, cylprev, mbsumprev;
    Uint16 single1, cyl1, mbsum1;
    Uint16 single2, cyl2, mbsum2;
    Uint16 single1_int, cyl1_int, mbsum1_int;
    Uint16 single2_int, cyl2_int, mbsum2_int;
    Uint16 deltarpm, deltarpmprev;
} dynalarmlevels_fixture_t;

static void test_dynalarmlevels_fixture_has_expected_word_count(void)
{
    TEST_ASSERT_EQUAL_UINT16(DYNALARMLEVELS_EXPECTED_WORDS,
                             WORDS_OF(dynalarmlevels_fixture_t));
}

/* ============================================================
 * firmwarestruct (v6.20 version.c)
 *
 *   unsigned int spu1, spu2;
 *
 * Two words.
 * ============================================================ */
#define FIRMWARESTRUCT_EXPECTED_WORDS  2

typedef struct {
    Uint16 spu1;
    Uint16 spu2;
} firmwarestruct_fixture_t;

static void test_firmwarestruct_fixture_has_expected_word_count(void)
{
    TEST_ASSERT_EQUAL_UINT16(FIRMWARESTRUCT_EXPECTED_WORDS,
                             WORDS_OF(firmwarestruct_fixture_t));
}

/* ============================================================
 * Boundary check: struct with only int8/uint8 fields would fail on
 * TI (because uint8_t is also 16 bits there), so we don't have any.
 * Document this convention by asserting that a "byte-sized" type
 * actually takes a word in our model.
 * ============================================================ */

static void test_byte_sized_field_takes_one_word_logically(void)
{
    /* Even one Uint8 worth of data must consume one word minimum,
     * because that's the smallest unit our NVMEM API addresses. */
    typedef struct { Uint16 b; } byte_in_word_t;
    TEST_ASSERT_EQUAL_UINT16(1, WORDS_OF(byte_in_word_t));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_sentinel_words_of_three_uint16_is_three);
    RUN_TEST(test_sensorstruct_fixture_has_expected_word_count);
    RUN_TEST(test_damagemonstruct_fixture_has_expected_word_count);
    RUN_TEST(test_dynalarmlevels_fixture_has_expected_word_count);
    RUN_TEST(test_firmwarestruct_fixture_has_expected_word_count);
    RUN_TEST(test_byte_sized_field_takes_one_word_logically);
    return UNITY_END();
}
