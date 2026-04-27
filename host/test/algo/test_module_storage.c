/*
 * test_module_storage.c — exercises the refactored storage module.
 */

#include "unity.h"
#include "storage/storage_classes.h"

void setUp(void) { }
void tearDown(void) { }

static void test_storage_class_constants(void)
{
    TEST_ASSERT_EQUAL_INT(24, STORAGE_SHORT_TERM_HOURS);
    TEST_ASSERT_EQUAL_INT(2,  STORAGE_RAPID_WEAR_HOURS);
    TEST_ASSERT_EQUAL_INT(6,  STORAGE_LONG_TERM_AVG_HOURS);
    TEST_ASSERT_EQUAL_INT(5,  STORAGE_LONG_TERM_BACK_YEARS);
}

static void test_long_term_record_field_layout(void)
{
    long_term_record_t r = {
        .timestamp = 0xDEADBEEF,
        .filtered_max_mm_h = 500,
        .filtered_min_mm_h = -200,
        .filtered_avg_mm_h = 100,
        .sensor_id = 7
    };
    TEST_ASSERT_EQUAL_HEX32(0xDEADBEEF, r.timestamp);
    TEST_ASSERT_EQUAL_INT16(500, r.filtered_max_mm_h);
    TEST_ASSERT_EQUAL_INT16(-200, r.filtered_min_mm_h);
    TEST_ASSERT_EQUAL_INT16(100, r.filtered_avg_mm_h);
    TEST_ASSERT_EQUAL_UINT16(7, r.sensor_id);
}

static void test_event_types_are_distinct(void)
{
    TEST_ASSERT_NOT_EQUAL(STORAGE_EVENT_ALARM,    STORAGE_EVENT_SLOWDOWN);
    TEST_ASSERT_NOT_EQUAL(STORAGE_EVENT_ALARM,    STORAGE_EVENT_PRE_WARNING);
    TEST_ASSERT_NOT_EQUAL(STORAGE_EVENT_SENSOR_REPLACEMENT, STORAGE_EVENT_OFFSET_ADJUSTMENT);
    TEST_ASSERT_NOT_EQUAL(STORAGE_EVENT_LEARNING_STAGE_TRANSITION, STORAGE_EVENT_POWER_ON);
}

static void test_post_alarm_extension_is_5_minutes(void)
{
    Uint32 ext = storage_compute_post_alarm_extension_seconds(0);
    TEST_ASSERT_EQUAL_UINT32(5 * 60, ext);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_storage_class_constants);
    RUN_TEST(test_long_term_record_field_layout);
    RUN_TEST(test_event_types_are_distinct);
    RUN_TEST(test_post_alarm_extension_is_5_minutes);
    return UNITY_END();
}
