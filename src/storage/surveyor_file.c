/*
 * src/storage/surveyor_file.c — implementation. See surveyor_file.h.
 */

#include "surveyor_file.h"

#include <stdio.h>
#include <string.h>

static int append_str(char *buf, int sz, int *pos, const char *s)
{
    int n = (int)strlen(s);
    if (*pos + n + 1 > sz) return -1;
    int i;
    for (i = 0; i < n; i++) buf[*pos + i] = s[i];
    *pos += n;
    buf[*pos] = '\0';
    return 0;
}

static int append_int_pad(char *buf, int sz, int *pos, int val, int width)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%0*d", width, val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, sz, pos, scratch);
}

static int append_int(char *buf, int sz, int *pos, long val)
{
    char scratch[16];
    int n = snprintf(scratch, sizeof scratch, "%ld", val);
    if (n < 0 || n >= (int)sizeof scratch) return -1;
    return append_str(buf, sz, pos, scratch);
}

/* "YYYY-MM-DD" */
static int append_date(char *buf, int sz, int *pos,
                       Uint16 y, Uint16 m, Uint16 d)
{
    if (append_int_pad(buf, sz, pos, y, 4) < 0) return -1;
    if (append_str    (buf, sz, pos, "-")    < 0) return -1;
    if (append_int_pad(buf, sz, pos, m, 2) < 0) return -1;
    if (append_str    (buf, sz, pos, "-")    < 0) return -1;
    if (append_int_pad(buf, sz, pos, d, 2) < 0) return -1;
    return 0;
}

/* "hh:mm:ss" */
static int append_time(char *buf, int sz, int *pos,
                       Uint16 h, Uint16 m, Uint16 s)
{
    if (append_int_pad(buf, sz, pos, h, 2) < 0) return -1;
    if (append_str    (buf, sz, pos, ":")    < 0) return -1;
    if (append_int_pad(buf, sz, pos, m, 2) < 0) return -1;
    if (append_str    (buf, sz, pos, ":")    < 0) return -1;
    if (append_int_pad(buf, sz, pos, s, 2) < 0) return -1;
    return 0;
}

/* ============================================================
 * App A — Engine Info Part
 * ============================================================ */

int surveyor_app_a_kv(char *buf, int buf_size,
                      const char *key, const char *value)
{
    if (!buf || buf_size <= 0 || !key || !value) return -1;
    int pos = 0;
    buf[0] = '\0';

    /* Key, padded with trailing spaces to the column width. */
    char padded[32];
    int kn = (int)strlen(key);
    if (kn > SURVEYOR_KEY_COLUMN_WIDTH) {
        /* Key longer than column — emit verbatim and one space. */
        if (append_str(buf, buf_size, &pos, key) < 0) return -1;
        if (append_str(buf, buf_size, &pos, " ") < 0) return -1;
    } else {
        int n = snprintf(padded, sizeof padded,
                         "%-*s", SURVEYOR_KEY_COLUMN_WIDTH, key);
        if (n < 0 || n >= (int)sizeof padded) return -1;
        if (append_str(buf, buf_size, &pos, padded) < 0) return -1;
    }
    if (append_str(buf, buf_size, &pos, " = ") < 0) return -1;
    if (append_str(buf, buf_size, &pos, value) < 0) return -1;
    return pos;
}

/* ============================================================
 * App B — Log Part
 * ============================================================ */

int surveyor_app_b_line(char *buf, int buf_size,
                        Uint16 year, Uint16 month, Uint16 day,
                        Uint16 hour, Uint16 min, Uint16 sec,
                        const char *subject,
                        const char *message)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    if (append_date(buf, buf_size, &pos, year, month, day) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ", ") < 0) return -1;
    if (append_time(buf, buf_size, &pos, hour, min, sec) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ", ") < 0) return -1;

    if (subject && subject[0] != '\0') {
        if (append_str(buf, buf_size, &pos, subject) < 0) return -1;
        if (append_str(buf, buf_size, &pos, ", ") < 0) return -1;
    }
    if (message) {
        if (append_str(buf, buf_size, &pos, message) < 0) return -1;
    }
    return pos;
}

/* ============================================================
 * App C — Filtered Sensor Value Trend Part
 * ============================================================ */

int surveyor_app_c_header(char *buf, int buf_size,
                          Uint16 cyl_no_1based, Uint16 sensor_no_1based)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    if (append_str(buf, buf_size, &pos, "Sensor No. ") < 0) return -1;
    if (append_int(buf, buf_size, &pos, (long)cyl_no_1based) < 0) return -1;
    if (append_str(buf, buf_size, &pos, "-") < 0) return -1;
    if (append_int(buf, buf_size, &pos, (long)sensor_no_1based) < 0) return -1;
    if (append_str(buf, buf_size, &pos, "\n") < 0) return -1;
    if (append_str(buf, buf_size, &pos,
        "Date and Time [YYYY-MM-DD hh:mm:ss];Engine operating hours [Oh];Distance [mm]") < 0)
        return -1;
    return pos;
}

int surveyor_app_c_row(char *buf, int buf_size,
                       Uint16 year, Uint16 month, Uint16 day,
                       Uint16 hour, Uint16 min, Uint16 sec,
                       Uint32 engine_op_hours,
                       Int32 distance_um)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    if (append_date(buf, buf_size, &pos, year, month, day) < 0) return -1;
    if (append_str(buf, buf_size, &pos, " ") < 0) return -1;
    if (append_time(buf, buf_size, &pos, hour, min, sec) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";") < 0) return -1;
    if (append_int(buf, buf_size, &pos, (long)engine_op_hours) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ";") < 0) return -1;

    /* Distance: spec emits 3 decimal places of mm; we store µm. */
    Int32 abs_um = (distance_um < 0) ? -distance_um : distance_um;
    Int32 mm     = abs_um / 1000;
    Int32 frac   = abs_um % 1000;
    if (distance_um < 0) {
        if (append_str(buf, buf_size, &pos, "-") < 0) return -1;
    }
    if (append_int(buf, buf_size, &pos, (long)mm) < 0) return -1;
    if (append_str(buf, buf_size, &pos, ".") < 0) return -1;
    if (append_int_pad(buf, buf_size, &pos, (int)frac, 3) < 0) return -1;
    return pos;
}

/* ============================================================
 * App D — Status File
 * ============================================================ */

int surveyor_app_d_header(char *buf, int buf_size,
                          Uint16 year, Uint16 month, Uint16 day,
                          Uint16 hour, Uint16 min, Uint16 sec)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    if (append_date(buf, buf_size, &pos, year, month, day) < 0) return -1;
    if (append_str(buf, buf_size, &pos, " ") < 0) return -1;
    if (append_time(buf, buf_size, &pos, hour, min, sec) < 0) return -1;
    if (append_str(buf, buf_size, &pos, "\n") < 0) return -1;
    if (append_str(buf, buf_size, &pos,
        "Legend: N=Normal; U=Unknown; W=Warning; A=Alarm") < 0)
        return -1;
    return pos;
}

int surveyor_app_d_row(char *buf, int buf_size,
                       Uint16 cyl_no_1based, surveyor_status_t status)
{
    if (!buf || buf_size <= 0) return -1;
    int pos = 0;
    buf[0] = '\0';

    char status_char;
    switch (status) {
        case SURVEYOR_STATUS_NORMAL:  status_char = 'N'; break;
        case SURVEYOR_STATUS_UNKNOWN: status_char = 'U'; break;
        case SURVEYOR_STATUS_WARNING: status_char = 'W'; break;
        case SURVEYOR_STATUS_ALARM:   status_char = 'A'; break;
        default: return -1;
    }
    if (append_str(buf, buf_size, &pos, "Cylinder No. ") < 0) return -1;
    if (append_int_pad(buf, buf_size, &pos, (int)cyl_no_1based, 2) < 0) return -1;
    if (append_str(buf, buf_size, &pos, "    ") < 0) return -1;
    char one[2] = { status_char, '\0' };
    if (append_str(buf, buf_size, &pos, one) < 0) return -1;
    return pos;
}
