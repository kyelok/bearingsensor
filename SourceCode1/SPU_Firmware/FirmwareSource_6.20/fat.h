#ifndef _FAT_H_
#define _FAT_H_

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

#include "fwerr.h"
#include "udefs.h"

#ifndef NULL
#define NULL (void *)0
#endif

/* HCC_UNICODE typedef */
#ifdef HCC_UNICODE
typedef unsigned short wchar;
#endif

/* When initvolume the driver will assign automatically a free driver */
#define F_AUTO_ASSIGN (void *)(-1)


#define F_SECTOR_SIZE 512
#define F_MAXNAME 8		/*  8 byte name  */
#define F_MAXEXT  3		/*  3 byte extension  */

#define F_MAXSEEKPOS 8

typedef struct {
unsigned char jump_code[3];
unsigned char OEM_name [8];
unsigned short bytes_per_sector;
unsigned char sector_per_cluster;
unsigned short reserved_sectors;
unsigned char number_of_FATs;
unsigned short max_root_entry;
unsigned short number_of_sectors_less32; /*  <32M  */
unsigned char media_descriptor;
unsigned short sector_per_FAT;
unsigned short sector_per_Track;
unsigned short number_of_heads;
unsigned long number_of_hidden_sectors;
unsigned long number_of_sectors;

/* only on fat32 */
unsigned long sector_per_FAT32;
unsigned short extflags;
unsigned short fsversion;
unsigned long rootcluster;
unsigned short fsinfo;
unsigned short bkbootsec;
unsigned char reserved[12];

/* fat12-fat16-fat32 */

unsigned short logical_drive_num;
unsigned char extended_signature;
unsigned long serial_number;
unsigned char volume_name[11];
unsigned char FAT_name[8];
unsigned char executable_marker[2];
} F_BOOTRECORD;


typedef struct {
unsigned short number_of_cylinders;
unsigned short sector_per_track;
unsigned short number_of_heads;
unsigned long number_of_sectors;
unsigned char media_descriptor;
} F_PHY;


#if (!F_LONGFILENAME)

typedef struct {
   int drivenum; 	/*  0-A 1-B 2-C  */
	char path [F_MAXPATH];		/*   /directory1/dir2/   */
	char filename[F_MAXNAME];	/*  filename  */
	char fileext [F_MAXEXT];  	/*  extension  */
} F_NAME;

#else

#define F_MAXLNAME 256

typedef struct {
   int drivenum; 	/*  0-A 1-B 2-C  */
	W_CHAR path  [F_MAXPATH];		/*   /directory1/dir2/   */
	W_CHAR lname [F_MAXLNAME];	/*  long file name   */
} F_NAME;

#endif /*  F_LONGFILENAME   */

typedef struct {
	unsigned long cluster;
	unsigned long prevcluster;
	unsigned long sectorbegin;
	unsigned long sector;
	unsigned long sectorend;
	unsigned long pos;
} F_POS;

typedef struct {
	char filename[F_MAXPATH];	/* file name+ext */
	char name[F_MAXNAME];		/* file name */
	char ext[F_MAXEXT];		/* file extension */
	char attr;					/* attribute of the file */

	unsigned short ctime;		/* creation time */
	unsigned short cdate;		/* creation date */
	unsigned long cluster;

	long filesize;					/* length of file */

	F_NAME findfsname;		   	/* find properties */
	F_POS pos;
} F_FIND; 

#ifdef HCC_UNICODE
typedef struct {
	W_CHAR filename[F_MAXPATH];	/* file name+ext */
	char name[F_MAXNAME];		/* file name */
	char ext[F_MAXEXT];		/* file extension */
	char attr;					/* attribute of the file */

	unsigned short ctime;		/* creation time */
	unsigned short cdate;		/* creation date */
	unsigned long cluster;

	long filesize;					/* length of file */

	F_NAME findfsname;		   	/* find properties */
	F_POS pos;
} F_WFIND; 
#endif

#if F_LONGFILENAME 

typedef struct {
   W_CHAR name[261]; /* with zero term */
   unsigned char ord;
   unsigned char chksum;
   unsigned char state; 
   unsigned long start;
   unsigned long end;
} F_LFNINT;

enum {
F_LFNSTATE_LFN,  /* lfn is useable */
F_LFNSTATE_SFN,  /* lfn is useable, contains short filename */
F_LFNSTATE_NEXT, /* lfn need more entry */
F_LFNSTATE_INV   /* invalid lfn */
};

#endif  /* F_LONGFILENAME */

typedef struct {
unsigned char name[F_MAXNAME];	/* 8+3 */
unsigned char ext[F_MAXEXT];	
unsigned char attr;					/* 00ADVSHR */

unsigned char ntres;      /* FAT32 only  */
unsigned char crttimetenth;    /* FAT32 only  */
unsigned char crttime[2];   /* FAT32 only  */
unsigned char crtdate[2];   /* FAT32 only */
unsigned char lastaccessdate[2];/* FAT32 only */

unsigned char clusterhi[2]; /* FAT32 only */
unsigned char ctime[2];
unsigned char cdate[2];
unsigned char clusterlo[2]; /* fat12,fat16,fat32 */
unsigned char filesize[4];

} F_DIRENTRY;


#define NTRES_LOW 0x08 /* lower case name */

#define F_ATTR_ARC      0x20
#define F_ATTR_DIR      0x10
#define F_ATTR_VOLUME   0x08
#define F_ATTR_SYSTEM   0x04
#define F_ATTR_HIDDEN   0x02
#define F_ATTR_READONLY 0x01
#define F_ATTR_LFN      (F_ATTR_VOLUME|F_ATTR_SYSTEM|F_ATTR_HIDDEN|F_ATTR_READONLY)

#if F_LONGFILENAME 


typedef struct {
unsigned char ord;

unsigned char lfn_1;
unsigned char lfnhi_1;

unsigned char lfn_2;
unsigned char lfnhi_2;

unsigned char lfn_3;
unsigned char lfnhi_3;

unsigned char lfn_4;
unsigned char lfnhi_4;

unsigned char lfn_5;
unsigned char lfnhi_5;

unsigned char attr;	/* 00ADVSHR */
unsigned char type;  /* always 0 */

unsigned char chksum;

unsigned char lfn_6;
unsigned char lfnhi_6;

unsigned char lfn_7;
unsigned char lfnhi_7;

unsigned char lfn_8;
unsigned char lfnhi_8;

unsigned char lfn_9;
unsigned char lfnhi_9;

unsigned char lfn_10;
unsigned char lfnhi_10;

unsigned char lfn_11;
unsigned char lfnhi_11;

unsigned char clusterlo[2]; /* fat12,fat16,fat32 */

unsigned char lfn_12;
unsigned char lfnhi_12;

unsigned char lfn_13;
unsigned char lfnhi_13;

} F_LFN;



#endif /* F_LONGFILENAME  */

#define F_CLUSTER_FREE	   ((unsigned long)0x00000000)
#define F_CLUSTER_RESERVED ((unsigned long)0x0ffffff0)
#define F_CLUSTER_BAD	   ((unsigned long)0x0ffffff7)
#define F_CLUSTER_LAST	   ((unsigned long)0x0ffffff8)
#define F_CLUSTER_LASTF32R ((unsigned long)0x0fffffff)

typedef int (*F_WRITESECTOR)(void *data, unsigned long sector, void *user_ptr);
typedef int (*F_WRITEMULTIPLESECTOR)(void *data, unsigned long sector, int cnt, void *user_ptr);
typedef int (*F_READSECTOR)(void *data, unsigned long sector, void *user_ptr);
typedef int (*F_READMULTIPLESECTOR)(void *data, unsigned long sector, int cnt, void *user_ptr);
typedef int (*F_GETPHY)(F_PHY *phy, void *user_ptr);
typedef long (*F_GETSTATUS)(void *user_ptr);
typedef int (*F_DELFUNC)(void *user_ptr);

#define F_ST_MISSING   0x00000001
#define F_ST_CHANGED   0x00000002
#define F_ST_WRPROTECT 0x00000004

typedef struct {
	unsigned long sector;  /* start sector */
	unsigned long num;     /* number of sectors */
} F_SECTOR;


#if F_MAXFILES>0xffff     /* maximum number of files */
#error F_MAXFILES should be less than 65535
#elif F_MAXFILES>0x7fff
#define F_MAXFILES_SHIFT 16
#elif F_MAXFILES>0x3fff
#define F_MAXFILES_SHIFT 15
#elif F_MAXFILES>0x1fff
#define F_MAXFILES_SHIFT 14
#elif F_MAXFILES>0x0fff
#define F_MAXFILES_SHIFT 13
#elif F_MAXFILES>0x07ff
#define F_MAXFILES_SHIFT 12
#elif F_MAXFILES>0x03ff
#define F_MAXFILES_SHIFT 11
#elif F_MAXFILES>0x01ff
#define F_MAXFILES_SHIFT 10
#elif F_MAXFILES>0x00ff
#define F_MAXFILES_SHIFT 9
#elif F_MAXFILES>0x007f
#define F_MAXFILES_SHIFT 8
#elif F_MAXFILES>0x003f
#define F_MAXFILES_SHIFT 7
#elif F_MAXFILES>0x001f
#define F_MAXFILES_SHIFT 6
#elif F_MAXFILES>0x000f
#define F_MAXFILES_SHIFT 5
#else
#define F_MAXFILES_SHIFT 4
#endif


typedef struct {
	void *reference;	/* reference which fileint used */
} F_FILE;

/*  definitions for F_FILE internally used  */

typedef struct {
  int N;
  char *ptr;
#ifdef USE_MALLOC
  F_POS *pos;
#else
  F_POS *pos;
  F_POS posbuf[WR_DATACACHE_SIZE];
#endif
} t_WrDataCache;

typedef struct {
	F_FILE file;
	long modified;
	char mode;
   int drivenum; 	/*  0-A 1-B 2-C  */
	unsigned long abspos;
	unsigned long relpos;
	unsigned long filesize;
	unsigned char data[F_SECTOR_SIZE];
	t_WrDataCache WrDataCache;
	unsigned long startcluster;
	F_POS pos;
	F_POS dirpos;
#if F_MAXSEEKPOS
	long seekpos[F_MAXSEEKPOS];
	long seekprev[F_MAXSEEKPOS];
	long seekshift;
#endif
} F_FILEINT;

typedef struct {
  F_WRITESECTOR writesector;
  F_WRITEMULTIPLESECTOR writemultiplesector;
  F_READSECTOR readsector;
  F_READMULTIPLESECTOR readmultiplesector;
  F_GETPHY getphy;
  F_GETSTATUS getstatus;
  F_DELFUNC delfunc;
  void *user_ptr;
} F_FUNC;

typedef int (*F_INITFUNC)(F_FUNC *pfunc, void *user_ptr);

typedef struct {
   unsigned long total;
   unsigned long free;
   unsigned long used;
   unsigned long bad;

   unsigned long total_high;
   unsigned long free_high;
   unsigned long used_high;
   unsigned long bad_high;
} F_SPACE;

typedef struct {
  unsigned long clfree;
  unsigned long clused;
  unsigned long clbad;
} F_CLSPACE;

#ifdef FATCACHE_ENABLE
typedef struct {
  unsigned long sector;
  int modified;
} t_CacheDsc;

typedef struct {
  int N;
  t_CacheDsc *dsc;
#ifdef USE_MALLOC
  unsigned char *data;
#else
  t_CacheDsc dsc_array[FATCACHE_SIZE];
  unsigned char data[FATCACHE_SIZE*F_SECTOR_SIZE];
#endif
} t_FatCache;
#endif

typedef struct {
  long state;

  F_BOOTRECORD bootrecord;

  F_SECTOR firstfat;

  F_SECTOR root;
  F_SECTOR data;

#ifdef FATCACHE_ENABLE
  t_FatCache fatcache;
  unsigned char *fat;
#else
  unsigned char fat[F_SECTOR_SIZE];
#endif
  unsigned long fatsector;
  long fatmodified;

#if F_LONGFILENAME
#ifdef DIRCACHE_ENABLE
#ifdef USE_MALLOC
  unsigned char *dircache;
#else 
  unsigned char dircache[DIRCACHE_SIZE*F_SECTOR_SIZE];
#endif
  unsigned long dircache_start;
  unsigned long dircache_size;
#endif
#endif
  unsigned char direntry[F_SECTOR_SIZE];
  unsigned long direntrysector;

  unsigned long lastalloccluster;

  F_FUNC func;

  W_CHAR *cwd;
  
  long mediatype;
  F_CLSPACE clspace;	/* calculated disk space */
  char cspaceok;
  F_MUTEX_TYPE mutex;
#if defined FATBITFIELD_ENABLE && defined USE_MALLOC
  unsigned char *fatbitfield;
#endif

} F_VOLUME;

#define F_UNKNOWN_MEDIA 0
#define F_FAT12_MEDIA 1
#define F_FAT16_MEDIA 2
#define F_FAT32_MEDIA 3

typedef struct {
	//F_VOLUME volumes[F_MAXVOLUME];	/* volumes */
	//F_FILEINT files[F_MAXFILES];
	//ajb addded below, only 1 volume and 1 file
	F_VOLUME volumes[1];	/* volumes */
	F_FILEINT files[1];
	unsigned char sectorbuffer[F_SECTOR_SIZE];
} F_FILESYSTEM;

extern F_FILESYSTEM f_filesystem;


#if (!F_CAPI_USED) 
typedef struct {
  long ID;
  int f_curdrive;					/* current drive */
  struct {
	  W_CHAR cwd[F_MAXPATH];		/* current working folders in this volume */
  } f_vols[F_MAXVOLUME];
  F_MUTEX_TYPE *pmutex;
} F_MULTI;
#endif

#define F_FILE_CLOSE	0
#define F_FILE_RD	1
#define F_FILE_WR	2
#define F_FILE_A	3
#define F_FILE_RDP	4
#define F_FILE_WRP	5
#define F_FILE_AP	6
#define F_FILE_WRERR	7

enum {
/*  0 */ F_STATE_NONE,
/*  1 */ F_STATE_NEEDMOUNT,
/*  2 */ F_STATE_WORKING
};

/*  definitions for ctime  */

#define F_CTIME_SEC_SHIFT		0
#define F_CTIME_SEC_MASK	0x001f	/* 0-30 in 2seconds */
#define F_CTIME_MIN_SHIFT		5
#define F_CTIME_MIN_MASK	0x07e0	/* 0-59  */
#define F_CTIME_HOUR_SHIFT		11
#define F_CTIME_HOUR_MASK	0xf800	/* 0-23 */

/*  definitions for cdate  */

#define F_CDATE_DAY_SHIFT		0
#define F_CDATE_DAY_MASK	0x001f	/* 0-31 */
#define F_CDATE_MONTH_SHIFT	5
#define F_CDATE_MONTH_MASK	0x01e0	/* 1-12 */
#define F_CDATE_YEAR_SHIFT		9
#define F_CDATE_YEAR_MASK	0xfe00	/* 0-119 (1980+value) */

/* Beginning of file */
#ifdef SEEK_SET
#define F_SEEK_SET SEEK_SET
#else
#define F_SEEK_SET 0
#endif

/* Current position of file pointer */
#ifdef SEEK_CUR
#define F_SEEK_CUR SEEK_CUR
#else
#define F_SEEK_CUR 1
#endif

/* End of file */
#ifdef SEEK_END
#define F_SEEK_END SEEK_END
#else
#define F_SEEK_END 2
#endif


extern char *fn_getversion(void);
extern int fn_initvolume(F_MULTI *fm,int drvnumber,F_INITFUNC pfunc,void *user_ptr);
extern int fn_delvolume (int drvnumber);
extern int fn_get_volume_count (void);
extern int fn_get_volume_list (int *buf);
extern int fn_checkvolume(F_MULTI *fm,int drvnumber);
extern int fn_hardformat(F_MULTI *fm,int drivenum,long fattype);
extern int fn_format(F_MULTI *fm,int drivenum,long fattype);
extern int fn_getcwd(F_MULTI *fm,char *buffer, int maxlen );
extern int fn_getdcwd(F_MULTI *fm,int drivenum, char *buffer, int maxlen );
extern int fn_chdrive(F_MULTI *fm,int drivenum);
extern int fn_getdrive(F_MULTI *fm);
extern int fn_getfreespace(F_MULTI *fm,int drivenum, F_SPACE *pspace);

extern int fn_chdir(F_MULTI *fm,const char *dirname);
extern int fn_mkdir(F_MULTI *fm,const char *dirname);
extern int fn_rmdir(F_MULTI *fm,const char *dirname);

extern int fn_findfirst(F_MULTI *fm,const char *filename,F_FIND *find);
extern int fn_findnext(F_MULTI *fm,F_FIND *find);
extern int fn_rename(F_MULTI *fm,const char *filename, const char *newname);
extern long fn_filelength(F_MULTI *fm,const char *filename);

extern int fn_close(F_MULTI *fm,F_FILE *filehandle);
extern int fn_flush(F_MULTI *fm,F_FILE *file);
extern F_FILE *fn_open(F_MULTI *fm,const char *filename,const char *mode);
extern F_FILE *fn_truncate(F_MULTI *fm,const char *filename,unsigned long length);

extern long fn_read(F_MULTI *fm,void *buf,long size,long size_st,F_FILE *filehandle);
extern long fn_write(F_MULTI *fm,const void *buf,long size,long size_st,F_FILE *filehandle);

extern int fn_seek(F_MULTI *fm,F_FILE *filehandle,long offset,long whence);
extern int fn_seteof(F_MULTI *fm,F_FILE *filehandle);

extern long fn_tell(F_FILE *filehandle);
extern int fn_getc(F_MULTI *fm,F_FILE *filehandle);
extern int fn_putc(F_MULTI *fm,int ch,F_FILE *filehandle);
extern int fn_rewind(F_MULTI *fm,F_FILE *filehandle);
extern int fn_eof(F_FILE *filehandle);

extern int fn_gettimedate(F_MULTI *fm,const char *filename,unsigned short *pctime,unsigned short *pcdate);
extern int fn_settimedate(F_MULTI *fm,const char *filename,unsigned short ctime,unsigned short cdate);
extern int fn_delete(F_MULTI *fm,const char *filename);

extern int fn_getattr(F_MULTI *fm,const char *filename,unsigned char *attr);
extern int fn_setattr(F_MULTI *fm,const char *filename,unsigned char attr);

extern int fn_getlabel(F_MULTI *fm,int drivenum, char *label, long len);
extern int fn_setlabel(F_MULTI *fm,int drivenum, const char *label);

extern int fn_get_oem(F_MULTI *fm, int drivenum, char *str, long maxlen);

#include "fat_m.h"

#define f_getversion fm_getversion
#define f_initvolume(drvnumber,pfunc,user_ptr) fm_initvolume(drvnumber,pfunc,user_ptr)
#define f_delvolume(drvnumber) fm_delvolume(drvnumber)
#define f_get_volume_count() fm_get_volume_count()
#define f_get_volume_list(buf) fm_get_volume_list(buf)
#define f_check_volume(drvnumber) fm_checkvolume(drvnumber)
#define f_hardformat(drivenum,fattype) fm_hardformat(drivenum,fattype)
#define f_format(drivenum,fattype) fm_format(drivenum,fattype)
#define f_getcwd(buffer,maxlen) fm_getcwd(buffer,maxlen)
#define f_getdcwd(drivenum,buffer,maxlen) fm_getdcwd(drivenum,buffer,maxlen)
#define f_chdrive(drivenum) fm_chdrive(drivenum)
#define f_getdrive fm_getdrive
#define f_getfreespace(drivenum,pspace) fm_getfreespace(drivenum,pspace)

#define f_chdir(dirname) fm_chdir(dirname)
#define f_mkdir(dirname) fm_mkdir(dirname)
#define f_rmdir(dirname) fm_rmdir(dirname)

#define f_findfirst(filename,find) fm_findfirst(filename,find)
#define f_findnext(find) fm_findnext(find)
#define f_rename(filename,newname) fm_rename(filename,newname)
#define f_filelength(filename) fm_filelength(filename)

#define f_close(filehandle) fm_close(filehandle)
#define f_flush(filehandle) fm_flush(filehandle)
#define f_open(filename,mode) fm_open(filename,mode)
#define f_truncate(filename,length) fm_truncate(filename,length)

#define f_read(buf,size,size_st,filehandle) fm_read(buf,size,size_st,filehandle)
#define f_write(buf,size,size_st,filehandle) fm_write(buf,size,size_st,filehandle)

#define f_seek(filehandle,offset,whence) fm_seek(filehandle,offset,whence)
#define f_seteof(filehandle) fm_seteof(filehandle)

#define f_tell(filehandle) fm_tell(filehandle)
#define f_getc(filehandle) fm_getc(filehandle)
#define f_putc(ch,filehandle) fm_putc(ch,filehandle)
#define f_rewind(filehandle) fm_rewind(filehandle)
#define f_eof(filehandle) fm_eof(filehandle)

#define f_gettimedate(filename,pctime,pcdate) fm_gettimedate(filename,pctime,pcdate)
#define f_settimedate(filename,ctime,cdate) fm_settimedate(filename,ctime,cdate)
#define f_delete(filename) fm_delete(filename)

#define f_getattr(filename,attr) fm_getattr(filename,attr)
#define f_setattr(filename,attr) fm_setattr(filename,attr)

#define f_getlabel(drivenum,label,len) fm_getlabel(drivenum,label,len)
#define f_setlabel(drivenum,label) fm_setlabel(drivenum,label)

#define f_get_oem(drivenum,str,maxlen) fm_get_oem(drivenum,str,maxlen)

extern void f_releaseFS(long);


#ifdef HCC_UNICODE
extern int fn_wgetcwd(F_MULTI *fm,wchar *buffer, int maxlen );
extern int fn_wgetdcwd(F_MULTI *fm,int drivenum, wchar *buffer, int maxlen );
extern int fn_wchdir(F_MULTI *fm,const wchar *dirname);
extern int fn_wmkdir(F_MULTI *fm,const wchar *dirname);
extern int fn_wrmdir(F_MULTI *fm,const wchar *dirname);
extern int fn_wfindfirst(F_MULTI *fm,const wchar *filename,F_WFIND *find);
extern int fn_wfindnext(F_MULTI *fm,F_WFIND *find);
extern int fn_wrename(F_MULTI *fm,const wchar *filename, const wchar *newname);
extern long fn_wfilelength(F_MULTI *fm,const wchar *filename);
extern F_FILE *fn_wopen(F_MULTI *fm,const wchar *filename,const wchar *mode);
extern F_FILE *fn_wtruncate(F_MULTI *fm,const wchar *filename,unsigned long length);
extern int fn_wgettimedate(F_MULTI *fm,const wchar *filename,unsigned short *pctime,unsigned short *pcdate);
extern int fn_wsettimedate(F_MULTI *fm,const wchar *filename,unsigned short ctime,unsigned short cdate);
extern int fn_wdelete(F_MULTI *fm,const wchar *filename);
extern int fn_wgetattr(F_MULTI *fm,const wchar *filename,unsigned char *attr);
extern int fn_wsetattr(F_MULTI *fm,const wchar *filename,unsigned char attr);
#define f_wgetcwd(buffer,maxlen) fm_wgetcwd(buffer,maxlen)
#define f_wgetdcwd(drivenum,buffer,maxlen) fm_wgetdcwd(drivenum,buffer,maxlen)
#define f_wchdir(dirname) fm_wchdir(dirname)
#define f_wmkdir(dirname) fm_wmkdir(dirname)
#define f_wrmdir(dirname) fm_wrmdir(dirname)
#define f_wfindfirst(filename,find) fm_wfindfirst(filename,find)
#define f_wfindnext(find) fm_wfindnext(find)
#define f_wrename(filename,newname) fm_wrename(filename,newname)
#define f_wfilelength(filename) fm_wfilelength(filename)
#define f_wopen(filename,mode) fm_wopen(filename,mode)
#define f_wtruncate(filename,length) fm_wtruncate(filename,length)
#define f_wgettimedate(filename,pctime,pcdate) fm_wgettimedate(filename,pctime,pcdate)
#define f_wsettimedate(filename,ctime,cdate) fm_wsettimedate(filename,ctime,cdate)
#define f_wdelete(filename) fm_wdelete(filename)
#define f_wgetattr(filename,attr) fm_wgetattr(filename,attr)
#define f_wsetattr(filename,attr) fm_wsetattr(filename,attr)
#endif

#define _f_toupper(ch) (((ch)>='a' && (ch)<='z') ? ((ch)-'a'+'A') : (ch))

#ifdef HCC_UNICODE
extern wchar *_towchar(wchar *nconv, const char *s);
#endif
extern int _f_addentry(F_VOLUME *vi,F_NAME *fsname,F_POS *pos,F_DIRENTRY **pde);
extern int _f_getdirsector(F_VOLUME *vi,unsigned long sector);
extern char truncate_tmp[512];

#ifdef __cplusplus
}
#endif

/****************************************************************************
 *
 * end of fat.h
 *
 ***************************************************************************/

#endif /* _FAT_H_ */

