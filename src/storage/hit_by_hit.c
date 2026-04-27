/*
 * src/storage/hit_by_hit.c — implementation. See hit_by_hit.h.
 *
 * Pure-formatter module: no allocation, no I/O. Uses snprintf with
 * explicit bounds checking; on overflow returns a negative value rather
 * than producing a truncated record (truncated CSV would corrupt the
 * persisted log).
 */

#include "hit_by_hit.h"

#include <stdio.h>   /* snprintf */
#include <string.h>  /* strlen */

/* Append into buf at offset *pos. Returns 0 on success; -1 on overflow. */
static int append_str(char *buf, int buf_size, int *pos, const char *s)
{
    int n = (int)strlen(s);
    if (*pos + n + 1 > buf_size) return -1;
    /* Use memcpy via for-loop (avoid string.h dep on <string.h>'s memcpy
     * if eventually we want a freestanding build — but we already need
     * snprintf, so this is fine). */
    int i;
    for (i = 0; i < n; i++) buf[*pos + i] = s[i];
    *pos += n;
    buf[*pos] = '\0';
    return 0;
}

static int append_int(char *buf, int buf_size, int *pos, long val)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%ld", val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, buf_size, pos, scratch);
}

static int append_int_zero_padded(char *buf, int buf_size, int *pos,
                                   int val, int width)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%0*d", width, val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, buf_size, pos, scratch);
}

int hit_by_hit_format_header(char *buf, int buf_size, int sensor_count)
{
    if (!buf || buf_size <= 0) return -1;
    if (sensor_count < 0 || (sensor_count & 1) != 0) return -1;

    int pos = 0;
    buf[0] = '\0';

    if (append_str(buf, buf_size, &pos, "date;time;rpm;dir;") < 0) return -1;

    int cyl_count = sensor_count / 2;
    int c;
    for (c = 1; c <= cyl_count; c++) {
        char tag[16];
        /* "S<c>.1;S<c>.2;" */
        int n = snprintf(tag, sizeof tag, "S%d.1;S%d.2;", c, c);
        if (n < 0 || n >= (int)sizeof tag) return -1;
        if (append_str(buf, buf_size, &pos, tag) < 0) return -1;
    }
    return pos;
}

int hit_by_hit_format_line(char *buf, int buf_size,
                           Uint16 year, Uint16 month, Uint16 day,
                           Uint16 hour, Uint16 min, Uint16 sec,
                           Uint16 rpm, int direction,
                           const Int16 *sensors_um, int sensor_count)
{
    if (!buf || buf_size <= 0) return -1;
    if (!sensors_um || sensor_count < 0 || (sensor_count & 1) != 0) return -1;

    int pos = 0;
    buf[0] = '\0';

    /* Date YYYY-MM-DD */
    if (append_int_zero_padded(buf, buf_size, &pos, year,  4) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, "-")        < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, month, 2) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, "-")        < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, day,   2) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, ";")        < 0) return -1;

    /* Time hh:mm:ss */
    if (append_int_zero_padded(buf, buf_size, &pos, hour, 2) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, ":")       < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, min,  2) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, ":")       < 0) return -1;
    if (append_int_zero_padded(buf, buf_size, &pos, sec,  2) < 0) return -1;
    if (append_str            (buf, buf_size, &pos, ";")       < 0) return -1;

    /* rpm and direction */
    if (append_int(buf, buf_size, &pos, (long)rpm) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";")       < 0) return -1;
    if (append_int(buf, buf_size, &pos, (long)direction) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";")       < 0) return -1;

    /* Sensor µm values */
    int i;
    for (i = 0; i < sensor_count; i++) {
        if (append_int(buf, buf_size, &pos, (long)sensors_um[i]) < 0) return -1;
        if (append_str(buf, buf_size, &pos, ";") < 0) return -1;
    }

    return pos;
}
