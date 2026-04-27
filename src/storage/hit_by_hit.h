/*
 * src/storage/hit_by_hit.h — Appendix E "Hit-by-hit Data of Uncompensated
 * Sensor Values" CSV formatter.
 *
 * @spec 8.5/8.7 §6.2 — one CSV line per engine revolution, persisted to
 *                     SD card for the latest 12 hours of operation.
 * @spec 8.7 Appendix E — line format definition.
 *
 * This module is a pure formatter: zero I/O, zero state. The integration
 * layer is responsible for opening/rotating the file on the SD card, for
 * the 12-hour ring-buffer behaviour, and for "frozen copy" extension on
 * alarm. Those concerns live in Phase B-6 (sdcard.c integration); see
 * host/docs/INTEGRATION_LAYER_DESIGN.md.
 *
 * Spec-defined column layout (one line per engine revolution):
 *
 *   Date[YYYY-MM-DD];Time[hh:mm:ss];Speed[rpm];Direction[-];
 *   S1.1[µm];S1.2[µm];S2.1[µm];S2.2[µm];...;S<n>.1[µm];S<n>.2[µm];
 *
 * Direction values: +1 forward, -1 reverse, 0 invalid.
 * Trailing semicolon is present per spec example.
 */

#ifndef BWM_HIT_BY_HIT_H
#define BWM_HIT_BY_HIT_H

#include "core/types.h"

/* Direction constants per spec — engine running forward/reverse/unknown. */
#define HIT_BY_HIT_DIR_FORWARD   1
#define HIT_BY_HIT_DIR_REVERSE  (-1)
#define HIT_BY_HIT_DIR_INVALID   0

/**
 * @spec 8.7 Appendix E
 * @brief Format one App-E header line.
 *
 * Example for sensor_count=10 (5-cylinder engine):
 *   "date;time;rpm;dir;S1.1;S1.2;S2.1;S2.2;S3.1;S3.2;S4.1;S4.2;S5.1;S5.2;"
 *
 * @param buf          Output buffer.
 * @param buf_size     Size of buffer in bytes.
 * @param sensor_count Number of sensor channels to emit (must be even —
 *                     channels are paired as fore/aft, S<i>.1 / S<i>.2).
 * @return Number of characters written (excluding the terminating NUL),
 *         or a negative value if the buffer is too small. */
int hit_by_hit_format_header(char *buf, int buf_size, int sensor_count);

/**
 * @spec 8.7 Appendix E
 * @brief Format one App-E data line for a single engine revolution.
 *
 * @param buf          Output buffer.
 * @param buf_size     Size of buffer in bytes.
 * @param year         e.g. 2026
 * @param month        1..12
 * @param day          1..31
 * @param hour         0..23
 * @param min          0..59
 * @param sec          0..59
 * @param rpm          Engine RPM (integer).
 * @param direction    HIT_BY_HIT_DIR_FORWARD/REVERSE/INVALID.
 * @param sensors_um   Array of `sensor_count` sensor values, in µm.
 *                     Stored in (S1.1, S1.2, S2.1, S2.2, ...) order.
 * @param sensor_count Number of entries in sensors_um.
 * @return Number of characters written (excluding NUL), or negative if
 *         the buffer is too small. */
int hit_by_hit_format_line(char *buf, int buf_size,
                           Uint16 year, Uint16 month, Uint16 day,
                           Uint16 hour, Uint16 min, Uint16 sec,
                           Uint16 rpm, int direction,
                           const Int16 *sensors_um, int sensor_count);

#endif /* BWM_HIT_BY_HIT_H */
