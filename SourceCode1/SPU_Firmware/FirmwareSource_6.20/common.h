#ifndef _COMMON_H_
#define _COMMON_H_

/****************************************************************************
 *
 *            Copyright (c) 2003 by HCC Embedded 
 *
 * This software is copyrighted by and is the sole property of 
 * HCC.  All rights, title, ownership, or other interests
 * in the software remain the property of HCC.  This
 * software may only be used in accordance with the corresponding
 * license agreement.  Any unauthorized use, duplication, transmission,  
 * distribution, or disclosure of this software is expressly forbidden.
 *
 * This Copyright notice may not be removed or modified without prior
 * written consent of HCC.
 *
 * HCC reserves the right to modify this software without notice.
 *
 * HCC Embedded
 * Budapest 1132
 * Victor Hugo Utca 11-15
 * Hungary
 *
 * Tel:  +36 (1) 450 1302
 * Fax:  +36 (1) 450 1303
 * http: www.hcc-embedded.com
 * email: info@hcc-embedded.com
 *
 ***************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

/* EXPORTS */

extern unsigned long MagicNumber;

extern int _f_readsector(F_VOLUME *vi,void *data, unsigned long sector,int cnt);
extern int _f_writesector(F_VOLUME *vi,void *data, unsigned long sector, int cnt);
extern int _f_getclustervalue(F_VOLUME *vi,unsigned long cluster,unsigned long *pvalue);
extern void _f_clustertopos(F_VOLUME *vi,unsigned long cluster, F_POS *pos);
extern unsigned long _f_getdecluster(F_VOLUME *vi,F_DIRENTRY *de);
extern int _f_checkstatus(F_VOLUME *vi);
extern int _f_getvolume(F_MULTI *fm,int drivenum,F_VOLUME **pvi);
extern unsigned short _f_getword(void *ptr);
extern unsigned long _f_getlong(void *ptr);
extern int _f_checklocked(long drvnum,F_POS *pos);
extern int _f_checkreadlocked(long drvnum,F_POS *pos);
extern void _f_initentry(F_DIRENTRY *de,char *name, char *ext);
extern void _f_setword(void *ptr,unsigned short num);
extern int _f_alloccluster(F_VOLUME *vi,unsigned long *pcluster);
extern int _f_dobadblock(F_VOLUME *vi,F_FILEINT *f);
extern int _f_setclustervalue(F_VOLUME *vi,unsigned long cluster, unsigned long data);
extern int _f_writefatsector(F_VOLUME *vi);
extern void _f_setdecluster(F_VOLUME *vi,F_DIRENTRY *de,unsigned long cluster);
extern int _f_fseek(F_VOLUME *vi,F_MULTI *fm,F_FILEINT *f,long offset);
extern int _f_getcurrsector(F_VOLUME *vi,F_FILEINT *f,char *ptr,int *cnt);
extern int _f_removechain(F_VOLUME *vi,unsigned long cluster);
extern F_FILEINT *_f_check_handle(F_FILE *filehandle);
extern int _f_writedirsector(F_VOLUME *vi);
extern void _f_setlong(void *ptr,unsigned long num);
extern unsigned long _f_getmaxcluster(F_VOLUME *vi);

#if F_MAXSEEKPOS
extern void _fn_removeseekpos(F_FILEINT *f);
extern void _fn_updateseekpos(F_FILEINT *f);
extern void _fn_initseekdivisor(F_FILEINT *f,F_VOLUME *vi);
#endif

#ifdef FATCACHE_ENABLE
extern int _f_fatcache_flush (F_VOLUME *vi, int clear);
#endif

extern int _f_mutex_get(F_MULTI *fm,F_VOLUME *vi);
extern void _f_mutex_put(F_MULTI *fm);


#if (!F_CAPI_USED) 
#ifdef USE_MALLOC
extern F_MULTI *g_multi[F_MAXTASK];
#else
extern F_MULTI g_multi[F_MAXTASK];
#endif
#endif

extern int fnSetTask(F_MULTI **fm);
extern void f_releaseFS(long ID);

#ifdef INTERNAL_MEMFN
extern void *_f_memset(void *, int, unsigned long);
extern void *_f_memcpy(void *, void *, unsigned long);
#endif

#ifdef __cplusplus
}
#endif

/****************************************************************************
 *
 * end of common.h
 *
 ***************************************************************************/

#endif /* _COMMON_H_ */
