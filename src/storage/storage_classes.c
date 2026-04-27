/*
 * src/storage/storage_classes.c — implementation.
 */

#include "storage_classes.h"

Uint32 storage_compute_post_alarm_extension_seconds(Uint16 alarm_class)
{
    /* @spec 8.5 §6 — short-term frozen copy extends by +5 min after alarm.
     * The 8.6+ rapid-wear flavor uses +1 hour; that path is added in
     * Phase 4 alongside the new appendices. */
    (void)alarm_class;
    return STORAGE_POST_ALARM_EXTEND_MIN * 60UL;
}
