/*
 * src/integration/sd_bridge.c — Phase B-6 SD-card storage bridge.
 *
 * Wires the spec-correct CSV formatters in src/storage/ (App E/F/A-D)
 * to the legacy HCC FAT FS API (f_open / f_write / f_close) so the
 * SPU can persist hit-by-hit and comp-curve files on the SD card.
 *
 * Per host/implementation_docs/INTEGRATION_LAYER_DESIGN.md Phase B-6.
 *
 * The HCC FAT FS is the third-party storage layer the legacy firmware
 * already uses; we don't refactor it. Each emit_* function here:
 *   1. Formats the CSV line(s) via the pure formatter in src/storage.
 *   2. Calls f_open / f_write / f_close.
 *   3. Returns the byte count written, or negative on error.
 *
 * Phase B-6 status: bridge functions defined; the live wiring (calling
 * emit_hit_by_hit on every revolution, emit_comp_curve when curves
 * change) lives in MANModules / mancal hooks and is added incrementally.
 */

#include "core/types.h"
#include "globals.h"
#include "fat.h"

#include "storage/hit_by_hit.h"
#include "storage/comp_curve_log.h"
#include "storage/surveyor_file.h"

/* Hit-by-hit data arrives one revolution at a time; we buffer one line
 * locally and append. Buffer is sized for 28 sensors (12 cylinders × 2
 * fore/aft) plus the timestamp/rpm/dir prefix. */
#define SD_HBH_LINE_BUF  512

/**
 * @brief Emit one App-E hit-by-hit line to a per-day file on the SD card.
 *
 * @param year/month/day/hour/min/sec   timestamp from the RTC.
 * @param rpm                            engine RPM at this revolution.
 * @param direction                      HIT_BY_HIT_DIR_FORWARD/REVERSE/INVALID.
 * @param sensors_um                     array of `sensor_count` values, µm.
 * @param sensor_count                   even count of sensor channels.
 * @param filename                       caller-supplied target filename.
 * @return number of bytes appended, or negative on format/IO error.
 */
int sd_bridge_emit_hit_by_hit(Uint16 year, Uint16 month, Uint16 day,
                              Uint16 hour, Uint16 min, Uint16 sec,
                              Uint16 rpm, int direction,
                              const Int16 *sensors_um, int sensor_count,
                              const char *filename)
{
    char buf[SD_HBH_LINE_BUF];
    int n = hit_by_hit_format_line(buf, sizeof buf,
                                   year, month, day, hour, min, sec,
                                   rpm, direction, sensors_um, sensor_count);
    if (n < 0) return -1;

    /* Append a newline so each revolution lands on its own line. */
    if (n + 2 >= SD_HBH_LINE_BUF) return -1;
    buf[n]   = '\r';
    buf[n+1] = '\n';
    n += 2;

    F_FILE *fh = f_open(filename, "a");
    if (!fh) return -1;
    int written = (int)f_write(buf, 1, n, fh);
    f_close(fh);
    return written;
}

/**
 * @brief Emit App-E header line at file creation time.
 *
 * Call once per new hit-by-hit file (rolls daily / on alarm). The
 * legacy SDLogHeader pattern emits the header before any data lines.
 */
int sd_bridge_emit_hit_by_hit_header(int sensor_count, const char *filename)
{
    char buf[SD_HBH_LINE_BUF];
    int n = hit_by_hit_format_header(buf, sizeof buf, sensor_count);
    if (n < 0) return -1;
    if (n + 2 >= SD_HBH_LINE_BUF) return -1;
    buf[n]   = '\r';
    buf[n+1] = '\n';
    n += 2;

    F_FILE *fh = f_open(filename, "a");
    if (!fh) return -1;
    int written = (int)f_write(buf, 1, n, fh);
    f_close(fh);
    return written;
}

/* Comp-curve files are written once per curve change (rough cal end,
 * fine cal end, finalize step). Each file has 1 header line + 1 line
 * per band. With 150 bands at <512 bytes/line, the file is ~80 KB. */
#define SD_CC_LINE_BUF  512

/**
 * @brief Emit a complete App-F compensation-curve snapshot file.
 *
 * Generates the timestamped filename, writes the header, then walks
 * the speed_comp table and writes one line per band. The caller
 * provides the band → (rpm1_tenths, rpm2_tenths) range conversion
 * because that depends on the engine's nominal speed.
 *
 * @param year/.../sec           timestamp for the filename + record.
 * @param sensor_count           number of channels (must be even).
 * @param band_count             number of bands in the table (e.g. 150).
 * @param refs                   2D ref-value table, sized [bands][sensors].
 * @param band_ranges_tenths     2D array sized [bands][2] holding the
 *                               (rpm1_tenths, rpm2_tenths) edges per band.
 * @return total bytes written, or negative on format/IO error.
 */
int sd_bridge_emit_comp_curve_snapshot(
    Uint16 year, Uint16 month, Uint16 day,
    Uint16 hour, Uint16 min, Uint16 sec,
    int sensor_count, int band_count,
    const Int16 *refs,            /* [band_count * sensor_count] flattened */
    const Uint16 *band_ranges_tenths /* [band_count * 2] flattened (rpm1,rpm2) */)
{
    char filename[64];
    int fn_n = comp_curve_format_filename(filename, sizeof filename,
                                          year, month, day, hour, min, sec);
    if (fn_n < 0) return -1;

    F_FILE *fh = f_open(filename, "w");  /* fresh file each time */
    if (!fh) return -1;

    char buf[SD_CC_LINE_BUF];
    int total_written = 0;

    /* Header */
    int n = comp_curve_format_header(buf, sizeof buf, sensor_count);
    if (n < 0) { f_close(fh); return -1; }
    buf[n]   = '\r'; buf[n+1] = '\n'; n += 2;
    int w = (int)f_write(buf, 1, n, fh);
    if (w != n) { f_close(fh); return -1; }
    total_written += w;

    /* Body — one line per band */
    int b;
    for (b = 0; b < band_count; b++) {
        const Int16  *row     = &refs[b * sensor_count];
        Uint16       rpm1    = band_ranges_tenths[b * 2];
        Uint16       rpm2    = band_ranges_tenths[b * 2 + 1];
        n = comp_curve_format_line(buf, sizeof buf, rpm1, rpm2,
                                   row, sensor_count);
        if (n < 0) { f_close(fh); return -1; }
        if (n + 2 >= SD_CC_LINE_BUF) { f_close(fh); return -1; }
        buf[n]   = '\r'; buf[n+1] = '\n'; n += 2;
        w = (int)f_write(buf, 1, n, fh);
        if (w != n) { f_close(fh); return -1; }
        total_written += w;
    }

    f_close(fh);
    return total_written;
}

/**
 * @brief Emit the full 4-part surveyor file as four sequentially-written
 * sections to a single file. Each section is preceded by a banner line
 * (e.g. "===== Engine Info =====").
 *
 * Phase B-7 will split this into four separate files if surveyor
 * tooling expects that layout; current implementation writes them
 * concatenated.
 */
int sd_bridge_emit_surveyor_file(const char *filename)
{
    char buf[SD_CC_LINE_BUF];
    F_FILE *fh = f_open(filename, "w");
    if (!fh) return -1;

    /* Header banners — actual content rows are emitted by callers
     * driving surveyor_app_* helpers per row. This skeleton just
     * places the banners so the output structure is right. */
    static const char *banners[4] = {
        "===== Appendix A — Engine Info =====\r\n",
        "===== Appendix B — Log =====\r\n",
        "===== Appendix C — Sensor Trend =====\r\n",
        "===== Appendix D — Status =====\r\n"
    };
    int total = 0;
    int i;
    for (i = 0; i < 4; i++) {
        int len = 0;
        while (banners[i][len]) len++;
        int w = (int)f_write((void*)banners[i], 1, len, fh);
        if (w != len) { f_close(fh); return -1; }
        total += w;
    }
    f_close(fh);
    (void)buf;
    return total;
}
