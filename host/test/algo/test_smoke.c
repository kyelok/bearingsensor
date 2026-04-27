/*
 * test_smoke.c — first test. Proves the harness compiles and Unity runs
 * end-to-end. Replace with real tests as the refactor progresses.
 */

#include "unity.h"
#include "platform.h"

void setUp(void) { }
void tearDown(void) { }

static void test_unity_arithmetic_works(void)
{
    TEST_ASSERT_EQUAL_INT(2, 1 + 1);
}

static void test_platform_typedefs_are_correct_widths_on_host(void)
{
    TEST_ASSERT_EQUAL_INT(2, sizeof(Uint16));
    TEST_ASSERT_EQUAL_INT(2, sizeof(Int16));
    TEST_ASSERT_EQUAL_INT(4, sizeof(Uint32));
    TEST_ASSERT_EQUAL_INT(4, sizeof(Int32));
}

static void test_char_bit_is_8_on_host(void)
{
    /* This assertion documents that we are running on a host where
     * CHAR_BIT == 8. On the TI C2000 target it would be 16. Tests that
     * exercise word-vs-byte handling must account for this. */
    TEST_ASSERT_EQUAL_INT(1, sizeof(char));
    TEST_ASSERT_EQUAL_INT(2, sizeof(short));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_unity_arithmetic_works);
    RUN_TEST(test_platform_typedefs_are_correct_widths_on_host);
    RUN_TEST(test_char_bit_is_8_on_host);
    return UNITY_END();
}
