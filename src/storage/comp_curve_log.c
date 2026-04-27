/*
 * src/storage/comp_curve_log.c — implementation. See comp_curve_log.h.
 */

#include "comp_curve_log.h"

#include <stdio.h>
#include <string.h>

static int append_str(char *buf, int buf_size, int *pos, const char *s)
{
    int n = (int)strlen(s);
    if (*pos + n + 1 > buf_size) return -1;
    int i;
    for (i = 0; i < n; i++) buf[*pos + i] = s[i];
    *pos += n;
    buf[*pos] = '\0';
    return 0;
}

static int append_int_zero_padded(char *buf, int buf_size, int *pos,
                                   int val, int width)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%0*d", width, val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, buf_size, pos, scratch);
}

static int append_int(char *buf, int buf_size, int *pos, long val)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%ld", val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, buf_size, pos, scratch);
}

/* Append rpm-tenths formatted as "N,t" (European decimal comma). */
static int append_rpm_tenths(char *buf, int buf_size, int *pos, Uint16 t)
{
    int integer = t / 10;
    int frac    = t % 10;
    if (append_int(buf, buf_size, pos, integer) < 0) return -1;
    if (append_str(buf, buf_size, pos, ",") < 0) return -1;
    const char d[2] = { (char)('0' + frac), '\0' };
    return append_str(buf, buf_size, pos, d);
}

int comp_curve_format_filename(char *buf, int buf_size,
                               Uint16 year, Uint16 month, Uint16 day,
                               Uint16 hour, Uint16 min, Uint16 sec)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    if (append_str(buf, buf_size, &pos, "compensation_curves_") < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, year,  4) < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, month, 2) < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, day,   2) < 0) return -1;
    if (append_str(buf, buf_size, &pos, "_") < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, hour, 2) < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, min,  2) < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, sec,  2) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ".txt") < 0) return -1;

    return pos;
}

int comp_curve_format_header(char *buf, int buf_size, int sensor_count)
{
    if (!buf || buf_size <= 0) return -1;
    if (sensor_count < 0 || (sensor_count & 1) != 0) return -1;

    int pos = 0;
    buf[0] = '\0';

    if (append_str(buf, buf_size, &pos, "Rpm1;Rpm2;") < 0) return -1;
    int cyl_count = sensor_count / 2;
    int c;
    for (c = 1; c <= cyl_count; c++) {
        char tag[16];
        int n = snprintf(tag, sizeof tag, "S%d.1;S%d.2;", c, c);
        if (n < 0 || n >= (int)sizeof tag) return -1;
        if (append_str(buf, buf_size, &pos, tag) < 0) return -1;
    }
    return pos;
}

int comp_curve_format_line(char *buf, int buf_size,
                           Uint16 rpm1_tenths, Uint16 rpm2_tenths,
                           const Int16 *sensors_um, int sensor_count)
{
    if (!buf || buf_size <= 0) return -1;
    if (!sensors_um || sensor_count < 0 || (sensor_count & 1) != 0) return -1;

    int pos = 0;
    buf[0] = '\0';

    if (append_rpm_tenths(buf, buf_size, &pos, rpm1_tenths) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";") < 0) return -1;
    if (append_rpm_tenths(buf, buf_size, &pos, rpm2_tenths) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";") < 0) return -1;

    int i;
    for (i = 0; i < sensor_count; i++) {
        if (append_int(buf, buf_size, &pos, (long)sensors_um[i]) < 0) return -1;
        if (append_str(buf, buf_size, &pos, ";") < 0) return -1;
    }
    return pos;
}
