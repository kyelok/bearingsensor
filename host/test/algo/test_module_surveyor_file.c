/*
 * test_module_surveyor_file.c — App A/B/C/D 4-part surveyor file formatters.
 *
 * @spec 8.7 Appendices A-D.
 */

#include "unity.h"
#include "storage/surveyor_file.h"
#include <string.h>

void setUp(void)    { }
void tearDown(void) { }

/* ============================================================
 * App A — Engine Info Part
 * ============================================================ */

/* @spec 8.7 App A — short key padded to column 22, then " = ", then value. */
static void test_app_a_pads_short_key(void)
{
    char buf[128];
    int n = surveyor_app_a_kv(buf, sizeof buf, "IMO Number", "9876543");
    TEST_ASSERT_GREATER_THAN(0, n);
    /* "IMO Number" + (12 spaces) + " = 9876543" — 22-char-padded key */
    TEST_ASSERT_EQUAL_STRING("IMO Number             = 9876543", buf);
}

/* @spec 8.7 App A — over-long key emits verbatim with a single space. */
static void test_app_a_handles_overlong_key(void)
{
    char buf[128];
    int n = surveyor_app_a_kv(buf, sizeof buf,
                              "Period of Trend Data From",
                              "2026-01-01");
    TEST_ASSERT_GREATER_THAN(0, n);
    /* Key is 25 chars, > 22 — emit verbatim + " = ". */
    TEST_ASSERT_EQUAL_STRING(
        "Period of Trend Data From  = 2026-01-01", buf);
}

/* @spec 8.7 App A — exact spec example match. */
static void test_app_a_matches_spec_example_name_of_ship(void)
{
    char buf[128];
    surveyor_app_a_kv(buf, sizeof buf, "Name of Ship", "XXXXXXX");
    TEST_ASSERT_EQUAL_STRING("Name of Ship           = XXXXXXX", buf);
}

/* ============================================================
 * App B — Log Part
 * ============================================================ */

/* @spec 8.7 App B — line w/ subject + message. */
static void test_app_b_line_with_subject(void)
{
    char buf[256];
    int n = surveyor_app_b_line(buf, sizeof buf,
                                2008, 2, 11, 2, 18, 7,
                                "Sensor No. 3.1", "Unknown");
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING("2008-02-11, 02:18:07, Sensor No. 3.1, Unknown", buf);
}

/* @spec 8.7 App B — line without subject (e.g., system event). */
static void test_app_b_line_without_subject(void)
{
    char buf[256];
    surveyor_app_b_line(buf, sizeof buf,
                        2008, 1, 25, 10, 43, 21,
                        /*subject=*/"",
                        "Speed-compensation started");
    TEST_ASSERT_EQUAL_STRING(
        "2008-01-25, 10:43:21, Speed-compensation started", buf);
}

/* @spec 8.7 App B — exact spec-example match for an alarm line. */
static void test_app_b_matches_spec_example_alarm(void)
{
    char buf[256];
    surveyor_app_b_line(buf, sizeof buf,
                        2008, 2, 19, 8, 37, 12,
                        "Sensor No. 6.2",
                        "Alarm, Sensor Deviation");
    TEST_ASSERT_EQUAL_STRING(
        "2008-02-19, 08:37:12, Sensor No. 6.2, Alarm, Sensor Deviation",
        buf);
}

/* ============================================================
 * App C — Filtered Sensor Value Trend Part
 * ============================================================ */

/* @spec 8.7 App C — header for sensor 6-2. */
static void test_app_c_header(void)
{
    char buf[256];
    int n = surveyor_app_c_header(buf, sizeof buf, 6, 2);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "Sensor No. 6-2\n"
        "Date and Time [YYYY-MM-DD hh:mm:ss];Engine operating hours [Oh];Distance [mm]",
        buf);
}

/* @spec 8.7 App C — body row positive distance (144 µm → 0.144). */
static void test_app_c_row_with_3_decimal_places(void)
{
    char buf[128];
    int n = surveyor_app_c_row(buf, sizeof buf,
                               2007, 1, 19, 2, 13, 0,
                               /*op_hours=*/30000, /*distance_um=*/144);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING("2007-01-19 02:13:00;30000;0.144", buf);
}

/* @spec 8.7 App C — distance over 1mm (e.g. 1500 µm → 1.500). */
static void test_app_c_row_distance_over_1mm(void)
{
    char buf[128];
    surveyor_app_c_row(buf, sizeof buf,
                       2026, 4, 27, 12, 0, 0,
                       1000, 1500);
    TEST_ASSERT_NOT_NULL(strstr(buf, ";1000;1.500"));
}

/* @spec 8.7 App C — negative distance gets leading minus and 3-dp magnitude. */
static void test_app_c_row_negative_distance(void)
{
    char buf[128];
    surveyor_app_c_row(buf, sizeof buf,
                       2026, 4, 27, 12, 0, 0,
                       1000, -250);
    TEST_ASSERT_NOT_NULL(strstr(buf, ";-0.250"));
}

/* ============================================================
 * App D — Status File
 * ============================================================ */

/* @spec 8.7 App D — header is timestamp \n legend. */
static void test_app_d_header(void)
{
    char buf[256];
    int n = surveyor_app_d_header(buf, sizeof buf,
                                  2007, 1, 21, 8, 13, 0);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING(
        "2007-01-21 08:13:00\n"
        "Legend: N=Normal; U=Unknown; W=Warning; A=Alarm",
        buf);
}

/* @spec 8.7 App D — cylinder rows: zero-padded number + 4 spaces + status code. */
static void test_app_d_row_normal(void)
{
    char buf[64];
    int n = surveyor_app_d_row(buf, sizeof buf, 1, SURVEYOR_STATUS_NORMAL);
    TEST_ASSERT_GREATER_THAN(0, n);
    TEST_ASSERT_EQUAL_STRING("Cylinder No. 01    N", buf);
}

static void test_app_d_row_warning(void)
{
    char buf[64];
    surveyor_app_d_row(buf, sizeof buf, 5, SURVEYOR_STATUS_WARNING);
    TEST_ASSERT_EQUAL_STRING("Cylinder No. 05    W", buf);
}

static void test_app_d_row_unknown(void)
{
    char buf[64];
    surveyor_app_d_row(buf, sizeof buf, 11, SURVEYOR_STATUS_UNKNOWN);
    TEST_ASSERT_EQUAL_STRING("Cylinder No. 11    U", buf);
}

static void test_app_d_row_alarm(void)
{
    char buf[64];
    surveyor_app_d_row(buf, sizeof buf, 14, SURVEYOR_STATUS_ALARM);
    TEST_ASSERT_EQUAL_STRING("Cylinder No. 14    A", buf);
}

/* @spec 8.7 App D — invalid status code returns negative. */
static void test_app_d_row_invalid_status(void)
{
    char buf[64];
    int n = surveyor_app_d_row(buf, sizeof buf, 1, (surveyor_status_t)99);
    TEST_ASSERT_LESS_THAN(0, n);
}

/* Buffer overflow guards. */
static void test_buffer_overflow_returns_negative(void)
{
    char tiny[8];
    TEST_ASSERT_LESS_THAN(0,
        surveyor_app_a_kv(tiny, sizeof tiny, "Name of Ship", "XXXXXXX"));
    TEST_ASSERT_LESS_THAN(0,
        surveyor_app_b_line(tiny, sizeof tiny,
                            2008, 2, 11, 2, 18, 7,
                            "Sensor No. 3.1", "Unknown"));
}

/* NULL-arg defensive guards. */
static void test_null_args_dont_crash(void)
{
    char buf[64];
    TEST_ASSERT_LESS_THAN(0, surveyor_app_a_kv(NULL, 64, "k", "v"));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_a_kv(buf, 64, NULL, "v"));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_a_kv(buf, 64, "k", NULL));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_b_line(NULL, 64, 0,0,0,0,0,0, "", ""));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_c_header(NULL, 64, 1, 1));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_c_row(NULL, 64,
                                                2007, 1, 19, 2, 13, 0, 0, 0));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_d_header(NULL, 64,
                                                   2007, 1, 21, 8, 13, 0));
    TEST_ASSERT_LESS_THAN(0, surveyor_app_d_row(NULL, 64, 1,
                                                SURVEYOR_STATUS_NORMAL));
}

int main(void)
{
    UNITY_BEGIN();
    /* App A */
    RUN_TEST(test_app_a_pads_short_key);
    RUN_TEST(test_app_a_handles_overlong_key);
    RUN_TEST(test_app_a_matches_spec_example_name_of_ship);
    /* App B */
    RUN_TEST(test_app_b_line_with_subject);
    RUN_TEST(test_app_b_line_without_subject);
    RUN_TEST(test_app_b_matches_spec_example_alarm);
    /* App C */
    RUN_TEST(test_app_c_header);
    RUN_TEST(test_app_c_row_with_3_decimal_places);
    RUN_TEST(test_app_c_row_distance_over_1mm);
    RUN_TEST(test_app_c_row_negative_distance);
    /* App D */
    RUN_TEST(test_app_d_header);
    RUN_TEST(test_app_d_row_normal);
    RUN_TEST(test_app_d_row_warning);
    RUN_TEST(test_app_d_row_unknown);
    RUN_TEST(test_app_d_row_alarm);
    RUN_TEST(test_app_d_row_invalid_status);
    /* Edge cases */
    RUN_TEST(test_buffer_overflow_returns_negative);
    RUN_TEST(test_null_args_dont_crash);
    return UNITY_END();
}
