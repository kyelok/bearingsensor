/*
 * test_fake_nvmem.c — sanity tests for the FRAM emulator.
 * Proves the fake itself behaves correctly before we use it as the
 * substrate for higher-level firmware testing.
 */

#include "unity.h"
#include "platform.h"
#include "fake_nvmem.h"

void setUp(void)    { fake_nvmem_init(); }
void tearDown(void) { }

static void test_fresh_fram_reads_back_zeros(void)
{
    unsigned int buf[8] = { 0xAAAA };
    ReadNVMemory(FAKE_NVMEM_FRAM1, 0, buf, 8);
    for (int i = 0; i < 8; i++) {
        TEST_ASSERT_EQUAL_UINT(0, buf[i]);
    }
}

static void test_write_then_read_round_trip(void)
{
    unsigned int wbuf[4] = { 0x1234, 0x5678, 0x9ABC, 0xDEF0 };
    unsigned int rbuf[4] = { 0 };
    WriteNVMemory(FAKE_NVMEM_FRAM1, 100, wbuf, 4);
    ReadNVMemory (FAKE_NVMEM_FRAM1, 100, rbuf, 4);
    for (int i = 0; i < 4; i++) {
        TEST_ASSERT_EQUAL_UINT(wbuf[i], rbuf[i]);
    }
}

static void test_two_fram_devices_are_independent(void)
{
    unsigned int v1 = 0x1111;
    unsigned int v2 = 0x2222;
    unsigned int r1 = 0, r2 = 0;
    WriteNVMemory(FAKE_NVMEM_FRAM1, 0, &v1, 1);
    WriteNVMemory(FAKE_NVMEM_FRAM2, 0, &v2, 1);
    ReadNVMemory (FAKE_NVMEM_FRAM1, 0, &r1, 1);
    ReadNVMemory (FAKE_NVMEM_FRAM2, 0, &r2, 1);
    TEST_ASSERT_EQUAL_UINT(0x1111, r1);
    TEST_ASSERT_EQUAL_UINT(0x2222, r2);
}

static void test_preload_magic_writes_correct_words_at_correct_position(void)
{
    fake_nvmem_preload_magic();
    /* FRAMMAGICNUMBER_POS = 32762 → word index 16381.
     * Magic = 0x12345678; on TI C28x longs are little-endian-by-word:
     * low word 0x5678 stored first, high word 0x1234 at position+1. */
    TEST_ASSERT_EQUAL_HEX16(0x5678, fake_nvmem_read_word(FAKE_NVMEM_FRAM1, 32762));
    TEST_ASSERT_EQUAL_HEX16(0x1234, fake_nvmem_read_word(FAKE_NVMEM_FRAM1, 32764));
}

static void test_writes_and_reads_are_counted(void)
{
    unsigned int v = 0xABCD;
    TEST_ASSERT_EQUAL_UINT(0, fake_nvmem_total_writes());
    TEST_ASSERT_EQUAL_UINT(0, fake_nvmem_total_reads());

    WriteNVMemory(FAKE_NVMEM_FRAM1, 0, &v, 1);
    WriteNVMemory(FAKE_NVMEM_FRAM1, 4, &v, 1);
    ReadNVMemory (FAKE_NVMEM_FRAM1, 0, &v, 1);

    TEST_ASSERT_EQUAL_UINT(2, fake_nvmem_total_writes());
    TEST_ASSERT_EQUAL_UINT(1, fake_nvmem_total_reads());
    TEST_ASSERT_EQUAL_UINT(4, fake_nvmem_last_write_position());
    TEST_ASSERT_EQUAL_UINT(0, fake_nvmem_last_read_position());
}

static void test_read_failure_injection_returns_floating_pattern(void)
{
    unsigned int v = 0xCAFE;
    unsigned int r = 0;
    WriteNVMemory(FAKE_NVMEM_FRAM1, 0, &v, 1);
    fake_nvmem_inject_read_failure(1);
    ReadNVMemory(FAKE_NVMEM_FRAM1, 0, &r, 1);
    TEST_ASSERT_EQUAL_HEX(0xFFFF, r); /* floating bus pattern */

    /* After the injection count expires, normal reads resume. */
    ReadNVMemory(FAKE_NVMEM_FRAM1, 0, &r, 1);
    TEST_ASSERT_EQUAL_HEX(0xCAFE, r);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_fresh_fram_reads_back_zeros);
    RUN_TEST(test_write_then_read_round_trip);
    RUN_TEST(test_two_fram_devices_are_independent);
    RUN_TEST(test_preload_magic_writes_correct_words_at_correct_position);
    RUN_TEST(test_writes_and_reads_are_counted);
    RUN_TEST(test_read_failure_injection_returns_floating_pattern);
    return UNITY_END();
}
