/*
 * src/storage/comp_curve_log.h — Appendix F "Storage of Compensation
 * Curves" CSV formatter.
 *
 * @spec 8.5/8.7 §6.2 — every time the speed compensation curves are
 *                     changed, the new curves are stored in a separate
 *                     timestamped file.
 * @spec 8.7 Appendix F — line format + filename convention.
 *
 * Pure formatter (no I/O, no state). The integration layer is
 * responsible for noticing when a curve change occurs (e.g., end of
 * §2.1 rough cal, end of §2.2 refinement, end of §2.3 finalize) and
 * for opening the file on the SD card.
 *
 * Spec-defined format:
 *   Filename: compensation_curves_YYYYMMDD_hhmmss.txt
 *   Header:   "Rpm1;Rpm2;S1.1;S1.2;...;S<n>.1;S<n>.2"
 *   Body:     one line per speed band, comma-decimal RPM range,
 *             integer µm reference values.
 *
 * Note the European-decimal-comma format on the speed columns
 * (e.g. "19,8;20,6;-47;-81;...").
 */

#ifndef BWM_COMP_CURVE_LOG_H
#define BWM_COMP_CURVE_LOG_H

#include "core/types.h"

/**
 * @spec 8.7 Appendix F
 * @brief Format the timestamped filename for a compensation curve log.
 *
 * Produces e.g. "compensation_curves_20260427_133045.txt".
 *
 * @param buf      Output buffer.
 * @param buf_size Size of buffer in bytes.
 * @param year     e.g. 2026.
 * @param month    1..12.
 * @param day      1..31.
 * @param hour     0..23.
 * @param min      0..59.
 * @param sec      0..59.
 * @return Number of characters written (excluding NUL), or negative if
 *         buf too small. */
int comp_curve_format_filename(char *buf, int buf_size,
                               Uint16 year, Uint16 month, Uint16 day,
                               Uint16 hour, Uint16 min, Uint16 sec);

/**
 * @spec 8.7 Appendix F
 * @brief Format the App-F header line.
 *
 * Example for sensor_count=10 (5-cylinder):
 *   "Rpm1;Rpm2;S1.1;S1.2;S2.1;S2.2;S3.1;S3.2;S4.1;S4.2;S5.1;S5.2;"
 *
 * @param sensor_count Even count of sensor channels.
 * @return Chars written (excluding NUL), or negative on overflow. */
int comp_curve_format_header(char *buf, int buf_size, int sensor_count);

/**
 * @spec 8.7 Appendix F
 * @brief Format one App-F data line (one speed band).
 *
 * RPM range is given in tenths-of-a-rpm (e.g. 198 → "19,8"). This is
 * how callers store a sub-rpm-precision band edge per the spec example
 * "19,8; 20,6; -47;-81;...".
 *
 * @param rpm1_tenths Start of the speed interval, in tenths of a rpm.
 * @param rpm2_tenths End of the speed interval, in tenths of a rpm.
 * @param sensors_um  Reference values, integer µm, in (S1.1, S1.2,
 *                    S2.1, S2.2, ...) order.
 * @param sensor_count Even count of sensor channels.
 * @return Chars written, or negative on overflow. */
int comp_curve_format_line(char *buf, int buf_size,
                           Uint16 rpm1_tenths, Uint16 rpm2_tenths,
                           const Int16 *sensors_um, int sensor_count);

#endif /* BWM_COMP_CURVE_LOG_H */
