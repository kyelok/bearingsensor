#ifndef _FAT_M_C_
#define _FAT_M_C_

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

#include "fat.h"
#include "common.h"

#if (!F_CAPI_USED) 

/****************************************************************************
 *
 * fm_getversion
 *
 * returns with the filesystem version string
 *
 * RETURNS
 *
 * string pointer with version number
 *
 ***************************************************************************/

char *fm_getversion(void) {
   return fn_getversion();
}

/****************************************************************************
 *
 * fm_initvolume
 *
 * initiate a volume, this function has to be called 1st to set physical
 * driver function to a given volume
 *
 * INPUTS
 *
 * drvnumber - which drive need to be initialized
 * pfunc - function pointer which will be called to get driver functions
 * user_ptr - user pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_initvolume(int drvnumber,F_INITFUNC pfunc,void *user_ptr) {
int ret;
F_MULTI *fm;

	_memset(&g_multi,0,sizeof(g_multi));
	
   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */
   ret=fn_initvolume(fm,drvnumber,pfunc,user_ptr);

   _f_mutex_put(fm);
   return ret;
}

/****************************************************************************
 * fm_checkvolume
 * Deletes a previously initialized volume.
 *
 * INPUT:
 * drvnumber - number of drive to check
 ***************************************************************************/

int fm_checkvolume (int drvnumber)
{
  int ret;
  F_MULTI *fm;

  if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

  ret=fn_checkvolume(fm,drvnumber);

  _f_mutex_put(fm);
  return ret;
}

/****************************************************************************
 * fn_delvolume
 * Deletes a previously initialized volume.
 *
 * INPUT:
 * drvnumber - number of drive to delete
 ***************************************************************************/
int fm_delvolume (int drvnumber)
{
  int ret;
  ret=fn_delvolume(drvnumber);
  return ret;
}


/****************************************************************************
 * Returns the number of mounted volumes
 ***************************************************************************/
int fm_get_volume_count (void)
{
  int ret;
  ret=fn_get_volume_count();
  return ret;
}

/****************************************************************************
 * Returns a list of the mounted volumes
 ***************************************************************************/
int fm_get_volume_list (int *buf)
{
  int ret;
  ret=fn_get_volume_list(buf);
  return ret;
} 


/****************************************************************************
 *
 * fm_hardformat
 *
 * Making a complete format on media, independently from master boot record,
 * according to media physical
 *
 * INPUTS
 *
 * drivenum - which drive low format is needed
 * fattype - one of this definitions F_FAT12_MEDIA,F_FAT16_MEDIA,F_FAT32_MEDIA
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_hardformat(int drivenum,long fattype) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_hardformat(fm,drivenum,fattype);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_format
 *
 * format a media, 1st it checks existing formatting, then master boot record,
 * then media physical
 *
 * INPUTS
 *
 * drivenum - which drive format is needed
 * fattype - one of this definitions F_FAT12_MEDIA,F_FAT16_MEDIA,F_FAT32_MEDIA
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_format(int drivenum,long fattype) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_format(fm,drivenum,fattype);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_getcwd
 *
 * getting a current working directory of current drive
 *
 * INPUTS
 *
 * buffer - where to store current working folder
 * maxlen - buffer length (possible size is F_MAXPATH)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_getcwd(char *buffer, int maxlen ) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_getcwd(fm,buffer,maxlen);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wgetcwd(wchar *buffer, int maxlen ) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wgetcwd(fm,buffer,maxlen);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_getdcwd
 *
 * getting a drive current working directory
 *
 * INPUTS
 *
 * drivenum - drive number of which drive current folder needed
 * buffer - where to store current working folder
 * maxlen - buffer length (possible size is F_MAXPATH)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_getdcwd(int drivenum, char *buffer, int maxlen ) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_getdcwd(fm,drivenum,buffer,maxlen);

   _f_mutex_put(fm);

   return ret;
}


#ifdef HCC_UNICODE
int fm_wgetdcwd(int drivenum, wchar *buffer, int maxlen ) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wgetdcwd(fm,drivenum,buffer,maxlen);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_chdrive
 *
 * Change current drive
 *
 * INPUTS
 *
 * drivenum - new current drive number (0-A, 1-B, ...)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_chdrive(int drivenum) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_chdrive(fm,drivenum);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_getdrive
 *
 * Get current drive number
 *
 * RETURNS
 *
 * with the current drive number (0-A, 1-B,...)
 *
 ***************************************************************************/

int fm_getdrive(void) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return -1; /* busy! */

   ret=fn_getdrive(fm);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_getfreespace
 *
 * get total/free/used/bad diskspace
 *
 * INPUTS
 *
 * drivenum - which drive free space is requested (0-A, 1-B, 2-C)
 * pspace - pointer where to store the information
 *
 * RETURNS
 * error code
 *
 ***************************************************************************/

int fm_getfreespace(int drivenum,F_SPACE *pspace) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY;

   ret=fn_getfreespace(fm,drivenum,pspace);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_chdir
 *
 * change current working directory
 *
 * INPUTS
 *
 * dirname - new working directory name
 *
 * RETURNS
 *
 * 0 - if successfully
 * other - if any error 
 *
 ***************************************************************************/

int fm_chdir(const char *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_chdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wchdir(const wchar *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wchdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_mkdir
 *
 * making a new directory
 *
 * INPUTS
 *
 * dirname - new directory name
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_mkdir(const char *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_mkdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wmkdir(const wchar *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wmkdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}
#endif



/****************************************************************************
 *
 * fm_rmdir
 *
 * Remove directory, only could be removed if empty
 *
 * INPUTS
 *
 * dirname - which directory needed to be removed
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_rmdir(const char *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_rmdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wrmdir(const wchar *dirname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wrmdir(fm,dirname);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_findfirst
 *
 * find a file(s) or directory(s) in directory
 *
 * INPUTS
 *
 * filename - filename (with or without wildcards)
 * find - where to store found file information
 *
 * RETURNS
 *																			 
 * error code or zero if successful
 *																			 
 ***************************************************************************/

int fm_findfirst(const char *filename,F_FIND *find) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_findfirst(fm,filename,find);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wfindfirst(const wchar *filename,F_WFIND *find) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wfindfirst(fm,filename,find);

   _f_mutex_put(fm);

   return ret;
}
#endif

/****************************************************************************
 *
 * fm_findnext
 *
 * find further file(s) or directory(s) in directory
 *
 * INPUTS
 *
 * find - where to store found file information (findfirst should call 1st)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_findnext(F_FIND *find) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_findnext(fm,find);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wfindnext(F_WFIND *find) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wfindnext(fm,find);

   _f_mutex_put(fm);

   return ret;
}
#endif

/****************************************************************************
 *
 * fm_rename
 *
 * Rename file or directory
 *
 * INPUTS
 *
 * filename - filename or directory name (with or without path)
 * newname - new name of the file or directory (without path)
 *
 * RETURNS
 *
 * 0 - if successfully
 * other - if any error 
 *
 ***************************************************************************/

int fm_rename(const char *filename, const char *newname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_rename(fm,filename,newname);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wrename(const wchar *filename, const wchar *newname) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wrename(fm,filename,newname);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_filelength
 *
 * Get a file length
 *
 * INPUTS
 *
 * filename - file whose length is needed
 *
 * RETURNS
 *
 * length of the file
 *
 ***************************************************************************/

long fm_filelength(const char *filename) {
long ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_filelength(fm,filename);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
long fm_wfilelength(const wchar *filename) {
long ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_wfilelength(fm,filename);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_close
 *
 * close a previously opened file
 *
 * INPUTS
 *
 * filehandle - which file needs to be closed
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_close(F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_close(fm,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fn_flush
 *
 * flushing current content a file into physical. 
 *
 * INPUTS
 *
 * filehandle - which file needs to be flushed
 *
 * RETURNS
 *
 * 0 - if successfully
 * other - if any error
 *
 ***************************************************************************/

int fm_flush(F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_flush(fm,filehandle);

   _f_mutex_put(fm);

   return ret;
}


/****************************************************************************
 *
 * fm_open
 *
 * open a file for reading/writing/appending
 *
 * INPUTS
 *
 * filename - which file need to be opened
 * mode - string how to open ("r"-read, "w"-write, "w+"-overwrite, "a"-append
 *
 * RETURNS
 *
 * F_FILE pointer if successfully
 * 0 - if any error
 *
 ***************************************************************************/

F_FILE *fm_open(const char *filename,const char *mode) {
F_FILE *ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_open(fm,filename,mode);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
F_FILE *fm_wopen(const wchar *filename,const wchar *mode) {
F_FILE *ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_wopen(fm,filename,mode);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_read
 *
 * read data from file
 *
 * INPUTS
 *
 * buf - where the store data 
 * size - size of items to be read
 * size_st - number of items need to be read
 * filehandle - file where to read from
 *
 * RETURNS
 *
 * with the number of read bytes
 *
 ***************************************************************************/

long fm_read(void *buf,long size,long size_st,F_FILE *filehandle) {
long ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_read(fm,buf,size,size_st,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_write
 *
 * write data into file
 *
 * INPUTS
 *
 * buf - where the store data 
 * size - size of items to be read
 * size_st - number of items need to be read
 * filehandle - file where to read from
 *
 * RETURNS
 *
 * with the number of written bytes
 *
 ***************************************************************************/

long fm_write(const void *buf,long size,long size_st,F_FILE *filehandle) {
long ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_write(fm,buf,size,size_st,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_seek
 *
 * moves position into given offset in given file
 *
 * INPUTS
 *
 * filehandle - F_FILE structure which file position needed to be modified
 * offset - relative position 
 * whence - where to calculate position (F_SEEK_SET,F_SEEK_CUR,F_SEEK_END)
 *
 * RETURNS
 *
 * 0 - if successfully
 * other - if any error 
 *
 ***************************************************************************/

int fm_seek(F_FILE *filehandle,long offset,long whence) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_seek(fm,filehandle,offset,whence);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_tell
 *
 * Tells the current position of opened file
 *
 * INPUTS
 *
 * filehandle - which file needs the position
 *
 * RETURNS
 *
 * position in the file from start
 *
 ***************************************************************************/

long fm_tell(F_FILE *filehandle) {
   long ret;
   ret=fn_tell(filehandle);
   return ret;
}

/****************************************************************************
 *
 * fm_getc
 *
 * get a character from file
 *
 * INPUTS
 *
 * filehandle - file where to read from
 *
 * RETURNS
 *
 * with the read character or -1 if read was not successfully 
 *
 ***************************************************************************/

int fm_getc(F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return -1; /* busy! */

   ret=fn_getc(fm,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_putc
 *
 * write a character into file
 *
 * INPUTS
 *
 * ch - what to write into file
 * filehandle - file where to write
 *
 * RETURNS
 *
 * with the written character or -1 if any error
 *
 ***************************************************************************/

int fm_putc(int ch,F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return -1; /* busy! */

   ret=fn_putc(fm,ch,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_rewind
 *
 * set the fileposition in the opened file to the begining
 *
 * INPUTS
 *
 * filehandle - which file needs to be rewinded
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_rewind(F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_rewind(fm,filehandle);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_eof
 *
 * Tells if the current position is end of file or not
 *
 * INPUTS
 *
 * filehandle - which file needs the checking
 *
 * RETURNS
 *
 * 0 - if not EOF
 * other - if EOF or invalid file handle
 *
 ***************************************************************************/

int fm_eof(F_FILE *filehandle) {
   int ret;
   ret=fn_eof(filehandle);
   return ret;
}


/****************************************************************************
 *
 * fm_gettimedate
 *
 * get a file time and date
 *
 * INPUTS
 *
 * filename - which file time and date wanted to be retrive
 * pctime - ctime of the file where to store
 * pcdate - cdate of the file where to store
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_gettimedate(const char *filename,unsigned short *pctime,unsigned short *pcdate) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_gettimedate(fm,filename,pctime,pcdate);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wgettimedate(const wchar *filename,unsigned short *pctime,unsigned short *pcdate) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wgettimedate(fm,filename,pctime,pcdate);

   _f_mutex_put(fm);

   return ret;
}
#endif



/****************************************************************************
 *
 * fm_settimedate
 *
 * set a file time and date
 *
 * INPUTS
 *
 * filename - which file time and date wanted to be set
 * ctime - new ctime of the file
 * cdate - new cdate of the file
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_settimedate(const char *filename,unsigned short ctime,unsigned short cdate) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_settimedate(fm,filename,ctime,cdate);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wsettimedate(const wchar *filename,unsigned short ctime,unsigned short cdate) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wsettimedate(fm,filename,ctime,cdate);

   _f_mutex_put(fm);

   return ret;
}
#endif



/****************************************************************************
 *
 * fm_delete
 *
 * delete a file 
 *
 * INPUTS
 *
 * filename - file which wanted to be deleted (with or without path)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_delete(const char *filename) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_delete(fm,filename);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wdelete(const wchar *filename) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wdelete(fm,filename);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_getattr
 *
 * get file attribute
 *
 * INPUTS
 *
 * filename - which file attribute is needed
 * attr - pointer to a characterter where to store attribute information
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_getattr(const char *filename,unsigned char *attr) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_getattr(fm,filename,attr);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wgetattr(const wchar *filename,unsigned char *attr) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wgetattr(fm,filename,attr);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 * fm_setattr
 *
 * set attribute of a file
 *
 * INPUTS
 *
 * filename - which file attribute set
 * attr - new attribute of the file
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_setattr(const char *filename,unsigned char attr) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_setattr(fm,filename,attr);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
int fm_wsetattr(const wchar *filename,unsigned char attr) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_wsetattr(fm,filename,attr);

   _f_mutex_put(fm);

   return ret;
}
#endif



/****************************************************************************
 *
 * fm_getlabel
 *
 * get a label of a media
 *
 * INPUTS
 *
 * drivenum - drive number which label's is needed
 * label - char pointer where to store label
 * len - length of label buffer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_getlabel(int drivenum, char *label, long len) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_getlabel(fm,drivenum,label,len);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fm_setlabel
 *
 * set a label of a media
 *
 * INPUTS
 *
 * drivenum - drive number which label's need to be set
 * label - new label for the media
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_setlabel(int drivenum, const char *label) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_setlabel(fm,drivenum,label);

   _f_mutex_put(fm);

   return ret;
}

/****************************************************************************
 *
 * fn_truncate
 *
 * truncate a file to a specified length, filepointer will be set to the 
 * end
 *
 * INPUTS
 *
 * filename - which file need to be truncated
 * length - length of new file
 *
 * RETURNS
 *
 * filepointer or zero if fails
 *
 ***************************************************************************/

F_FILE *fm_truncate(const char *filename,unsigned long length) {
F_FILE *ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_truncate(fm,filename,length);

   _f_mutex_put(fm);

   return ret;
}

#ifdef HCC_UNICODE
F_FILE *fm_wtruncate(const wchar *filename,unsigned long length) {
F_FILE *ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return 0; /* busy! */

   ret=fn_wtruncate(fm,filename,length);

   _f_mutex_put(fm);

   return ret;
}
#endif


/****************************************************************************
 *
 *  fm_get_oem
 *
 *  Get OEM name
 *
 ***************************************************************************/
int fm_get_oem (int drivenum, char *str, long maxlen) 
{
  F_MULTI *fm;
  int ret;

  if (fnSetTask(&fm)) return 0; /* busy! */
  ret=fn_get_oem(fm,drivenum,str,maxlen);
  _f_mutex_put(fm);
  return ret;
}


/****************************************************************************
 *
 * fm_seteof
 *
 * set end of file at the current position
 *
 * INPUTS
 *
 * filehandle - file where to read from
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fm_seteof(F_FILE *filehandle) {
int ret;
F_MULTI *fm;

   if (fnSetTask(&fm)) return F_ERR_BUSY; /* busy! */

   ret=fn_seteof(fm,filehandle);

   _f_mutex_put(fm);

   return ret;
}


/****************************************************************************
 *
 * end of fat_m.c
 *
 ***************************************************************************/

#endif /* !F_CAPI_USED */

#endif /* _FAT_M_C_ */

