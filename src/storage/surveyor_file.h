/*
 * src/storage/surveyor_file.h — 4-part surveyor file formatters.
 *
 * @spec 8.7 Appendix A — Engine Info Part
 * @spec 8.7 Appendix B — Log Part
 * @spec 8.7 Appendix C — Filtered Sensor Value Trend Part (per-sensor trend)
 * @spec 8.7 Appendix D — Status File
 *
 * The "4-part surveyor file" is a bundle of four plain-text reports
 * delivered to the class surveyor. Each part is its own file with its
 * own format. This module formats individual lines/sections within
 * each part. Concatenation, file naming, and SD-card persistence belong
 * to the integration layer (Phase B-7 per INTEGRATION_LAYER_DESIGN.md).
 *
 * All formatters here are pure: zero state, zero I/O, zero allocation.
 * Each returns the number of characters written (excluding NUL), or a
 * negative value on buffer overflow — never a truncated record.
 */

#ifndef BWM_SURVEYOR_FILE_H
#define BWM_SURVEYOR_FILE_H

#include "core/types.h"

/* ============================================================
 * App A — Engine Info Part
 * ============================================================ */

/**
 * @spec 8.7 Appendix A
 * @brief Format one "Key = Value" line for the engine-info part.
 *
 * Per spec example:
 *   "Name of Ship           = XXXXXXX"
 *   "IMO Number             = XXXXXXX"
 *   ...
 *
 * The key is right-padded with spaces to a fixed column width so the
 * '=' signs align. (`SURVEYOR_KEY_COLUMN_WIDTH`).
 *
 * @param buf      Output buffer.
 * @param buf_size Size of buffer in bytes.
 * @param key      Field name (e.g. "Name of Ship").
 * @param value    Field value (caller-stringified).
 * @return Chars written, or negative on overflow. */
int surveyor_app_a_kv(char *buf, int buf_size,
                      const char *key, const char *value);

#define SURVEYOR_KEY_COLUMN_WIDTH 22

/* ============================================================
 * App B — Log Part
 * ============================================================ */

/**
 * @spec 8.7 Appendix B
 * @brief Format one log-line entry.
 *
 * Per spec example:
 *   "2008-02-11, 02:18:07, Sensor No. 3.1, Unknown"
 *
 * Comma-and-space separator. The free-text fields are concatenated.
 *
 * @param buf      Output buffer.
 * @param buf_size Size of buffer.
 * @param year     Calendar year e.g. 2026.
 * @param month    1..12.
 * @param day      1..31.
 * @param hour     0..23.
 * @param min      0..59.
 * @param sec      0..59.
 * @param subject  Subject of the event (e.g. "Sensor No. 6.2").
 *                 Pass empty string if not applicable.
 * @param message  Event message (e.g. "Slowdown release, Sensor Deviation").
 * @return Chars written, or negative on overflow. */
int surveyor_app_b_line(char *buf, int buf_size,
                        Uint16 year, Uint16 month, Uint16 day,
                        Uint16 hour, Uint16 min, Uint16 sec,
                        const char *subject,
                        const char *message);

/* ============================================================
 * App C — Filtered Sensor Value Trend Part (per-sensor)
 * ============================================================ */

/**
 * @spec 8.7 Appendix C
 * @brief Format the App-C header block for one sensor's trend file.
 *
 * Per spec example:
 *   "Sensor No. 6-2\n"
 *   "Date and Time [YYYY-MM-DD hh:mm:ss];Engine operating hours [Oh];Distance [mm]"
 *
 * @param cyl_no_1based       1..14 cylinder number.
 * @param sensor_no_1based    1..2 sensor index within cylinder (fore=1, aft=2).
 * @return Chars written (including the embedded newline), or negative. */
int surveyor_app_c_header(char *buf, int buf_size,
                          Uint16 cyl_no_1based, Uint16 sensor_no_1based);

/**
 * @spec 8.7 Appendix C
 * @brief Format one App-C trend data row.
 *
 * Per spec example:
 *   "2007-01-19 02:13:00;30000;0.144"
 *
 * @param engine_op_hours          Engine operating hours.
 * @param distance_um              Filtered sensor value (µm). Spec
 *                                 displays as mm with 3 decimal places
 *                                 (e.g. 144 µm → "0.144").
 * @return Chars written, or negative. */
int surveyor_app_c_row(char *buf, int buf_size,
                       Uint16 year, Uint16 month, Uint16 day,
                       Uint16 hour, Uint16 min, Uint16 sec,
                       Uint32 engine_op_hours,
                       Int32 distance_um);

/* ============================================================
 * App D — Status File
 * ============================================================ */

/* @spec 8.7 Appendix D — cylinder status legend codes. */
typedef enum {
    SURVEYOR_STATUS_NORMAL  = 0,
    SURVEYOR_STATUS_UNKNOWN = 1,
    SURVEYOR_STATUS_WARNING = 2,
    SURVEYOR_STATUS_ALARM   = 3,
} surveyor_status_t;

/**
 * @spec 8.7 Appendix D
 * @brief Format the App-D fixed legend header. Two lines:
 *
 *   "<timestamp>"
 *   "Legend: N=Normal; U=Unknown; W=Warning; A=Alarm" */
int surveyor_app_d_header(char *buf, int buf_size,
                          Uint16 year, Uint16 month, Uint16 day,
                          Uint16 hour, Uint16 min, Uint16 sec);

/**
 * @spec 8.7 Appendix D
 * @brief Format one cylinder-status line.
 *
 * Per spec example:
 *   "Cylinder No. 01    N"
 *   "Cylinder No. 05    W"
 *
 * Cylinder number is zero-padded to 2 digits, status code is one of
 * N/U/W/A separated from the number by 4 spaces.
 *
 * @param cyl_no_1based 1..14.
 * @param status        SURVEYOR_STATUS_*.
 * @return Chars written, or negative. */
int surveyor_app_d_row(char *buf, int buf_size,
                       Uint16 cyl_no_1based, surveyor_status_t status);

#endif /* BWM_SURVEYOR_FILE_H */
