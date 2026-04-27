#ifndef _COMMON_C_
#define _COMMON_C_

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

//#include <stdio.h>
#include <string.h>
#include "pccli.h"
#include "fat.h"
#include "port.h"
#include "common.h"

/****************************************************************************
 *
 * only one variable is used
 *
 ***************************************************************************/
#pragma DATA_SECTION(f_filesystem, ".filesystem");
F_FILESYSTEM f_filesystem;
unsigned long MagicNumber=0;
unsigned char f_filesystem_initialized=0;

#if (!F_CAPI_USED) 
#ifdef USE_MALLOC
F_MULTI *g_multi[F_MAXTASK];		/* for multi-task access */
#else
F_MULTI g_multi[F_MAXTASK];		/* for multi-task access */
#endif
#endif

/* Defines the number of sectors per cluster on a sector number basis */
typedef struct {
  unsigned long max_sectors;
  unsigned char sector_per_cluster;
} t_FAT32_CS;

static const t_FAT32_CS FAT32_CS[]={
  { 0x00020000, 1 },	/* ->64MB */
  { 0x00040000, 2 },	/* ->128MB */
  { 0x00080000, 4 },	/* ->256MB */
  { 0x01000000, 8 },	/* ->8GB */
  { 0x02000000, 16 },	/* ->16GB */
  { 0x0ffffff0, 32 }	/* -> ... */
};

/****************************************************************************
 *
 * fn_getversion
 *
 * returns with the filesystem version string
 *
 * RETURNS
 *
 * string pointer with version number
 *
 ***************************************************************************/

char *fn_getversion(void) {
#ifndef HCC_UNICODE
#if (!F_LONGFILENAME)
	return (char*)("HCC_FAT ver:2.85");
#else
	return (char*)("HCC_FAT_LFN ver:2.85");
#endif
#else
	return (char*)("HCC_FAT_LFN_UNI ver:2.85");
#endif
}


/****************************************************************************
 *
 * _f_getword
 *
 * get a word 16bit number from a memory (it uses LITTLE ENDIAN mode always)
 *
 * INPUTS
 *
 * ptr - pointer where data is
 *
 * RETURNS
 *
 * word number
 *
 ***************************************************************************/

unsigned short _f_getword(void *ptr) {
unsigned char *sptr=(unsigned char*)ptr;
unsigned short ret;	
	ret=(unsigned short)(sptr[1]&0xff);
	ret<<=8;
	ret|=(sptr[0]&0xff);
	return ret;
}

/****************************************************************************
 *
 * _f_setword
 *
 * set a word 16bit number into a memory (it uses LITTLE ENDIAN mode always)
 *
 * INPUTS
 *
 * ptr - where to store data
 * num - 16 bit number to store
 *
 ***************************************************************************/

void _f_setword(void *ptr,unsigned short num) {
unsigned char *sptr=(unsigned char*)ptr;
	sptr[1]=(unsigned char)((num>>8) & 0xff);
	sptr[0]=(unsigned char)(num & 0xff);
}

/****************************************************************************
 *
 * _f_getlong
 *
 * get a long 32bit number from a memory (it uses LITTLE ENDIAN mode always)
 *
 * INPUTS
 *
 * ptr - pointer where data is
 *
 * RETURNS
 *
 * long number
 *
 ***************************************************************************/

unsigned long _f_getlong(void *ptr) {
unsigned char *sptr=(unsigned char*)ptr;
unsigned long ret;	
	ret=(sptr[3]&0xff);
	ret<<=8;
	ret|=(sptr[2]&0xff);
	ret<<=8;
	ret|=(sptr[1]&0xff);
	ret<<=8;
	ret|=(sptr[0]&0xff);
	return ret;
}

/****************************************************************************
 *
 * _f_setlong
 *
 * set a long 32bit number into a memory (it uses LITTLE ENDIAN mode always)
 *
 * INPUTS
 *
 * ptr - where to store data
 * num - 32 bit number to store
 *
 ***************************************************************************/

void _f_setlong(void *ptr,unsigned long num) {
unsigned char *sptr=(unsigned char*)ptr;
	sptr[3]=(unsigned char)((num>>24)&0xff);
	sptr[2]=(unsigned char)((num>>16)&0xff);
	sptr[1]=(unsigned char)((num>>8)&0xff);
	sptr[0]=(unsigned char)((num)&0xff);
}

/****************************************************************************
 *
 * _getchar
 *
 * get characters from memory
 *
 * INPUTS
 *
 * array - where to store read data
 * num - number of characters
 * ptr - where to read from
 *
 * RETURNS
 *
 * read pointer new position
 *
 ***************************************************************************/

static unsigned char *_getchar(unsigned char *array,long num,unsigned char *ptr) {

   if (!array) return ptr+num;

   while (num--) {
      *array++=*ptr++;
   }
   return ptr;
}

/****************************************************************************
 *
 * _getword
 *
 * get a 16bit number from memory
 *
 * INPUTS
 *
 * num - pointer where to store 16 bit read number
 * ptr - where to get the value from
 *
 * RETURNS
 *
 * read pointer new position
 *
 ***************************************************************************/

static unsigned char *_getword(unsigned short *num,unsigned char *ptr) {
	*num=_f_getword(ptr);
   return ptr+2;
}

/****************************************************************************
 *
 * _getlong
 *
 * get a 32bit number from memory
 *
 * INPUTS
 *
 * num - pointer where to store 32 bit read number
 * ptr - where to get the value from
 *
 * RETURNS
 *
 * read pointer new position
 *
 ***************************************************************************/

static unsigned char *_getlong(unsigned long *num,unsigned char *ptr) {
   *num=_f_getlong(ptr);
   return ptr+4;
}

/****************************************************************************
 *
 * _f_checkstatus
 *
 * checking a volume driver status, if media is removed or has been changed
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_checkstatus(F_VOLUME *vi) {
	if (vi->func.getstatus) {
		long status=vi->func.getstatus(vi->func.user_ptr);
		if (status & (F_ST_MISSING|F_ST_CHANGED)) {
			vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
			//ajb removed
			//return F_ERR_CARDREMOVED;
		}
	}
	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_writesector
 *
 * write sector data on a volume, it calls low level driver function, it
 * writes a complete sector
 *
 * INPUTS
 *
 * vi - volume pointer
 * data - data pointer where the data is
 * sector - which physical sector
 * cnt - number of sectors to write (max. 256)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_writesector(F_VOLUME *vi,void *data, unsigned long sector, int cnt) {
int ret=0;
int retry;
int i;

   if (!vi) return F_ERR_INVALIDDRIVE;

   if (!vi->func.writesector) {
      vi->state=F_STATE_NEEDMOUNT; /* no write function */
      return F_ERR_ACCESSDENIED;
   }


   if (vi->func.getstatus) {
		long status=vi->func.getstatus(vi->func.user_ptr);
		if (status & (F_ST_MISSING|F_ST_CHANGED)) {
			vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
			return F_ERR_CARDREMOVED;
		}
      if (status & (F_ST_WRPROTECT)) {
         vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
         return F_ERR_WRITEPROTECT;
      }
   }

   if (!vi->func.writemultiplesector || cnt==1)
   {
     for (i=0;i<cnt;i++)
     {
       for (retry=3; retry; retry--) {
     	 ret=vi->func.writesector((char *)data+i*F_SECTOR_SIZE,sector+i,vi->func.user_ptr);
     	 if (!ret) break;
   	 if (ret==-1) {
   	 	vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
   	 	return F_ERR_CARDREMOVED;
   	 }
       }
       if (ret) break;
     }

     if (i==cnt) return F_NO_ERROR;
   }
   else
   {
     for (retry=3; retry; retry--) {
       ret=vi->func.writemultiplesector(data,sector,cnt,vi->func.user_ptr);
       if (!ret) return F_NO_ERROR; 
       if (ret==-1) {
      	 vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
    	 return F_ERR_CARDREMOVED;
       }
     }
   }

   ret=_f_checkstatus(vi);
   if (ret) return ret;

   return F_ERR_ONDRIVE;
}

/****************************************************************************
 *
 * _f_readsector
 *
 * read sector data from a volume, it calls low level driver function, it
 * reads a complete sector
 *
 * INPUTS
 *
 * vi - volume pointer
 * data - data pointer where store data
 * sector - which physical sector is read
 * cnt - number of sectors to read (max. 256)
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
int _f_readsector(F_VOLUME *vi,void *data, unsigned long sector,int cnt) 
{
   int retry;
   int ret;
   int i;

   if (!vi) return F_ERR_INVALIDDRIVE;
  
   if (!vi->func.readsector) return F_ERR_ACCESSDENIED;

   ret=_f_checkstatus(vi);
   if (ret) return ret;

   if (!vi->func.readmultiplesector || cnt==1)
   {
     for (i=0;i<cnt;i++)
     {
       for (retry=3; retry; retry--) 
       {
         ret=vi->func.readsector((char *)data+i*F_SECTOR_SIZE,sector+i,vi->func.user_ptr);
         if (!ret) break;

         if (ret==-1) 
         {
           vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
           return F_ERR_CARDREMOVED;
         } 
       }
       if (ret) break;
     }

     if (i==cnt) return F_NO_ERROR;
   }
   else
   {
     for (retry=3; retry; retry--) 
     {
       ret=vi->func.readmultiplesector(data,sector,cnt,vi->func.user_ptr);
       if (!ret) return F_NO_ERROR; 
       if (ret==-1) 
       {
         vi->state=F_STATE_NEEDMOUNT; /* card has been removed; */
         return F_ERR_CARDREMOVED;
       }
     } 
   }

   ret=_f_checkstatus(vi);
   if (ret) return ret;

   return F_ERR_ONDRIVE;
}


#ifdef INTERNAL_MEMFN
/****************************************************************************
 *
 * _f_memset
 *
 * standard memory set into a value
 *
 * INPUTS
 *
 * d - destination address
 * fill - what char used to fill
 * len - length of copied data
 *
 ***************************************************************************/
void *_f_memset(void *d, int fill, unsigned long len) {
char *dc=(char*)d;
    while(len--) {
      *dc++=(unsigned char)fill;
    }
    return d;
}



/****************************************************************************
 *
 * _f_memcpy
 *
 * standard memory copy
 *
 * INPUTS
 *
 * d - destination address
 * s - source address
 * len - length of copied data
 *
 ***************************************************************************/

void *_f_memcpy(void *d, void *s, unsigned long len) {
char *dc=(char*)d;
char *sc=(char*)s;
    while(len--) {
      *dc++=*sc++;
    }
    return d;
}
#endif


/****************************************************************************
 *
 * _f_getmaxcluster
 *
 * calculate the maximum cluster number from boot record
 *
 * INPUTS
 *
 * vi - volume info
 *
 * RETURNS
 *
 * maximum number of clusters
 *
 ***************************************************************************/

unsigned long _f_getmaxcluster(F_VOLUME *vi) {
unsigned long maxcluster=vi->bootrecord.number_of_sectors_less32;
	if (!maxcluster) maxcluster=vi->bootrecord.number_of_sectors;
	maxcluster-=vi->data.sector;
	maxcluster+=vi->bootrecord.number_of_hidden_sectors; /* out of calc! */
	maxcluster/=vi->bootrecord.sector_per_cluster;

	return maxcluster;
}

/****************************************************************************
 *
 * _f_buildsectors
 *
 * calculate relative sector position from boot record
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 ***************************************************************************/

static void _f_buildsectors(F_VOLUME *vi) {
unsigned char a;
F_BOOTRECORD *bootrecord=&vi->bootrecord;

   vi->mediatype=F_UNKNOWN_MEDIA;

   vi->firstfat.sector=bootrecord->reserved_sectors;
   vi->firstfat.sector+=bootrecord->number_of_hidden_sectors; /* maybe partioned */

   if (bootrecord->sector_per_FAT) {
	   vi->firstfat.num=bootrecord->sector_per_FAT;

	   vi->root.sector=vi->firstfat.sector;
	   for (a=0; a<bootrecord->number_of_FATs;a++) {
		   	vi->root.sector+=vi->firstfat.num;
	   }

	   vi->root.num=bootrecord->max_root_entry;
	   vi->root.num*=sizeof(F_DIRENTRY);
	   vi->root.num/=F_SECTOR_SIZE;

	   vi->data.sector=vi->root.sector+vi->root.num;
	   vi->data.num=0; /* ?? */
   }
   else {
	   vi->firstfat.num=bootrecord->sector_per_FAT32;

	   vi->data.sector=vi->firstfat.sector;
	   for (a=0; a<bootrecord->number_of_FATs;a++) {
		   	vi->data.sector+=vi->firstfat.num;
	   }
	   vi->data.num=0; /* ?? */

	   {
	 	 unsigned long sectorcou=bootrecord->sector_per_cluster;
	 	 vi->root.sector=bootrecord->rootcluster;
	 	 vi->root.sector-=2;
	 	 vi->root.sector*=sectorcou;
	 	 vi->root.sector+=vi->data.sector;
		 vi->root.num=bootrecord->sector_per_cluster;
	   }
   }

   if (_f_getmaxcluster(vi)<0xff0UL) {
	   vi->mediatype=F_FAT12_MEDIA;
   }
   else if (_f_getmaxcluster(vi)<0xfff0UL) {
	   vi->mediatype=F_FAT16_MEDIA;
   }
   else {
	   vi->mediatype=F_FAT32_MEDIA;
   }
}




/****************************************************************************
 *
 * _f_readbootrecord
 *
 * read boot record from a volume, it detects if there is MBR on the media
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

static int _f_readbootrecord(F_VOLUME *vi) {
int ret;
unsigned char *ptr=f_filesystem.sectorbuffer;
F_BOOTRECORD *f_bootrecord=&vi->bootrecord;
unsigned long sector=0;

   (void)_memset(f_bootrecord,0,sizeof(F_BOOTRECORD));

   ret=_f_readsector(vi,ptr,0,1);
   if (ret) return ret;

   if (((ptr[0x1fe]&0x00FF)!=0x55) && ((ptr[0x1ff]&0x00FF)!=0xaa)) return F_ERR_NOTFORMATTED; /* ?? */

   if ((ptr[0]!=0xeb) && (ptr[0]!=0xe9)) {

	   sector=_f_getlong(&ptr [0x08+0x1be] ); /* start sector for 1st partioon */

       ret=_f_readsector(vi,ptr,sector,1);

	   if (ret) return ret;

	   if ((ptr[0x1fe]!=0x55) && (ptr[0x1ff]!=0xaa)) return F_ERR_NOTFORMATTED; /* ?? */

	   if ((ptr[0]!=0xeb) && (ptr[0]!=0xe9)) return F_ERR_NOTFORMATTED; /* ?? */
   }

   ptr=_getchar(f_bootrecord->jump_code,sizeof(f_bootrecord->jump_code),ptr);
   ptr=_getchar(f_bootrecord->OEM_name,sizeof(f_bootrecord->OEM_name),ptr);
   ptr=_getword(&f_bootrecord->bytes_per_sector,ptr);
   if (f_bootrecord->bytes_per_sector!=F_SECTOR_SIZE) {
      vi->mediatype=F_UNKNOWN_MEDIA;
      return F_ERR_NOTSUPPSECTORSIZE;
   }

   f_bootrecord->sector_per_cluster=*ptr++;
   ptr=_getword(&f_bootrecord->reserved_sectors,ptr);
   f_bootrecord->number_of_FATs=*ptr++;
   ptr=_getword(&f_bootrecord->max_root_entry,ptr);
   ptr=_getword(&f_bootrecord->number_of_sectors_less32,ptr);
   f_bootrecord->media_descriptor=*ptr++;
   ptr=_getword(&f_bootrecord->sector_per_FAT,ptr);
   ptr=_getword(&f_bootrecord->sector_per_Track,ptr);
   ptr=_getword(&f_bootrecord->number_of_heads,ptr);
   ptr=_getlong(&f_bootrecord->number_of_hidden_sectors,ptr);

   if (f_bootrecord->number_of_hidden_sectors<sector) 
   {
     f_bootrecord->number_of_hidden_sectors=sector;
   }

   ptr=_getlong(&f_bootrecord->number_of_sectors,ptr);
/*  */
   if (f_bootrecord->sector_per_FAT) { /* this is 0 on FAT32, but better to check */
		_f_buildsectors(vi);
   }
   else vi->mediatype=F_FAT32_MEDIA;

   if (vi->mediatype==F_FAT32_MEDIA) {
		ptr=_getlong(&f_bootrecord->sector_per_FAT32,ptr);
		ptr=_getword(&f_bootrecord->extflags,ptr);
		ptr=_getword(&f_bootrecord->fsversion,ptr);
		ptr=_getlong(&f_bootrecord->rootcluster,ptr);
		ptr=_getword(&f_bootrecord->fsinfo,ptr);
		ptr=_getword(&f_bootrecord->bkbootsec,ptr);
		ptr=_getchar(f_bootrecord->reserved,sizeof(f_bootrecord->reserved),ptr);

	   ptr=_getword(&f_bootrecord->logical_drive_num,ptr);
	   f_bootrecord->extended_signature=*ptr++;
	   ptr=_getlong(&f_bootrecord->serial_number,ptr);
	   ptr=_getchar(f_bootrecord->volume_name,sizeof(f_bootrecord->volume_name),ptr);
	   ptr=_getchar(f_bootrecord->FAT_name,sizeof(f_bootrecord->FAT_name),ptr);
	   ptr=_getchar(0,448-28,ptr); /* smaller!! */
	   ptr=_getchar(f_bootrecord->executable_marker,sizeof(f_bootrecord->executable_marker),ptr);
   }
   else {
	   ptr=_getword(&f_bootrecord->logical_drive_num,ptr);
	   f_bootrecord->extended_signature=*ptr++;
	   ptr=_getlong(&f_bootrecord->serial_number,ptr);
	   ptr=_getchar(f_bootrecord->volume_name,sizeof(f_bootrecord->volume_name),ptr);
	   ptr=_getchar(f_bootrecord->FAT_name,sizeof(f_bootrecord->FAT_name),ptr);
	   ptr=_getchar(0,448,ptr);
	   ptr=_getchar(f_bootrecord->executable_marker,sizeof(f_bootrecord->executable_marker),ptr);
   }

   if (f_bootrecord->media_descriptor!=0xf8) {     /* fixdrive */
	   if (f_bootrecord->media_descriptor!=0xf0) { /* removable */
		   return F_ERR_NOTFORMATTED; /* ?? */
	   }
   }

   return F_NO_ERROR;
}

/****************************************************************************
 *
 * _setcharzero
 *
 * fills with zero charater to memory
 *
 * INPUTS
 *
 * num - number of characters
 * ptr - where to store data
 *
 * RETURNS
 *
 * last write position
 *
 ***************************************************************************/

static unsigned char *_setcharzero(long num,unsigned char *ptr) {
   while (num--) {
      *ptr++=0;
   }
   return ptr;
}

/****************************************************************************
 *
 * _setchar
 *
 * copy a charater string to memory
 *
 * INPUTS
 *
 * array - original code what to copy
 * num - number of characters
 * ptr - where to store data
 *
 * RETURNS
 *
 * last write position
 *
 ***************************************************************************/

static unsigned char *_setchar(unsigned char *array,long num,unsigned char *ptr) {

   if (!array) return _setcharzero(num,ptr);

   while (num--) {
      *ptr++=*array++;
   }
   return ptr;
}


/****************************************************************************
 *
 * _setword
 *
 * store a 16bit word into memory
 *
 * INPUTS
 *
 * num - 16bit number to store
 * ptr - where to store data
 *
 * RETURNS
 *
 * last write position
 *
 ***************************************************************************/

static unsigned char *_setword(unsigned short num,unsigned char *ptr) {
   _f_setword(ptr,num);
   return ptr+2;
}

/****************************************************************************
 *
 * _setlong
 *
 * store a 32bit long number into memory
 *
 * INPUTS
 *
 * num - 32bit number to store
 * ptr - where to store data
 *
 * RETURNS
 *
 * last write position
 *
 ***************************************************************************/

static unsigned char *_setlong(unsigned long num,unsigned char *ptr) {
   _f_setlong(ptr,num);
   return ptr+4;
}


/****************************************************************************
 *
 * _f_writebootrecord
 *
 * writing boot record onto a volume, it uses number of hidden sector variable
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

static int _f_writebootrecord(F_VOLUME *vi) {
unsigned char *ptr=f_filesystem.sectorbuffer;
F_BOOTRECORD *f_bootrecord=&vi->bootrecord;
int ret;

   if (vi->mediatype==F_FAT32_MEDIA) { /* write FS_INFO */
      unsigned short a;

      (void)_memset((void *)f_filesystem.sectorbuffer,0,sizeof(f_filesystem.sectorbuffer));

      for (a=0; a<f_bootrecord->reserved_sectors; a++) {
         ret=_f_writesector(vi,f_filesystem.sectorbuffer,f_bootrecord->number_of_hidden_sectors+a,1); /* erase reserved area */
         if (ret) return ret;
      }
      
      ptr=_setlong(0x41615252UL,ptr); /* signature */
      ptr=_setcharzero(480,ptr);        /* reserved */
      ptr=_setlong(0x61417272UL,ptr); /* signature   */
      ptr=_setlong(0xffffffffUL,ptr); /* no last */
      ptr=_setlong(0xffffffffUL,ptr); /* no hint */
      ptr=_setcharzero(12,ptr);         /* reserved */
      ptr=_setlong(0xaa550000UL,ptr); /* trail */

      ret=_f_writesector(vi,f_filesystem.sectorbuffer,f_bootrecord->number_of_hidden_sectors+f_bootrecord->fsinfo,1); /* write FSINFO */
      if (ret) return ret;

      ret=_f_writesector(vi,f_filesystem.sectorbuffer,f_bootrecord->number_of_hidden_sectors+f_bootrecord->fsinfo+f_bootrecord->bkbootsec,1); /* write FSINFO */
      if (ret) return ret;
   }


   ptr=f_filesystem.sectorbuffer;

   ptr=_setchar(f_bootrecord->jump_code,sizeof(f_bootrecord->jump_code),ptr);
   ptr=_setchar(f_bootrecord->OEM_name,sizeof(f_bootrecord->OEM_name),ptr);
   ptr=_setword(f_bootrecord->bytes_per_sector,ptr);
   *ptr++=f_bootrecord->sector_per_cluster;
   ptr=_setword(f_bootrecord->reserved_sectors,ptr);
   *ptr++=f_bootrecord->number_of_FATs;
   ptr=_setword(f_bootrecord->max_root_entry,ptr);
   ptr=_setword(f_bootrecord->number_of_sectors_less32,ptr);
   *ptr++=f_bootrecord->media_descriptor;
   ptr=_setword(f_bootrecord->sector_per_FAT,ptr);
   ptr=_setword(f_bootrecord->sector_per_Track,ptr);
   ptr=_setword(f_bootrecord->number_of_heads,ptr);
   ptr=_setlong(f_bootrecord->number_of_hidden_sectors,ptr);
   ptr=_setlong(f_bootrecord->number_of_sectors,ptr);

   if (vi->mediatype==F_FAT32_MEDIA) {

		ptr=_setlong(f_bootrecord->sector_per_FAT32,ptr);
		ptr=_setword(f_bootrecord->extflags,ptr);   /* ? */
		ptr=_setword(f_bootrecord->fsversion,ptr);  /* ? */
		ptr=_setlong(f_bootrecord->rootcluster,ptr); /* ? */
		ptr=_setword(f_bootrecord->fsinfo,ptr);      /* ? */
		ptr=_setword(f_bootrecord->bkbootsec,ptr);   /* ? */
		ptr=_setchar(f_bootrecord->reserved,sizeof(f_bootrecord->reserved),ptr); /* ? */

      ptr=_setword(f_bootrecord->logical_drive_num,ptr);
      *ptr++=f_bootrecord->extended_signature;
      ptr=_setlong(f_bootrecord->serial_number,ptr);
      ptr=_setchar(f_bootrecord->volume_name,sizeof(f_bootrecord->volume_name),ptr);
      ptr=_setchar(f_bootrecord->FAT_name,sizeof(f_bootrecord->FAT_name),ptr);
      ptr=_setchar(0,448-28,ptr); /* smaller!! */
      ptr=_setchar(f_bootrecord->executable_marker,sizeof(f_bootrecord->executable_marker),ptr);

      ret=_f_writesector(vi,f_filesystem.sectorbuffer,f_bootrecord->number_of_hidden_sectors+f_bootrecord->bkbootsec,1); /* write backup */
      if (ret) return ret;
   }
   else {
      ptr=_setword(f_bootrecord->logical_drive_num,ptr);
      *ptr++=f_bootrecord->extended_signature;
      ptr=_setlong(f_bootrecord->serial_number,ptr);
      ptr=_setchar(f_bootrecord->volume_name,sizeof(f_bootrecord->volume_name),ptr);
      ptr=_setchar(f_bootrecord->FAT_name,sizeof(f_bootrecord->FAT_name),ptr);
      ptr=_setchar(0,448,ptr); 
      ptr=_setchar(f_bootrecord->executable_marker,sizeof(f_bootrecord->executable_marker),ptr);
   }

   return _f_writesector(vi,f_filesystem.sectorbuffer,f_bootrecord->number_of_hidden_sectors,1); /* write bootrecord */
}

#ifdef FATCACHE_ENABLE
/********************************************************************************
 * _f_fatcache_flush
 * Flush the required amount of cached fat sectors.
 *
 * INPUT:
 *	vi - volume information
 *	cnt - number of items to write
 *	clear - 1:also delete written entries, 0:leave entries in cache
 *
 * OUTPUT:
 *	F_NO_ERROR - on success
 *	other - on error
 *******************************************************************************/
int _f_fatcache_flush (F_VOLUME *vi, int clear)
{
  int a;
  int i,j;

  if (vi->fatcache.N)
  {
    j=0;
    do {
      for (i=j;i<vi->fatcache.N && (vi->fatcache.dsc+i)->modified==0;i++);
      if (i<vi->fatcache.N)
      {
        for (j=i+1;j<vi->fatcache.N && (vi->fatcache.dsc+j)->modified 
                   && (vi->fatcache.dsc+(j-1))->sector+1==(vi->fatcache.dsc+j)->sector;j++);
        {
          unsigned long fatsector=(vi->fatcache.dsc+i)->sector;
          for (a=0;a<vi->bootrecord.number_of_FATs;a++)
          {
            int ret=_f_writesector(vi,(vi->fatcache.data)+(i*F_SECTOR_SIZE),fatsector,j-i);
            if (ret) return ret;
            fatsector+=vi->firstfat.num;
          }
        }

        for (a=i;a<j;(vi->fatcache.dsc+a++)->modified=0);
      }
    } while (i<vi->fatcache.N);

    if (clear)
    {
      vi->fatcache.N=0;
      vi->fatsector=(unsigned long)(-1);
    }
  }

  vi->fatmodified=0;

  return F_NO_ERROR;
}  


/****************************************************************************
 *
 * _f_writefatsector
 *
 * writing fat sector into volume, this function check if fat was modified
 * and writes data to the cache
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_writefatsector(F_VOLUME *vi)
{
  int pos;

  if (vi->fatmodified) 
  {
    unsigned long fatsector=vi->firstfat.sector+vi->fatsector;

    if (vi->fatsector>=vi->firstfat.num) return F_ERR_INVALIDSECTOR;

    for (pos=0;pos<vi->fatcache.N && (vi->fatcache.dsc+pos)->sector!=fatsector;pos++);
    if (pos==vi->fatcache.N) return F_ERR_NOTFOUND; 
    (vi->fatcache.dsc+pos)->modified=1;
    vi->fatmodified=0;
  }
  return F_NO_ERROR;
}



/****************************************************************************
 *
 * _f_getfatsector
 *
 * read a fat sector from cache/media
 *
 * INPUTS
 *
 * vi - volume pointer
 * sector - which fat sector is needed, this sector number is zero based
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
static int _f_getfatsector(F_VOLUME *vi,unsigned long sector) {
int i,a;
int pos;
unsigned char *ptr;

   if (vi->fatsector!=sector) 
   {
      unsigned long fatsector;

      if (vi->fatmodified) {
      	int ret=_f_writefatsector(vi);
        if (ret) return ret;
      }

      if (sector>=vi->firstfat.num) {
         return F_ERR_INVALIDSECTOR;
      }

      fatsector=vi->firstfat.sector+sector;

      for (pos=0;pos<vi->fatcache.N && (vi->fatcache.dsc+pos)->sector!=fatsector;pos++);
      if (pos==vi->fatcache.N)
      {
        if (pos==FATCACHE_SIZE) 
        {
          int ret=_f_fatcache_flush(vi,1);
          if (ret) return ret;
          pos=vi->fatcache.N;
        }
        vi->fatsector=sector;
        
        ptr=(vi->fatcache.data)+(pos*F_SECTOR_SIZE);
        for (a=0; a<vi->bootrecord.number_of_FATs; a++) 
        {
          if (!_f_readsector(vi,ptr,fatsector,FATCACHE_READAHEAD)) 
          {
            vi->fat=ptr;
            for (i=0;i<FATCACHE_READAHEAD;i++) (vi->fatcache.dsc+(pos+i))->sector=fatsector+i; 
            vi->fatcache.N+=FATCACHE_READAHEAD;
            return F_NO_ERROR;
          }
          fatsector+=vi->firstfat.num;
        }

        vi->fatsector=(unsigned long)(-1);
        return F_ERR_READ;
      }
      else
      {
        vi->fatsector=sector;
        vi->fat=(vi->fatcache.data)+(pos*F_SECTOR_SIZE);
      }
   }

   return F_NO_ERROR;
}

#else /* FATCACHE_ENABLE */

/****************************************************************************
 *
 * _f_writefatsector
 *
 * writing fat sector into volume, this function check if fat was modified
 * and writes data
 *
 * INPUTS
 *
 * vi - volume pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_writefatsector(F_VOLUME *vi) {
   if (vi->fatmodified) {
      unsigned long fatsector=vi->firstfat.sector+vi->fatsector;
	  unsigned char a;

      if (vi->fatsector>=vi->firstfat.num) {
         return F_ERR_INVALIDSECTOR;
      }

      for (a=0; a<vi->bootrecord.number_of_FATs; a++) {
			int ret=_f_writesector(vi,vi->fat,fatsector,1);
			if (ret) return ret;

			fatsector+=vi->firstfat.num;
      }

      vi->fatmodified=0;

   }

   return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_getfatsector
 *
 * read a fat sector from media
 *
 * INPUTS
 *
 * vi - volume pointer
 * sector - which fat sector is needed, this sector number is zero based
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

static int _f_getfatsector(F_VOLUME *vi,unsigned long sector) {

   if (vi->fatsector!=sector) {
      unsigned long fatsector;
	  unsigned char a;

      if (vi->fatmodified) {
      	int ret=_f_writefatsector(vi);
         if (ret) return ret;
      }

      vi->fatsector=sector;

      if (vi->fatsector>=vi->firstfat.num) {
         return F_ERR_INVALIDSECTOR;
      }

      fatsector=vi->firstfat.sector+vi->fatsector;

		for (a=0; a<vi->bootrecord.number_of_FATs; a++) {
			if (!_f_readsector(vi,vi->fat,fatsector,1)) {
				return F_NO_ERROR;
			}
			fatsector+=vi->firstfat.num;
		}
		return F_ERR_READ;
   }

   return F_NO_ERROR;
}

#endif

/****************************************************************************
 *
 * _f_setclustervalue
 *
 * set a cluster value in the FAT
 *
 * INPUTS
 *
 * vi - volume pointer
 * cluster - which cluster's value need to be modified
 * data - new value of the cluster
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_setclustervalue(F_VOLUME *vi,unsigned long cluster, unsigned long data) {
int ret;
	if (vi->mediatype==F_FAT16_MEDIA) {
		unsigned long sector=cluster;
		unsigned short s_data=(unsigned short)(data & 0xffff); /* keep 16 bit only */

		sector/=(F_SECTOR_SIZE/2);
		cluster-=sector*(F_SECTOR_SIZE/2);
		
		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;
		
		if (_f_getword(&vi->fat[cluster<<1])!=s_data) {
			_f_setword(&vi->fat[cluster<<1],s_data);
			vi->fatmodified=1;
		}
	}
	else if (vi->mediatype==F_FAT12_MEDIA) {
		unsigned char f12new[2];
		unsigned long sector=cluster;
		unsigned long pos;
		unsigned short s_data=(unsigned short)(data & 0x0fff); /* keep 12 bit only */

		if (cluster&1) s_data <<= 4;

		_f_setword(f12new,s_data); /* create new data */

		sector+=sector/2;		  /* 1.5 bytes */
		pos=sector % F_SECTOR_SIZE;
	    sector/=F_SECTOR_SIZE;

		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;

		if (cluster&1) {
			f12new[0] |= vi->fat[pos] & 0x0f;
		}

		if (vi->fat[pos]!=f12new[0]) {
			vi->fat[pos]=f12new[0];
			vi->fatmodified=1;
		}

		pos++;
		if (pos>=512) {
			ret=_f_getfatsector(vi,sector+1);
			if (ret) return ret;
			pos=0;
		}

		if (!(cluster&1)) {
			f12new[1] |= vi->fat[pos] & 0xf0;
		}

		if (vi->fat[pos]!=f12new[1]) {
			vi->fat[pos]=f12new[1];
			vi->fatmodified=1;
		}

		return F_NO_ERROR;
	}
	else if (vi->mediatype==F_FAT32_MEDIA) {
		unsigned long sector=cluster;
		unsigned long oldv;

	    sector/=(F_SECTOR_SIZE/4);
		cluster-=sector*(F_SECTOR_SIZE/4);

		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;

		oldv=_f_getlong(&vi->fat[cluster<<2]);

		data&=0x0fffffff;
		data|=oldv & 0xf0000000UL; /* keep 4 top bits */

		if (data!=oldv) {
			_f_setlong(&vi->fat[cluster<<2],data);
			vi->fatmodified=1;
		}

		return F_NO_ERROR;
	}
	else {
		return F_ERR_INVALIDMEDIA;
	}

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_getclustervalue
 *
 * get a cluster value from FAT
 *
 * INPUTS
 *
 * vi - volume pointer
 * cluster - which cluster value is requested
 * pvalue - where to store data 
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_getclustervalue(F_VOLUME *vi,unsigned long cluster,unsigned long *pvalue) {
unsigned long val;
int ret;
	if (vi->mediatype==F_FAT16_MEDIA) {
		unsigned long sector=cluster;
	    sector/=(F_SECTOR_SIZE/2);
		cluster-=sector*(F_SECTOR_SIZE/2);

		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;

		val=_f_getword(&(vi->fat[cluster<<1])); /* 2bytes */
		if (val>=0xfff0) val|=0x0ffff000;   /* extends it */

		if (pvalue) *pvalue=val;

		return F_NO_ERROR;
	}
	else if (vi->mediatype==F_FAT12_MEDIA) {
		unsigned char dataf12[2];
		unsigned long sector=cluster;
		unsigned long pos;

		sector+=sector/2;		  /* 1.5 bytes */
		pos=sector % F_SECTOR_SIZE;
	    sector/=F_SECTOR_SIZE;

		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;

		dataf12[0]=vi->fat[pos++];

		if (pos>=512) {
			ret=_f_getfatsector(vi,sector+1);
			if (ret) return ret;
			pos=0;
		}

		dataf12[1]=vi->fat[pos];

		val=_f_getword(dataf12);

		if (cluster&1) {
			val = val >> 4;
		}
		else {
			val = val & 0xfff;
		}

		if (val>=0x0ff0) val|=0x0ffff000;   /* extends it */
		
		if (pvalue) *pvalue=val;

		return F_NO_ERROR;
	}
	else if (vi->mediatype==F_FAT32_MEDIA) {
		unsigned long sector=cluster;
	    sector/=(F_SECTOR_SIZE/4);
		cluster-=sector*(F_SECTOR_SIZE/4);

		ret=_f_getfatsector(vi,sector);
		if (ret) return ret;

		if (pvalue) *pvalue=_f_getlong(&vi->fat[cluster<<2]) & 0x0fffffff; /* 28bit */

		return F_NO_ERROR;
	}
	else {
		return F_ERR_INVALIDMEDIA;
	}
}


/****************************************************************************
 * Close all files that belongs to a drive.
 ***************************************************************************/
static void _f_close_drive_files (int drivenum)
{
  int a;

  for (a=0; a<F_MAXFILES; a++) 
  { /* close all files on this volume */
    F_FILEINT *f=&f_filesystem.files[a];
    if (f->drivenum==drivenum) 
    {
      if (f->mode != F_FILE_CLOSE) f->mode=F_FILE_CLOSE;
    }
  }
}


/****************************************************************************
 *
 * _f_getvolume
 *
 * getting back a volume info structure of a given drive, it try to mounts 
 * drive if it was not mounted before
 *
 * INPUTS
 *
 * drivenum - which drive volumeinfo needs to be retreive
 * pvi - pointer of volumeinfo structure where to put the pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_getvolume(F_MULTI *fm,int drivenum,F_VOLUME **pvi) {
F_VOLUME *vi;
int ret;

	if (drivenum < 0 || drivenum>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;

	vi=&f_filesystem.volumes[drivenum];

	ret=_f_mutex_get(fm,vi);
	if (ret) return ret;

	vi->cwd=fm->f_vols[drivenum].cwd; /* safety uses of vi->cwd */

	if (pvi) *pvi=vi;	/* set volumeinfo */

	switch (vi->state) {

	case F_STATE_NONE: 
		_f_close_drive_files(drivenum);
		return F_ERR_INVALIDDRIVE;

	case F_STATE_WORKING: 
		if (!_f_checkstatus(vi)) return F_NO_ERROR;

      /*  here we don't stop case flow,   */
      /*  because we have to clean up this volume!  */

	case F_STATE_NEEDMOUNT: 
		{
#ifdef FATCACHE_ENABLE
			{
			  int i;
			  vi->fatcache.N=0;
			  for (i=0;i<FATCACHE_SIZE;(vi->fatcache.dsc+i++)->modified=0);
			}
#endif
#ifdef DIRCACHE_ENABLE
                        vi->dircache_start=(unsigned long)-1;
#endif

			vi->fatmodified=0;
			vi->fatsector=(unsigned long)(-1);
			vi->direntrysector=(unsigned long)(-1);
			vi->lastalloccluster=0; 
			vi->cspaceok=0;

			_f_close_drive_files(drivenum);

			if (vi->cwd) vi->cwd[0]=0; /* reset cwd */
			vi->mediatype=F_UNKNOWN_MEDIA;

			if (vi->func.getstatus) {
				long status=vi->func.getstatus(vi->func.user_ptr);
				if (status & F_ST_MISSING) {
					vi->state=F_STATE_NEEDMOUNT; /* card missing */
					return F_ERR_CARDREMOVED;
				}        
			}        
			ret = _f_readbootrecord(vi);
			if (!ret) {
				_f_buildsectors(vi);

				++MagicNumber;
				if ((void *)(MagicNumber<<F_MAXFILES_SHIFT)==(void *)0) MagicNumber=1;

#ifdef FATBITFIELD_ENABLE
                                if (vi->fatbitfield) {
                                  free(vi->fatbitfield);
                                  vi->fatbitfield=0;
                                }				
                                if (vi->mediatype==F_FAT32_MEDIA) {
					vi->fatbitfield=malloc(vi->firstfat.num);
					if (vi->fatbitfield==NULL) return F_ERR_ALLOCATION;
					_memset(vi->fatbitfield,0,vi->firstfat.num);
				}
#endif

				vi->state=F_STATE_WORKING;
				return F_NO_ERROR;
			}

			vi->mediatype=F_UNKNOWN_MEDIA;
			return ret;//F_ERR_NOTFORMATTED;
		}

	}

	return F_ERR_INVALIDDRIVE;
}

/****************************************************************************
 *
 * fn_initvolume
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

int fn_initvolume(F_MULTI *fm,int drvnumber,F_INITFUNC pfunc,void *user_ptr) {
F_VOLUME *vi;
int ret;
	if (drvnumber<0 || drvnumber>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;

	if (f_filesystem_initialized==0)
	{
	  _memset(&f_filesystem,0,sizeof(f_filesystem));
#if (!F_CAPI_USED)
#ifndef USE_MALLOC
	  _memset(&g_multi,0,sizeof(g_multi));
#endif
#endif
	  f_filesystem_initialized=1;
	}

	vi=&f_filesystem.volumes[drvnumber];
	if (vi->state!=F_STATE_NONE) return F_ERR_DRVALREADYMNT; 


#ifdef FATCACHE_ENABLE
  #ifdef USE_MALLOC
        vi->fatcache.dsc=(t_CacheDsc *)malloc(sizeof(t_CacheDsc)*FATCACHE_SIZE);
        if (vi->fatcache.dsc==NULL) return F_ERR_ALLOCATION;
        vi->fatcache.data=(unsigned char *)malloc(FATCACHE_SIZE*F_SECTOR_SIZE);
        if (vi->fatcache.data==NULL)
        {
          free(vi->fatcache.dsc);
          return F_ERR_ALLOCATION;
        }
  #else
        vi->fatcache.dsc=&(vi->fatcache.dsc_array[0]);
  #endif
#endif

#if F_LONGFILENAME
#ifdef DIRCACHE_ENABLE
#ifdef USE_MALLOC
        vi->dircache=(unsigned char *)malloc(DIRCACHE_SIZE*F_SECTOR_SIZE);
        if (vi->dircache==NULL)
        {
  #ifdef FATCACHE_ENABLE
          free(vi->fatcache.dsc);
          free(vi->fatcache.data);
          return F_ERR_ALLOCATION;
  #endif
        }

#endif
#endif
#endif

	vi->state=F_STATE_NONE;

	if (!pfunc) {
		return F_ERR_INITFUNC;
	}

	(void)_memset((void *)(&vi->func),0,sizeof(vi->func));

	ret=pfunc(&vi->func,user_ptr);
	if (ret) return F_ERR_INITFUNC;

	ret=f_mutex_create(&vi->mutex);
	if (ret) return F_ERR_INITFUNC;

#ifdef FATBITFIELD_ENABLE 
	vi->fatbitfield=0;
#endif

	vi->state=F_STATE_NEEDMOUNT;
	ret=_f_getvolume(fm,drvnumber,0);

/*	if (!ret && f_filesystem.volumes[fm->curdrive].state==F_STATE_NONE) fm->curdrive=drvnumber; */

	return ret;
}

/****************************************************************************
 * fn_checkvolume
 * Deletes a previously initialized volume.
 *
 * INPUT:
 * drvnumber - number of drive to check
 ***************************************************************************/

int fn_checkvolume(F_MULTI *fm,int drvnumber) {
	return _f_getvolume(fm,drvnumber,0);
}

/****************************************************************************
 * fn_delvolume
 * Deletes a previously initialized volume.
 *
 * INPUT:
 * drvnumber - number of drive to delete
 ***************************************************************************/

int fn_delvolume (int drvnumber)
{
  F_VOLUME *vi;
  int rc=0;

  if (drvnumber<0 || drvnumber>=F_MAXVOLUME)
  {
    rc=F_ERR_INVALIDDRIVE;
  }
  else
  {
    vi=&f_filesystem.volumes[drvnumber];
    if (vi->state!=F_STATE_NONE)
    {
#ifdef FATCACHE_ENABLE
      rc=_f_fatcache_flush(vi,0);
      if (rc) return rc;
#endif
      vi->state=F_STATE_NONE;
      if (vi->func.delfunc)
      {
        rc=(vi->func.delfunc)(vi->func.user_ptr);
        if (rc) rc=F_ERR_DELFUNC;
      }
#ifdef USE_MALLOC
#ifdef FATCACHE_ENABLE
      free(vi->fatcache.data);
      free(vi->fatcache.dsc);
#endif
#if F_LONGFILENAME
#ifdef DIRCACHE_ENABLE
      free(vi->dircache);
#endif
#endif
#endif
#ifdef FATBITFIELD_ENABLE
      if (vi->fatbitfield) {
        free(vi->fatbitfield);
        vi->fatbitfield=0;
      }
#endif
      (void)f_mutex_delete(&vi->mutex);
    }
  }
  
  return rc;
}

/****************************************************************************
 * Returns the number of mounted volumes
 ***************************************************************************/
int fn_get_volume_count (void)
{
  int rc=0;
  int i;
  F_VOLUME *vi;

  for (i=0;i<F_MAXVOLUME;i++)
  {
	vi=&f_filesystem.volumes[i];
    if (vi->state!=F_STATE_NONE) ++rc;
  }

  return rc;
}

/****************************************************************************
 * Returns a list of the mounted volumes
 ***************************************************************************/
int fn_get_volume_list (int *buf)
{
  int rc=0;
  int i;
  F_VOLUME *vi;

  for (i=0;i<F_MAXVOLUME;i++)
  {
	vi=&f_filesystem.volumes[i];
    if (vi->state!=F_STATE_NONE)
    {
      ++rc;
      if (buf) *buf++=i;
    }
  }

  return rc;
} 

/****************************************************************************
 *
 * _f_clustertopos
 *
 * convert a cluster position into physical sector position
 *
 * INPUTS
 *
 * vi - volume pointer
 * cluster - original cluster position
 * pos - position structure to fills the position
 *
 ***************************************************************************/

void _f_clustertopos(F_VOLUME *vi,unsigned long cluster, F_POS *pos) {
	pos->prevcluster=pos->cluster;
 	pos->cluster=cluster;

	if (!cluster) {
		unsigned long sectorcou=vi->root.num;
		pos->sector=vi->root.sector;
		pos->sectorend=pos->sector+sectorcou;
	}
	else {
	 	unsigned long sectorcou=vi->bootrecord.sector_per_cluster;
	 	pos->sector=pos->cluster;
	 	pos->sector-=2;
	 	pos->sector*=sectorcou;
	 	pos->sector+=vi->data.sector;
		pos->sectorend=pos->sector+sectorcou;
	}

	if (cluster>=F_CLUSTER_RESERVED) {
		pos->sectorend=0;
	}

	pos->sectorbegin=pos->sector;

	pos->pos=0;
}


/****************************************************************************
 *
 * _f_prepareformat
 *
 * preparing boot record for formatting, it sets and calculates values
 *
 * INPUTS
 *
 * phy - media physical descriptor
 * f_bootrecord - which bootrecord need to be prepare
 * number_of_hidden_sectors - where boot record starts
 * fattype - one of this definitions F_FAT12_MEDIA,F_FAT16_MEDIA,F_FAT32_MEDIA
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

static int _f_prepareformat(F_PHY *phy,F_BOOTRECORD *f_bootrecord,unsigned long number_of_hidden_sectors,long fattype) {
	if (!phy->number_of_sectors) return F_ERR_INVALIDSECTOR; 

	f_bootrecord->jump_code[0]=0xeb;
	f_bootrecord->jump_code[1]=0x3c;
	f_bootrecord->jump_code[2]=0x90;

	(void)_memcpy(f_bootrecord->OEM_name,OEM_NAME,8);
	f_bootrecord->bytes_per_sector=F_SECTOR_SIZE;

	f_bootrecord->number_of_FATs=2;

	if (fattype==F_FAT32_MEDIA) {
		f_bootrecord->reserved_sectors=32+4; 
   		f_bootrecord->max_root_entry=0;
	}
	else {
		f_bootrecord->reserved_sectors=1; 
   		f_bootrecord->max_root_entry=512;
	}

        if (!phy->media_descriptor) phy->media_descriptor=0xf0;
	f_bootrecord->media_descriptor=phy->media_descriptor; /* 0xf0 for removable. 0xf8 for fix */

	f_bootrecord->sector_per_Track=phy->sector_per_track;
	f_bootrecord->number_of_heads=phy->number_of_heads;

	f_bootrecord->number_of_hidden_sectors=number_of_hidden_sectors; /* if this is not partioned */
	f_bootrecord->logical_drive_num=0;

	f_bootrecord->extended_signature=0x29;

 	(void)_memcpy(f_bootrecord->volume_name,"NO NAME    ",11);

	f_bootrecord->executable_marker[0]=0x55;
	f_bootrecord->executable_marker[1]=0xaa;

	f_bootrecord->serial_number=f_getrand(f_bootrecord->serial_number^phy->number_of_sectors);

	if ((phy->number_of_sectors < 0x10000UL) && (fattype!=F_FAT32_MEDIA)) {
		f_bootrecord->number_of_sectors_less32=(unsigned short)(phy->number_of_sectors);
		f_bootrecord->number_of_sectors=0;
	}
	else {
		f_bootrecord->number_of_sectors_less32=0;
		f_bootrecord->number_of_sectors=phy->number_of_sectors;
	}

	if (fattype==F_FAT12_MEDIA) 
	{
   		f_bootrecord->sector_per_cluster=1;
   		while (f_bootrecord->sector_per_cluster) { /* try FAT12 */
   			if (phy->number_of_sectors / f_bootrecord->sector_per_cluster < (unsigned long)(0x00ff0UL)) break;
   			f_bootrecord->sector_per_cluster<<=1;
   		}
   		if (!f_bootrecord->sector_per_cluster) return F_ERR_MEDIATOOLARGE; /* fat12 cannot be there */
	}
	else if (fattype==F_FAT16_MEDIA) 
	{
   		f_bootrecord->sector_per_cluster=1;
   		while (f_bootrecord->sector_per_cluster) { /* try FAT16 */
   			if (phy->number_of_sectors / f_bootrecord->sector_per_cluster < (unsigned long)(0x0fff0UL)) break;
   			f_bootrecord->sector_per_cluster<<=1;
   		}
   		if (!f_bootrecord->sector_per_cluster) return F_ERR_MEDIATOOLARGE; /* fat16 cannot be there */
	}
	else if (fattype==F_FAT32_MEDIA) 
	{
		unsigned int i;
		for (i=0;i<(sizeof(FAT32_CS)/sizeof(t_FAT32_CS))-1 && phy->number_of_sectors>FAT32_CS[i].max_sectors;i++);
		f_bootrecord->sector_per_cluster=FAT32_CS[i].sector_per_cluster;
	}
	else return F_ERR_INVFATTYPE;

	if (!f_bootrecord->sector_per_cluster) return F_ERR_INVALIDMEDIA; /* fat16 cannot be there */

	{
		long secpercl=f_bootrecord->sector_per_cluster;
		long nfat=f_bootrecord->number_of_FATs;
		unsigned long roots;
		long fatsec;

   		roots=f_bootrecord->max_root_entry;
	   	roots*=sizeof(F_DIRENTRY);
   		roots/=F_SECTOR_SIZE;

		if (fattype==F_FAT32_MEDIA) {
   			fatsec=(phy->number_of_sectors-f_bootrecord->reserved_sectors+2*secpercl);
			fatsec+=(128*secpercl+nfat-1);
			fatsec/=(128*secpercl+nfat);

			f_bootrecord->sector_per_FAT32=fatsec;
			f_bootrecord->sector_per_FAT=0;

			f_bootrecord->extflags=0;
   			f_bootrecord->fsversion=0;
	   		f_bootrecord->rootcluster=2;
   			f_bootrecord->fsinfo=1;
   			f_bootrecord->bkbootsec=6;

   			(void)_memset((void *)(f_bootrecord->reserved),0,sizeof(f_bootrecord->reserved));
		}
		else if (fattype==F_FAT16_MEDIA) {
   			fatsec=(phy->number_of_sectors-f_bootrecord->reserved_sectors-roots+2*secpercl);
			fatsec+=(256*secpercl+nfat-1);
			fatsec/=(256*secpercl+nfat);

   			f_bootrecord->sector_per_FAT=(unsigned short)(fatsec);
		}
		else if (fattype==F_FAT12_MEDIA) {
   			fatsec=3*(phy->number_of_sectors-f_bootrecord->reserved_sectors-roots+2*secpercl);
			fatsec+=(1024*secpercl+3*nfat-1);
			fatsec/=(1024*secpercl+3*nfat);

   			f_bootrecord->sector_per_FAT=(unsigned short)(fatsec);
		}
	}

	return F_NO_ERROR;

}

/****************************************************************************
 *
 * _f_postformat
 *
 * erase fats, erase root directory, reset variables after formatting
 *
 * INPUTS
 *
 * vi - volume pointer
 * fattype - one of this definitions F_FAT12_MEDIA,F_FAT16_MEDIA,F_FAT32_MEDIA
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

static int _f_postformat(F_VOLUME *vi,long fattype) {
unsigned long a;
int ret;

	_f_buildsectors(vi); /* get positions */
	if (vi->mediatype!=fattype) return F_ERR_MEDIATOOSMALL;

	if (vi->mediatype==F_FAT12_MEDIA) {
		(void)_memcpy(vi->bootrecord.FAT_name,"FAT12   ",8);
	}
	else if (vi->mediatype==F_FAT16_MEDIA) {
		(void)_memcpy(vi->bootrecord.FAT_name,"FAT16   ",8);
	}
	else if (vi->mediatype==F_FAT32_MEDIA) {
		(void)_memcpy(vi->bootrecord.FAT_name,"FAT32   ",8);
	}
	else return F_ERR_INVALIDMEDIA;

	vi->fatmodified=0;
	vi->fatsector=(unsigned long)(-1);
	vi->direntrysector=(unsigned long)(-1);

        {
          unsigned char *ptr=f_filesystem.sectorbuffer;
          unsigned char n[4]={0,2,3,7};
          unsigned long sector,j;
		  unsigned char i;

          (void)_memset((void *)ptr,0,F_SECTOR_SIZE);
          *ptr=0xf8;
          (void)_memset((void *)(ptr+1),0xff,n[vi->mediatype]);
          if (vi->mediatype==F_FAT32_MEDIA)
          {
            *(ptr+8)=0xf8; *(ptr+9)=0xff; *(ptr+10)=0xff; *(ptr+11)=0x0f;
          }
          (void)_f_writesector(vi,ptr,vi->firstfat.sector,1);
          (void)_f_writesector(vi,ptr,vi->firstfat.sector+vi->firstfat.num,1);


          (void)_memset(ptr,0,F_SECTOR_SIZE);
          for (i=0;i<vi->bootrecord.number_of_FATs;i++)
          {
            sector=vi->firstfat.sector+(i*vi->firstfat.num)+1;
            for (j=1;j<vi->firstfat.num;j++) 
            {
              (void)_f_writesector(vi,ptr,sector++,1);
            }
          }
          
        }

	(void)_memset(f_filesystem.sectorbuffer,0,F_SECTOR_SIZE);

	if (vi->firstfat.num>1) {
        /* clear last sector of FAT tables */
        (void)_f_writesector(vi,f_filesystem.sectorbuffer,vi->firstfat.sector+vi->firstfat.num-1,1);
        (void)_f_writesector(vi,f_filesystem.sectorbuffer,vi->firstfat.sector+vi->firstfat.num*2-1,1);
	}

 	for (a=0; a<vi->root.num;a++) { /* reset root direntries */
  		ret = _f_writesector(vi,f_filesystem.sectorbuffer,vi->root.sector+a,1);
  		if (ret) return ret;
	}

	return _f_writebootrecord(vi);
}

/****************************************************************************
 *
 * fn_hardformat
 *
 * Making a complete format on media, independently from master boot record,
 * according to media physical
 *
 * INPUTS
 *
 * drivenum - which drive low format is needed
 * fattype - one of this definitions F_FAT12_MEDIA,F_FAT16_MEDIA,F_FAT32_MEDIA
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int fn_hardformat(F_MULTI *fm,int drivenum,long fattype) {
F_VOLUME *vi;
int ret;
F_PHY phy;

	ret=_f_getvolume(fm,drivenum,&vi);
	if (ret && ret!=F_ERR_NOTFORMATTED) return ret;

	vi->state=F_STATE_NEEDMOUNT;

	(void)_memset((void *)(&phy),0,sizeof(F_PHY));
	if (vi->func.getphy) {
		ret=vi->func.getphy(&phy,vi->func.user_ptr);
		if (ret) return F_ERR_INVALIDDRIVE;
	}
	else return F_ERR_INITFUNC;

        if (phy.media_descriptor==0xf8)	/* use partition table */
        {
          unsigned long sectors=vi->bootrecord.number_of_sectors_less32;
          unsigned char *ptr=f_filesystem.sectorbuffer;

  	  ret=_f_prepareformat(&phy,&vi->bootrecord,1,fattype); /* no partition */
  	  if (ret) return ret;

          /* Write partition table */ 
          ptr=_setcharzero(0x1be,ptr);
          ptr=_setlong(0x00010080UL,ptr);	/* active partition + partition begin*/
          if (fattype==F_FAT12_MEDIA) 
          {
            *ptr++=0x01;
          }
          else if (fattype==F_FAT16_MEDIA)
          {
            if (sectors) *ptr++=0x04;
                    else *ptr++=0x06;
          }
          else
          {
            *ptr++=0x0b;
          }
          *ptr++=0xff;
          *ptr++=0xff;
          *ptr++=0xff;
          ptr=_setlong(0x00000001,ptr);
          if (!sectors) sectors=vi->bootrecord.number_of_sectors;
          ptr=_setlong(sectors,ptr);
          ptr=_setcharzero(48,ptr);
          ptr=_setword(0xaa55,ptr); /* trail */
          ret=_f_writesector(vi,f_filesystem.sectorbuffer,0,1);
          if (ret) return ret;
        }
        else
        {
	  ret=_f_prepareformat(&phy,&vi->bootrecord,0,fattype); /* no partition */
	  if (ret) return ret;
	}


	return _f_postformat(vi,fattype);
}

/****************************************************************************
 *
 * fn_format
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

int fn_format(F_MULTI *fm,int drivenum,long fattype) {
F_BOOTRECORD *f_bootrecord;
F_VOLUME *vi;
int ret;
F_PHY phy;

	ret=_f_getvolume(fm,drivenum,&vi);
	if (ret && ret!=F_ERR_NOTFORMATTED) return ret;

	vi->state=F_STATE_NEEDMOUNT;

	f_bootrecord=&vi->bootrecord;

	if (!ret) { /* we have existing formating */

		phy.number_of_heads=f_bootrecord->number_of_heads;
		phy.sector_per_track=f_bootrecord->sector_per_Track;

		phy.number_of_sectors=vi->bootrecord.number_of_sectors_less32;
		if (!phy.number_of_sectors) phy.number_of_sectors=vi->bootrecord.number_of_sectors;

		phy.media_descriptor=vi->bootrecord.media_descriptor;

		
		ret=_f_prepareformat(&phy,f_bootrecord,f_bootrecord->number_of_hidden_sectors,fattype); 

		if (ret) return ret;
	}
	else if (ret==F_ERR_NOTFORMATTED) { /* we dont have existing formatting */
		unsigned char *ptr=f_filesystem.sectorbuffer;
		unsigned long startsec=0;

		(void)_memset((void *)f_bootrecord,0,sizeof(F_BOOTRECORD));
		(void)_memset(&phy,0,sizeof(F_PHY));

		if (vi->func.getphy) {
			ret=vi->func.getphy(&phy,vi->func.user_ptr);
			if (ret) return F_ERR_INVALIDDRIVE;
		}
		else return F_ERR_INITFUNC;

	    ret=_f_readsector(vi,ptr,0,1); /* check MBR */
		if (ret) return ret;

		if ((ptr[0x1fe]==0x55) && (ptr[0x1ff]==0xaa)) { /* check valid */
			if ((ptr[0]!=0xeb) && (ptr[0]!=0xe9)) {   /* check MBR */
				if (ptr[0x1be]==0x80) {				  /* check active */
					startsec=_f_getlong(&ptr[0x08+0x1be]); /* start sector for 1st partioon */
					phy.number_of_sectors=_f_getlong(&ptr[0x0c+0x1be]); /* number of sectors */
				}
			}
		}


		ret=_f_prepareformat(&phy,f_bootrecord,startsec,fattype); /* no partition */
		if (ret) return ret;
	}

	return _f_postformat(vi,fattype);
}

/****************************************************************************
 *
 * _f_getcurrsector
 *
 * read current sector according in file structure
 *
 * INPUTS
 *
 * vi - volume pointer
 * f - internal file pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_getcurrsector(F_VOLUME *vi,F_FILEINT *f,char *ptr,int *cnt) {
int ret;
unsigned long cluster;
int N;

	while (f->pos.cluster>=2 && f->pos.cluster<F_CLUSTER_RESERVED) {

		if (f->pos.sector<f->pos.sectorend) {
			if (!ptr) 
			{
			  ptr=(char *)f->data;
			  N=1;
			}
			else
			{
			  N=*cnt;
			  if (*cnt>(int)(f->pos.sectorend-f->pos.sector)) 
			  {
			    N=f->pos.sectorend-f->pos.sector;
			    *cnt=N;
			  }
			}
			return _f_readsector(vi,ptr,f->pos.sector,N);
		}

		ret=_f_getclustervalue(vi,f->pos.cluster,&cluster);
		if (ret) return ret;

		if (cluster<2 || cluster>=F_CLUSTER_RESERVED) return F_ERR_EOF; 
		_f_clustertopos(vi,cluster,&f->pos);
	}

	return F_ERR_EOF;
}

/****************************************************************************
 *
 * _f_getdecluster
 *
 * get a directory entry structure start cluster value
 *
 * INPUTS
 *
 * vi - volume pointer
 * de - directory entry
 *
 * RETURNS
 *
 * directory entry cluster value
 *
 ***************************************************************************/

unsigned long _f_getdecluster(F_VOLUME *vi,F_DIRENTRY *de) {
unsigned long cluster;
	if (vi->mediatype==F_FAT32_MEDIA) {
		cluster=_f_getword(de->clusterhi);
		cluster<<=16;
		cluster|=_f_getword(de->clusterlo);
		return cluster;
	}

	return _f_getword(de->clusterlo);
}

/****************************************************************************
 *
 * _f_setdecluster
 *
 * set a directory entry structure start cluster value
 *
 * INPUTS
 *
 * vi - volume pointer
 * de - directory entry
 * cluster - value of the start cluster
 *
 ***************************************************************************/

void _f_setdecluster(F_VOLUME *vi,F_DIRENTRY *de,unsigned long cluster) {
	_f_setword(de->clusterlo,(unsigned short)(cluster&0xffff));

	if (vi->mediatype==F_FAT32_MEDIA) {
		_f_setword(de->clusterhi,(unsigned short)((cluster>>16)&0xffff));
	}
	else {
		_f_setword(de->clusterhi,(unsigned short)0);
	}
}

/****************************************************************************
 *
 * fn_getdrive
 *
 * Get current drive number
 *
 * RETURNS
 *
 * with the current drive number (0-A, 1-B,...)
 *
 ***************************************************************************/

int fn_getdrive(F_MULTI *fm) {
	return fm->f_curdrive;/* f_filesystem.curdrive;*/
}


/****************************************************************************
 *
 * fn_chdrive
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

int fn_chdrive(F_MULTI *fm,int drivenum) {
int ret=_f_getvolume(fm,drivenum,0);
	if (ret && ret!=F_ERR_NOTFORMATTED) return ret;

	fm->f_curdrive=drivenum;

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_initentry
 *
 * init directory entry, this function is called if a new entry is coming
 *
 * INPUTS
 *
 * de - directory entry which needs to be initialized
 * name - fil ename  (8)
 * ext - file extension (3)
 *
 ***************************************************************************/

void _f_initentry(F_DIRENTRY *de,char *name, char *ext) {

	(void)_memset ((void *)de,0,sizeof(F_DIRENTRY)); /* reset all entries */

	(void)_memcpy (de->name,name,sizeof(de->name));
	(void)_memcpy (de->ext,ext,sizeof(de->ext));

	_f_setword(de->cdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
	_f_setword(de->ctime,f_gettime());  /* if there is realtime clock then creation time could be set from */

}

/****************************************************************************
 *
 * _f_alloccluster
 *
 * allocate cluster from FAT
 *
 * INPUTS
 *
 * vi - volume pointer
 * pcluster - where to store the allocated cluster number
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_alloccluster(F_VOLUME *vi,unsigned long *pcluster) {
unsigned long maxcluster=_f_getmaxcluster(vi); 
unsigned long cou;
unsigned long cou2;
unsigned long cluster=vi->lastalloccluster;
unsigned long value;
int ret;

	if (vi->mediatype==F_FAT32_MEDIA) {
		unsigned long sector=cluster;
		unsigned long sectorperfat=vi->firstfat.num;
	    sector/=(F_SECTOR_SIZE/4);
		cluster-=sector*(F_SECTOR_SIZE/4);

		for (cou=0; cou<sectorperfat; cou++) {
			unsigned long *lptr;

			if (sector>=sectorperfat) sector=0;
#ifdef FATBITFIELD_ENABLE
			if (!(vi->fatbitfield[sector >> 3]&(unsigned char)(1<<(sector&7)))) {
#endif
				ret=_f_getfatsector(vi,sector);
				if (ret) return ret;

				lptr=(unsigned long*)(vi->fat); /* assigned here, bacuse of caching mechanism */
				lptr+=cluster; /* translation to start */

				for (cou2=cluster; cou2<F_SECTOR_SIZE/4; cou2++) {
					if (!*lptr++) {
						cluster=sector*(F_SECTOR_SIZE/4)+cou2;

						if (cluster>=maxcluster) continue;
	
						vi->lastalloccluster=cluster+1; /* set next one */
						if (pcluster) *pcluster=cluster;
	
						if (vi->cspaceok) {
							vi->clspace.clfree--;
							vi->clspace.clused++;
						}
#ifdef FATBITFIELD_ENABLE
						if (cou2+1==F_SECTOR_SIZE/4) {
							lptr=(unsigned long*)(vi->fat); /* check again if its all used */
							for (cou2=0; cou2<F_SECTOR_SIZE/4; cou2++) {
								if (!*lptr++) {
									vi->lastalloccluster-=F_SECTOR_SIZE/4; /* set up back */
									vi->lastalloccluster+=cou2;			   /* set to pos */
									return 0;
								}
							}

							vi->fatbitfield[sector >> 3]|=(unsigned char)(1<<(sector&7)); /* last allocated there is no free cluster*/
						}
#endif
	
						return 0;
					}
				}

#ifdef FATBITFIELD_ENABLE
				vi->fatbitfield[sector >> 3]|=(unsigned char)(1<<(sector&7)); /* no free in this sector*/
			}
#endif
			cluster=0;
			sector++;
		}

		return F_ERR_NOMOREENTRY;
	}

	
	for (cou=0; cou<maxcluster; cou++) {

		if (cluster>=maxcluster) cluster=0;

		ret=_f_getclustervalue(vi,cluster,&value);
		if (ret) return ret;

		if (!value) {
			vi->lastalloccluster=cluster+1; /* set next one */
			if (pcluster) *pcluster=cluster;

			if (vi->cspaceok) {
				vi->clspace.clfree--;
				vi->clspace.clused++;
			}

			return F_NO_ERROR;
		}

		cluster++;
	}

	return F_ERR_NOMOREENTRY;
}



/****************************************************************************
 *
 * _f_dobadblock
 *
 * Bad block handler, if a given block is bad, this routine mark the cluster
 * as bad, and change the file pointer position values
 *
 * INPUTS
 *
 * vi - volume info
 * f - internal file pointer which contains bad block
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_dobadblock(F_VOLUME *vi,F_FILEINT *f) {
F_POS posold;
F_POS pos;
unsigned long cluster;
unsigned long oldclustervalue;
unsigned long currdif=f->pos.sectorend-f->pos.sector;
int ret;

	ret=_f_getclustervalue(vi,f->pos.cluster,&oldclustervalue); /* get old value */
	if (ret) return ret;

	ret=_f_setclustervalue(vi,f->pos.cluster,F_CLUSTER_BAD); /* set signal as bad */
	if (ret) return ret;

write_again:

	if (vi->cspaceok) {
	 	vi->clspace.clused--;
	 	vi->clspace.clbad++;
	}

	ret=_f_alloccluster(vi,&cluster);						  /* get a new one */
	if (ret) return ret;

	ret=_f_setclustervalue(vi,cluster,oldclustervalue);	/* set old value back */
	if (ret) return ret;

	_f_clustertopos(vi,cluster,&pos);			   /* set new data position */
	_f_clustertopos(vi,f->pos.cluster,&posold); /* set old data position */


	for (;pos.sector<pos.sectorend; pos.sector++,posold.sector++) {

		ret=_f_readsector(vi,f_filesystem.sectorbuffer,posold.sector,1);
		if (ret) return ret; /* cannot read!!! */

		ret=_f_writesector(vi,f_filesystem.sectorbuffer,pos.sector,1);
		if (ret) {
			if (vi->state!=F_STATE_WORKING) return ret; /* not working */

			ret=_f_setclustervalue(vi,cluster,F_CLUSTER_BAD); /* set signal as bad also */
			if (ret) return ret;

			goto write_again; /* this will be bad sector as well */
		}
	}

 	_f_clustertopos(vi,cluster,&f->pos);
 	f->pos.sector=f->pos.sectorend-currdif; /* lets go back to current sector */

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_checklocked
 *
 * check if a given file is locked or not
 *
 * INPUTS
 *
 * drvnum - drive number
 * pos - pos structure contains directory entry pos
 *
 * RETURNS
 *
 * zero - if not locked
 * F_ERR_LOCKED - if locked
 *
 ***************************************************************************/

int _f_checklocked(long drvnum,F_POS *pos) {
int a;
	for (a=0; a<F_MAXFILES; a++) {
		F_FILEINT *f=&f_filesystem.files[a];
		if (f->mode!=F_FILE_CLOSE) {
			if (drvnum==f->drivenum && f->dirpos.pos==pos->pos && f->dirpos.sector==pos->sector) return F_ERR_LOCKED;
		}
	}
	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_checkreadlocked
 *
 * check if a given file is locked or not for reading
 *
 * INPUTS
 *
 * drvnum - drive number
 * pos - pos structure contains directory entry pos
 *
 * RETURNS
 *
 * zero - if not locked
 * F_ERR_LOCKED - if locked
 *
 ***************************************************************************/

int _f_checkreadlocked(long drvnum,F_POS *pos) {
int a;
	for (a=0; a<F_MAXFILES; a++) {
		F_FILEINT *f=&f_filesystem.files[a];
		if (f->mode!=F_FILE_CLOSE) {
			if (drvnum==f->drivenum && f->dirpos.pos==pos->pos && f->dirpos.sector==pos->sector) {
				if (f->mode!=F_FILE_RD)	return F_ERR_LOCKED;
			}
		}
	}
	return F_NO_ERROR;
}

/****************************************************************************
 *
 * fn_getfreespace
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

int fn_getfreespace(F_MULTI *fm,int drivenum, F_SPACE *pspace) { 
int ret;
F_VOLUME *vi;
unsigned long clustersize;
unsigned long maxcluster;
unsigned long a;


	ret=_f_getvolume(fm,drivenum,&vi);
	if (ret) return ret;

	maxcluster=_f_getmaxcluster(vi);

	pspace->total=maxcluster;
	pspace->free=0;
	pspace->used=0;
	pspace->bad=0;


	if (!vi->cspaceok) { /* init time calculation */
   		if (vi->mediatype==F_FAT32_MEDIA) {
	        unsigned long sector=0;
	   		unsigned long sectorperfat=vi->firstfat.num;
	        unsigned long cluster=0;
	        unsigned long cou;
	        unsigned long cou2;
	   		for (cou=0; cou<sectorperfat && cluster<maxcluster; cou++) {
#ifdef FATBITFIELD_ENABLE
	            char allused=1;
#endif
	   			unsigned long *lptr;
				ret=_f_getfatsector(vi,sector);
				if (ret) return ret;

				lptr=(unsigned long*)(vi->fat); /* assigned here, bacuse of caching mechanism */

				for (cou2=0; cou2<F_SECTOR_SIZE/4 && cluster++<maxcluster; cou2++) {
					unsigned long value=(*lptr++) & 0x0fffffffUL;
	
   			   		if (!value) {
						++(pspace->free);
#ifdef FATBITFIELD_ENABLE
						allused=0;
#endif
					}
		  			else if (value==F_CLUSTER_BAD) ++(pspace->bad);
      				else ++(pspace->used);
				}
#ifdef FATBITFIELD_ENABLE
				if (allused) {
	   				vi->fatbitfield[sector >> 3]|=(unsigned char)(1<<(sector&7)); /* no free cluster*/
		        }
#endif
				sector++;
			}
		}
	    else {
			for (a=0; a<maxcluster; a++) {
			   	unsigned long value;
	   			ret=_f_getclustervalue(vi,a+2,&value);
		   		if (ret) return ret;

			   	if (!value) ++(pspace->free);
   				else if (value==F_CLUSTER_BAD) ++(pspace->bad);
   				else ++(pspace->used);
		   	}
		}

		vi->clspace.clfree=pspace->free;
		vi->clspace.clused=pspace->used;
		vi->clspace.clbad =pspace->bad ;
		vi->cspaceok=1;
	}
	else { /* runtime calculeted */
		pspace->free=vi->clspace.clfree;
		pspace->used=vi->clspace.clused;
		pspace->bad=vi->clspace.clbad;
	}


	clustersize=vi->bootrecord.sector_per_cluster;
	clustersize*=F_SECTOR_SIZE;
	
	for (a=0;(clustersize&1)==0;a++) clustersize>>=1;
	pspace->total_high=(pspace->total)>>(32-a);
	pspace->total<<=a;
	pspace->free_high=(pspace->free)>>(32-a);
	pspace->free<<=a;
	pspace->used_high=(pspace->used)>>(32-a);
	pspace->used<<=a;
	pspace->bad_high=(pspace->bad)>>(32-a);
	pspace->bad<<=a;

	return F_NO_ERROR;
}



/****************************************************************************
 * _f_emptywritecache
 *
 * Write all the entries in the cache to the volume.
 * Write caching only works with fn_write. The concept is that if fn_write
 * is called with big size, the continous F_SECTOR_SIZE writes are done
 * in one step, except if the cache is full.
 * In this way the intermediate filesystem buffer is not used, so we save
 * a lot of memcpy-s and continous sectors are written at the same time.
 *
 ***************************************************************************/
int _f_emptywritecache(F_VOLUME *vi, F_FILEINT *f)
{
  int i,j;
  int ret;

  i=0;
  j=0;
  ret=0;
  while (i<f->WrDataCache.N)
  {
    for (j=i+1;j<f->WrDataCache.N && ((f->WrDataCache.pos+(j-1))->sector)+1==(f->WrDataCache.pos+j)->sector && (unsigned)(j-i)<256; j++);
    ret=_f_writesector(vi,f->WrDataCache.ptr+i*F_SECTOR_SIZE,(f->WrDataCache.pos+i)->sector,j-i);
    if (ret) break;
    i=j;
  }

  if (ret)
  {
    F_POS act_pos=f->pos;

    for (;i<f->WrDataCache.N;i++)
    {
      int bad=0;
      
      _memcpy(&(f->pos),f->WrDataCache.pos+i,sizeof(F_POS));
    
write_again0:
      ret=_f_writesector(vi,f->WrDataCache.ptr+i*F_SECTOR_SIZE,f->pos.sector,1);
      if (ret) 
      {
        if (vi->state!=F_STATE_WORKING) return ret; /* check if still working volume */
	
        ret=_f_dobadblock(vi,f);
        if (ret) return ret;
 
        if (!f->pos.prevcluster) 
        {
          f->startcluster=f->pos.cluster;
        }
        else 
        {
          ret=_f_setclustervalue(vi,f->pos.prevcluster,f->pos.cluster);
          if (ret) return ret;
        }
        
        bad=1;
        goto write_again0;
      }

      if (bad)
      {
        F_POS *s=f->WrDataCache.pos+i;

        for (j=f->WrDataCache.N-1;j>=i;j--)
        {
          F_POS *d=f->WrDataCache.pos+j;

          if (d->cluster==s->cluster)
          {
            d->cluster=f->pos.cluster;
            d->prevcluster=f->pos.prevcluster;
            d->sectorbegin=f->pos.sectorbegin;
            d->sectorend=f->pos.sectorend;
          }
        }
      }
    }

    f->pos=act_pos;
  }
  
  f->WrDataCache.N=0;

  return F_NO_ERROR;
}


/****************************************************************************
 *
 * _f_emptywritebuffer
 *
 * empty write buffer if it contains unwritten data
 *
 * INPUTS
 *
 * vi - volume pointer
 * f - internal file pointer
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
int _f_emptywritebuffer(F_VOLUME *vi,F_FILEINT *f,char *ptr) {
int ret;

	if (!f->modified) return F_NO_ERROR;

	if (f->pos.sector>=f->pos.sectorend) {
		if (!f->startcluster) {
			ret=_f_alloccluster(vi,&f->startcluster);
			if (ret) return ret;

			_f_clustertopos(vi,f->startcluster,&f->pos);

			ret=_f_setclustervalue(vi,f->startcluster,F_CLUSTER_LAST);
			if (ret) return ret;
		}
		else {
			unsigned long value;
			ret=_f_getclustervalue(vi,f->pos.cluster,&value);
			if (ret) return ret;
					  
			if (value<F_CLUSTER_RESERVED) {  /* we are in chain */
				_f_clustertopos(vi,value,&f->pos); /* go to next cluster */
			}
			else {
				unsigned long nextcluster;

				ret=_f_alloccluster(vi,&nextcluster);
				if (ret) return ret;

				ret=_f_setclustervalue(vi,nextcluster,F_CLUSTER_LAST);
				if (ret) return ret;

				ret=_f_setclustervalue(vi,f->pos.cluster,nextcluster);
				if (ret) return ret;

				_f_clustertopos(vi,nextcluster,&f->pos);
			}
		}
	}

	if (ptr)
	{
	  if (f->WrDataCache.N==WR_DATACACHE_SIZE) 
	  {
	    ret=_f_emptywritecache(vi,f);
	    if (ret) return ret;
	  }
	  
	  if (f->WrDataCache.N==0) f->WrDataCache.ptr=ptr;

	  _memcpy(f->WrDataCache.pos+(f->WrDataCache.N++),&(f->pos),sizeof(F_POS));
	}
	else
        {
write_again1:
	  ret=_f_writesector(vi,f->data,f->pos.sector,1);
	  if (ret) {
	 	if (vi->state!=F_STATE_WORKING) return ret; /* check if still working volume */
		
	 	ret=_f_dobadblock(vi,f);
	 	if (ret) return ret;

		if (!f->pos.prevcluster) {
			f->startcluster=f->pos.cluster;
		}
		else {
			ret=_f_setclustervalue(vi,f->pos.prevcluster,f->pos.cluster);
			if (ret) return ret;
		}

	 	goto write_again1;
	  }
	}

	f->modified=0;

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_fseek
 *
 * subfunction for f_seek it moves position into given offset and read
 * the current sector
 *
 * INPUTS
 *
 * vi - volume pointer
 * f - F_FILEINT structure which file position needed to be modified
 * offset - position from start
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_fseek(F_VOLUME *vi,F_MULTI *fm,F_FILEINT *f,long offset) {
unsigned long cluster;
long clustersize;
int ret;
long rem=0;
	if (offset<0) offset=0;
	if ((unsigned long)offset>f->filesize) {
		if (f->mode!=F_FILE_RDP && f->mode!=F_FILE_WR && f->mode!=F_FILE_WRP && f->mode!=F_FILE_A && f->mode!=F_FILE_AP) return F_ERR_NOTOPEN;
		rem=offset-f->filesize;
		offset=f->filesize;
	}

	if (offset>=(long)f->abspos && offset<(long)f->abspos+F_SECTOR_SIZE && (!rem)) {
		f->relpos=offset-f->abspos;
		return 0;
	}

	if ( f->modified )
	{
		ret=_f_emptywritebuffer(vi,f,NULL); 
		if (ret) {
		 	f->mode=F_FILE_CLOSE; /* cant accessed any more */
			return ret;
		}

		ret=_f_writefatsector(vi);
		if (ret) {
			f->mode=F_FILE_CLOSE;
			return ret;
		}
		
#if F_MAXSEEKPOS
		_fn_updateseekpos(f);
#endif
	}

	f->abspos=0;
	f->relpos=0;
	f->pos.prevcluster=0;
	f->pos.cluster=f->startcluster;

	clustersize=vi->bootrecord.sector_per_cluster;
	clustersize*=F_SECTOR_SIZE;


/*  check offset in the seekpos table */
#if F_MAXSEEKPOS
	{
		long pos=offset >> f->seekshift;
		pos--;
		if (pos>=F_MAXSEEKPOS) pos=F_MAXSEEKPOS-1;

		for (;pos>=0; pos--) {
			if (f->seekpos[pos]!=-1) {
				f->pos.cluster=f->seekpos[pos];
				f->pos.prevcluster=f->seekprev[pos];
				offset-=(pos+1)<<f->seekshift;
				f->abspos+=(pos+1)<<f->seekshift;
				break;
			}
		}
	}
#endif

	/* calc cluster */
	while (offset>=clustersize) {
		ret=_f_getclustervalue(vi,f->pos.cluster,&cluster);
		if (ret) {
			f->mode=F_FILE_CLOSE;
			return ret;
		}

		offset-=clustersize;
		f->abspos+=clustersize;

		if (cluster>=F_CLUSTER_RESERVED) {
			if (!offset) {
				_f_clustertopos(vi,f->pos.cluster,&f->pos);
				f->pos.sector=f->pos.sectorend;
				if (rem) goto add_rem;
				return F_NO_ERROR; /* but eof! */
			}

			f->mode=F_FILE_CLOSE;
			return F_ERR_INVALIDSECTOR;
		}

		f->pos.prevcluster=f->pos.cluster;
		f->pos.cluster=cluster;

#if F_MAXSEEKPOS
		_fn_updateseekpos(f);
#endif
	}

	_f_clustertopos(vi,f->pos.cluster,&f->pos);

	while (offset>=F_SECTOR_SIZE) {
		f->pos.sector++;

		offset-=F_SECTOR_SIZE;
		f->abspos+=F_SECTOR_SIZE;
	}

	f->relpos=offset;

	ret=_f_getcurrsector(vi,f,NULL,0);
	if (ret) return ret;

#if F_MAXSEEKPOS
		_fn_updateseekpos(f);
#endif

add_rem:
	if (rem) {
	   (void)_memset(truncate_tmp,0,sizeof(truncate_tmp));
		
		while (rem) {
			long size=rem;
			if (size>(long)sizeof(truncate_tmp)) size=(long)sizeof(truncate_tmp);

			if (size!=fn_write(fm,truncate_tmp,1,size,(F_FILE *)(f->file.reference))) {
				f->mode=F_FILE_CLOSE;
				return F_ERR_WRITE;
			}
			rem-=size;
		}
	}

	return F_NO_ERROR;
}



/****************************************************************************
 *
 * _f_removechain
 *
 * remove cluster chain from fat
 *
 * INPUTS
 *
 * vi - volume pointer
 * cluster - first cluster in the cluster chain
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/

int _f_removechain(F_VOLUME *vi,unsigned long cluster) {


	if (cluster<vi->lastalloccluster) { /* this could be the begining of alloc */
		vi->lastalloccluster=cluster;
	}

	while (cluster<F_CLUSTER_RESERVED && cluster>=2) {
		unsigned long nextcluster;
		
		int ret=_f_getclustervalue(vi,cluster,&nextcluster);
		if (ret) return ret;

		ret=_f_setclustervalue(vi,cluster,F_CLUSTER_FREE);
		if (ret) return ret;

		if (vi->cspaceok) {
		 	vi->clspace.clused--;
		 	vi->clspace.clfree++;
		}

#ifdef FATBITFIELD_ENABLE
		if (vi->mediatype==F_FAT32_MEDIA) {
			unsigned long sector=cluster/(F_SECTOR_SIZE/4);
			vi->fatbitfield[sector >> 3]&=~(unsigned char)(1<<(sector&7));
		}
#endif


		cluster=nextcluster;
	}	

	return _f_writefatsector(vi);
}





/****************************************************************************
 * _f_updatefileentry
 * Updated a file directory entry or removes the entry 
 * and the fat chain belonging to it.
 ***************************************************************************/

int _f_updatefileentry (F_VOLUME *vi, F_FILEINT *f, int remove)
{
  F_DIRENTRY *de;

  de=(F_DIRENTRY*)(vi->direntry+sizeof(F_DIRENTRY)*f->dirpos.pos);

  if (_f_getdirsector(vi,f->dirpos.sector) || remove) 
  {
    (void)_f_removechain(vi,f->startcluster); 
    _f_setdecluster(vi,de,0);
    _f_setlong(de->filesize,0);
    (void)_f_writedirsector(vi);
    return F_ERR_WRITE;
  }
  
  if (   (_f_getlong(de->filesize)==(unsigned long)(f->filesize)) 
      && (_f_getdecluster(vi,de)==f->startcluster) )  return F_NO_ERROR;

  _f_setdecluster(vi,de,f->startcluster);
  _f_setlong(de->filesize,f->filesize);
  _f_setword(de->cdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
  _f_setword(de->ctime,f_gettime());  /* if there is realtime clock then creation time could be set from */
  
  if (vi->mediatype==F_FAT32_MEDIA) 
  {
    _f_setword(de->lastaccessdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
  }
  
  return _f_writedirsector(vi);
}  

/****************************************************************************
 *
 * _f_check_handle
 *
 * internal function it checks if a file handler is valid and converts it
 * into internal file handler
 *
 * INPUTS
 *
 * filehandle - which filehandle needs to be checked
 *
 * RETURNS
 *
 * 0 - if filehandle is not correct
 * F_FILEINT structure pointer if successfully
 *
 ***************************************************************************/
			 
F_FILEINT *_f_check_handle(F_FILE *filehandle) {
F_FILEINT *f;
int a=((1<<F_MAXFILES_SHIFT)-1);

	if (((int)filehandle&a)>=F_MAXFILES) return 0; /* out of range */
	f=&f_filesystem.files[((int)filehandle&a)];
	if (filehandle!=f->file.reference) return 0;

	return f;
}

/****************************************************************************
 *
 * fn_close
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

int fn_close(F_MULTI *fm,F_FILE *filehandle) {
F_VOLUME *vi;
F_FILEINT *f=_f_check_handle(filehandle);
int ret;
int rc=F_ERR_NOTOPEN;

	if (!f) return rc;

	ret=_f_getvolume(fm,f->drivenum,&vi);
	if (ret) return ret;

	switch (f->mode) {
	case F_FILE_CLOSE: return F_ERR_NOTOPEN;		   /* it was not open */

	case F_FILE_RD: 
				f->mode=F_FILE_CLOSE;
				rc=F_NO_ERROR;
				break;
	case F_FILE_RDP: 
	case F_FILE_WR: 
	case F_FILE_A:  
	case F_FILE_AP:  
	case F_FILE_WRP:
				f->mode=F_FILE_CLOSE;

				if (_f_emptywritebuffer(vi,f,NULL)) {
					(void)_f_updatefileentry(vi,f,1);
					rc=F_ERR_WRITE;
					break;
				}

				if (_f_writefatsector(vi)) {
					(void)_f_updatefileentry(vi,f,1);
					rc=F_ERR_WRITE;
					break;
				}
#ifdef FATCACHE_ENABLE
				if (_f_fatcache_flush(vi,0))
				{
					rc=F_ERR_WRITE;
					break;
				}
#endif

				rc=_f_updatefileentry(vi,f,0);
				break;
	}

#ifdef USE_MALLOC
        free(f->WrDataCache.pos);
#endif

  	return rc;
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

int fn_flush(F_MULTI *fm,F_FILE *filehandle) {
F_VOLUME *vi;
F_FILEINT *f=_f_check_handle(filehandle);
int ret;

	if (!f) return F_ERR_NOTOPEN;

	ret=_f_getvolume(fm,f->drivenum,&vi);
	if (ret) return ret;

	switch (f->mode) {
	case F_FILE_RDP: 
	case F_FILE_WR: 
	case F_FILE_A:  
	case F_FILE_AP:  
	case F_FILE_WRP:
		
				if (_f_emptywritebuffer(vi,f,NULL)) {
					(void)_f_updatefileentry(vi,f,1);
					return F_ERR_WRITE;
				}

				if (_f_writefatsector(vi)) {
					(void)_f_updatefileentry(vi,f,1);
					return F_ERR_WRITE;
				}
#ifdef FATCACHE_ENABLE
				if (_f_fatcache_flush(vi,0))
				{
					return F_ERR_WRITE;
				}
#endif

				return _f_updatefileentry(vi,f,0);
	}

	return F_ERR_NOTOPEN;		   /* it was not open */
}

/****************************************************************************
 *
 * fn_read
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
 * with the number of read items 
 *
 ***************************************************************************/

long fn_read(F_MULTI *fm,void *buf,long size,long size_st,F_FILE *filehandle) {
F_VOLUME *vi;
F_FILEINT *f=_f_check_handle(filehandle);
char *buffer=(char*)buf;
long retsize=0;
int ret;
int N=0;
int direct=0;
long rs=size;

	if (!f) return 0;

	if (f->mode!=F_FILE_RD && f->mode!=F_FILE_RDP && f->mode!=F_FILE_WRP && f->mode!=F_FILE_AP) return 0;

	size*=size_st;

	if (_f_getvolume(fm,f->drivenum,&vi)) return 0; /* cant read any */

	if (size+f->relpos+f->abspos >= f->filesize) {	/* read len longer than the file */
		size=(f->filesize)-(f->relpos)-(f->abspos);  /* calculate new size */
	}

	if (size<=0) return 0;

	while (size) {
		unsigned long rdsize=size;

		if (f->relpos==F_SECTOR_SIZE) {
			if ( f->modified )
			{
				ret=_f_emptywritebuffer(vi,f,NULL); /* empty write buffer automatically goes to next sector */
				if (ret) {
					f->mode=F_FILE_CLOSE; /* no more read allowed */
					return retsize/rs;
				}
		
				ret=_f_writefatsector(vi);
				if (ret) {
					f->mode=F_FILE_CLOSE;
					return retsize/rs;
				}
#if F_MAXSEEKPOS
		_fn_updateseekpos(f);
#endif
			}

			f->abspos+=f->relpos;
			f->relpos=0;

			f->pos.sector++;	/* goto next */

			if (size>F_SECTOR_SIZE)
			{
			  direct=1;
			  N=size/F_SECTOR_SIZE;
			  ret=_f_getcurrsector(vi,f,buffer,&N);
			  if (size==N*F_SECTOR_SIZE) (void)_memcpy(f->data,buffer+(N-1)*F_SECTOR_SIZE,F_SECTOR_SIZE);
			  --N;
			  f->pos.sector+=N;
			  N*=F_SECTOR_SIZE;
			  buffer+=N;
			  size-=N;
			  retsize+=N;
			  f->abspos+=N;
			}
			else 
			{
			  direct=0;
			  ret=_f_getcurrsector(vi,f,NULL,0);
			}
		
#if F_MAXSEEKPOS
			_fn_updateseekpos(f);
#endif

			if (ret==F_ERR_EOF && (!size)) 
			{
			  return retsize/rs;
			}

			if (ret) {
				f->mode=F_FILE_CLOSE; /* no more read allowed */
				return retsize/rs;
			}
		}
		
		if (rdsize>=F_SECTOR_SIZE-f->relpos) {
			rdsize=F_SECTOR_SIZE-f->relpos;
		}

		if (!direct) (void)_memcpy((void *)buffer,(void *)(f->data+f->relpos),rdsize);

		buffer+=rdsize;
		f->relpos+=rdsize;
		size-=rdsize;
		retsize+=rdsize;

	}

	return retsize/rs;

}

/****************************************************************************
 *
 * fn_write
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
 * with the number of written items 
 *
 ***************************************************************************/

long fn_write(F_MULTI *fm,const void *buf,long size,long size_st,F_FILE *filehandle) {
F_VOLUME *vi;
F_FILEINT *f=_f_check_handle(filehandle);
char *buffer=(char*)buf;
long retsize=0;
int ret;
char *ptr=NULL;
long ws=size;

	if (!f) return 0;

	if (f->mode!=F_FILE_WR && f->mode!=F_FILE_A && f->mode!=F_FILE_RDP && f->mode!=F_FILE_WRP && f->mode!=F_FILE_AP) return 0;

	size*=size_st;

	if (_f_getvolume(fm,f->drivenum,&vi)) return 0; /* can't write */

	while (size) {
		unsigned long wrsize=size;

		if (f->relpos==F_SECTOR_SIZE) { /* now full */
			if (_f_emptywritebuffer(vi,f,ptr)) {
				f->mode=F_FILE_CLOSE;

	                        if (_f_emptywritecache(vi,f)==0 && f->startcluster)
				{
				  if (_f_updatefileentry(vi,f,0)==0) return retsize/ws;
				}
				else
				{
				  (void)_f_updatefileentry(vi,f,1);
				}

				return 0;
			}

#if F_MAXSEEKPOS
		_fn_updateseekpos(f);
#endif
			f->abspos+=f->relpos;
			f->relpos=0;

			f->pos.sector++;	/* goto next */
			if (wrsize<F_SECTOR_SIZE)
			{
			  ret=_f_getcurrsector(vi,f,NULL,0);

			  if (ret) {
			  	if (ret!=F_ERR_EOF) {
					f->mode=F_FILE_CLOSE; /* no more read allowed */
					return retsize/ws;
				}
			  }
			}
		}

		if (wrsize>=F_SECTOR_SIZE-f->relpos) {
			wrsize=F_SECTOR_SIZE-f->relpos;
		}

		if (wrsize==F_SECTOR_SIZE && (unsigned long)size!=wrsize) 
                  ptr=buffer;
		else
		  (void)_memcpy((void *)(f->data+f->relpos),(void *)buffer,wrsize);

		f->modified=1;	 /* sector is modified */

		buffer+=wrsize;
		f->relpos+=wrsize;
		size-=wrsize;
		retsize+=wrsize;

		if (f->filesize<f->abspos+f->relpos) {
			f->filesize=f->abspos+f->relpos;
		}
	}

	if (_f_emptywritecache(vi,f)) {
		f->mode=F_FILE_CLOSE;
		(void)_f_removechain(vi,f->startcluster);
		return 0;
	}

	return retsize/ws;
}

/****************************************************************************
 *
 * fn_seek
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

int fn_seek(F_MULTI *fm,F_FILE *filehandle,long offset,long whence) {
F_FILEINT *f=_f_check_handle(filehandle);
F_VOLUME *vi;
int ret;

	if (!f) return F_ERR_NOTOPEN;

	if (f->mode!=F_FILE_RD && f->mode!=F_FILE_WR && f->mode!=F_FILE_A && f->mode!=F_FILE_RDP && f->mode!=F_FILE_WRP && f->mode!=F_FILE_AP) return F_ERR_NOTOPEN;

	ret=_f_getvolume(fm,f->drivenum,&vi);
	if (ret) return ret;

	switch (whence) {
	case F_SEEK_CUR:  return _f_fseek(vi,fm,f,f->abspos+f->relpos+offset);
	case F_SEEK_END:  return _f_fseek(vi,fm,f,f->filesize+offset);
	case F_SEEK_SET:  return _f_fseek(vi,fm,f,offset);
	}
	return F_ERR_NOTUSEABLE;
}

/****************************************************************************
 *
 * fn_tell
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

long fn_tell(F_FILE *filehandle) {
F_FILEINT *f=_f_check_handle(filehandle);

	if (!f) return 0;

	if (f->mode!=F_FILE_RD && f->mode!=F_FILE_WR && f->mode!=F_FILE_A && f->mode!=F_FILE_RDP && f->mode!=F_FILE_WRP && f->mode!=F_FILE_AP) return 0;

	return f->abspos+f->relpos;
}


/****************************************************************************
 *
 * fn_eof
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

int fn_eof(F_FILE *filehandle) {
F_FILEINT *f=_f_check_handle(filehandle);
		  
	if (!f) return F_ERR_NOTOPEN;  /* if error */
	if (f->abspos+f->relpos<f->filesize) return 0;
	return F_ERR_EOF;/* EOF */
}


/****************************************************************************
 *
 * fn_rewind
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

int fn_rewind(F_MULTI *fm,F_FILE *filehandle) {
	return fn_seek(fm, filehandle, 0L, F_SEEK_SET);
}

/****************************************************************************
 *
 * fn_putc
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

int fn_putc(F_MULTI *fm,int ch,F_FILE *filehandle) {
unsigned char tmpch=(unsigned char)(ch);
	if (fn_write(fm,&tmpch,1,1,filehandle)==1) return tmpch;
	return -1;
}

/****************************************************************************
 *
 * fn_getc
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

int fn_getc(F_MULTI *fm,F_FILE *filehandle) {
unsigned char ch;
	if (fn_read(fm,&ch,1,1,filehandle)==1) return ch;
	return -1;
}



/****************************************************************************
 *
 * fnSetTask
 *
 * Searching for an entry where the task infos are
 *
 * INPUTS
 *
 * fm - where to store information
 *
 * RETURNS
 *
 * 0 - if found
 * 1 - if no more entry
 *
 ***************************************************************************/

#if (!F_CAPI_USED) 
int fnSetTask(F_MULTI **fm) {
int a,b;
long ID=fn_gettaskID();

	  for (a=0; a<F_MAXTASK;a++) {
#ifdef USE_MALLOC
		  if (g_multi[a] && g_multi[a]->ID==ID) {  /* check if exist */
			  *fm=g_multi[a];
			  g_multi[a]->pmutex=0;
			  return 0; /* free to use */
		  }
#else
		  if (g_multi[a].ID==ID) {  /* check if exist */
			  *fm=&g_multi[a];
			  g_multi[a].pmutex=0;
			  return 0; /* free to use */
		  }
#endif
	  }

	  for (a=0; a<F_MAXTASK;a++) {
#ifdef USE_MALLOC
		  if (g_multi[a]==NULL) {	 /* check for empty space*/
			  g_multi[a]=(F_MULTI *)malloc(sizeof(F_MULTI));
			  if (g_multi[a]==NULL)
			  {
			   return 1;
			  }
			  g_multi[a]->ID=ID;	  /* set task ID */
			  g_multi[a]->f_curdrive=0;
			  for (b=0; b<F_MAXVOLUME; b++) {
				  g_multi[a]->f_vols[b].cwd[0]=0;
			  }
			  *fm=g_multi[a];
			  g_multi[a]->pmutex=0;
			  return 0; /* free to use */
		  }
#else
		  if (!g_multi[a].ID) {	 /* check for empty space*/
			  g_multi[a].ID=ID;	  /* set task ID */
			  g_multi[a].f_curdrive=0;
			  for (b=0; b<F_MAXVOLUME; b++) {
				  g_multi[a].f_vols[b].cwd[0]=0;
			  }
			  *fm=&g_multi[a];
			  g_multi[a].pmutex=0;

			  return 0; /* free to use */
		  }
#endif
	  }

	  return 1; /* no space to set up new task */
}
#endif

/****************************************************************************
 *
 * f_releaseFS
 *
 * Release used task specified F_MULTI structure
 *
 * INPUT
 *
 * ID - which ID need to be released
 *
 ***************************************************************************/

#if (!F_CAPI_USED) 
void f_releaseFS(long ID) {
int a;
  for (a=0; a<F_MAXTASK;a++) {
#ifdef USE_MALLOC
 	  if (g_multi[a] && g_multi[a]->ID==ID) {
 	  	  free(g_multi[a]);
 	  	  g_multi[a]=NULL;
		  return;
	  }
#else
 	  if (g_multi[a].ID==ID) {
		  g_multi[a].ID=0;
		  return;
	  }
#endif
  }
}
#endif

/****************************************************************************
 *
 * _f_mutex_get
 *
 * Requests for a mutex.
 *
 *
 * RETURNS
 *
 * 0 - if access granted
 * 1 - if busy
 *
 ***************************************************************************/

int _f_mutex_get(F_MULTI *fm,F_VOLUME *vi) {
	if (fm->pmutex==&vi->mutex) {	  /* check if we already locked it */
		return F_NO_ERROR;		
	}

	if (!f_mutex_get(&vi->mutex)) {
		fm->pmutex=&vi->mutex; /* for releasing after finished whole access */
		return F_NO_ERROR;
	}

	return F_ERR_BUSY;
}


/****************************************************************************
 *
 * _f_mutex_put
 *
 * Release used mutex 
 *
 ***************************************************************************/
#if (!F_CAPI_USED) 
void _f_mutex_put(F_MULTI *fm) {
	if (fm->pmutex) {
		(void)f_mutex_put(fm->pmutex); /* release it */
		fm->pmutex=0;
	}
}
#endif

/****************************************************************************
 *
 *  fn_get_oem
 *
 *  Get OEM name
 *
 ***************************************************************************/
int fn_get_oem (F_MULTI *fm, int drivenum, char *str, long maxlen) 
{
  F_VOLUME *vi;
  int ret;
  int i;

  ret=_f_getvolume(fm,drivenum,&vi);
  if (ret) return ret;
  if (maxlen)
  {
    if (maxlen>sizeof(vi->bootrecord.OEM_name)) maxlen=sizeof(vi->bootrecord.OEM_name);
                                           else --maxlen;
    for (i=0;i<maxlen;i++) str[i]=vi->bootrecord.OEM_name[i];
    str[i]=0;
  }
  return F_NO_ERROR;
}


/****************************************************************************
 *
 * fn_seteof
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

int fn_seteof(F_MULTI *fm,F_FILE *filehandle) {
F_FILEINT *f=_f_check_handle(filehandle);
F_VOLUME *vi;
int ret;
unsigned long cluster;

	if (!f) return F_ERR_NOTOPEN;

	if (f->mode!=F_FILE_WR && f->mode!=F_FILE_RDP && f->mode!=F_FILE_WRP ) return F_ERR_NOTOPEN;

	ret=_f_getvolume(fm,f->drivenum,&vi);
	if (ret) return ret;


	ret=_f_getclustervalue(vi,f->pos.cluster,&cluster);
	if (ret) return ret;

	ret=_f_removechain(vi,cluster);
    if (ret) return ret;

	ret=_f_setclustervalue(vi,f->pos.cluster,F_CLUSTER_LAST);
	if (ret) return ret;

	f->filesize=f->abspos+f->relpos;

	if (!f->filesize) {
		if (f->startcluster>=2 && f->startcluster<F_CLUSTER_RESERVED) {
			ret=_f_removechain(vi,f->startcluster);
			if (ret) return ret;
		}
		f->startcluster=0;
		f->modified=0; /* no need to save */
	}

#if F_MAXSEEKPOS
	_fn_removeseekpos(f);
#endif

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _fn_initseekdivisor
 *
 * Initializing seek table with empty (-1) entries
 *
 * INPUTS
 *
 * f - file pointer
 * vi - volume pointer
 *
 ***************************************************************************/

#if F_MAXSEEKPOS
void _fn_initseekdivisor(F_FILEINT *f,F_VOLUME *vi) {
long clustersize;
long tmp;
long seekdivizor;
int a;
	clustersize=vi->bootrecord.sector_per_cluster;
	clustersize*=F_SECTOR_SIZE;

	tmp=f->filesize/F_MAXSEEKPOS;
	tmp=(tmp+(clustersize>>1))/clustersize;
	if (!tmp) tmp=1;

	seekdivizor=tmp*clustersize;

	f->seekshift=9;
	tmp=512;
	for (a=0; a<31; a++) {
		if (tmp>=seekdivizor) break;
		tmp<<=1;
		f->seekshift++;
	}

	for (a=0; a<F_MAXSEEKPOS; a++) {
		f->seekpos[a]=-1;  /* entry is not initiated */
	}
}
#endif

/****************************************************************************
 *
 * _fn_updateseekpos
 *
 * updating seek table according f->abspos
 *
 * INPUTS
 *
 * f - file pointer
 *
 ***************************************************************************/

#if F_MAXSEEKPOS
void _fn_updateseekpos(F_FILEINT *f) {
long pos;
	pos=f->abspos >> f->seekshift;
	pos--;
	if (pos>=0 && pos<F_MAXSEEKPOS) {
		if (f->seekpos[pos]==-1) {
			f->seekpos[pos]=f->pos.cluster;
			f->seekprev[pos]=f->pos.prevcluster;
		}
	}
}
#endif

/****************************************************************************
 *
 * _fn_removeseekpos
 *
 * removing entries from seek table
 *
 * INPUTS
 *
 * f - filepointer
 *
 ***************************************************************************/

#if F_MAXSEEKPOS
void _fn_removeseekpos(F_FILEINT *f) {
long pos;
	pos=f->filesize >> f->seekshift;

	if ((pos << f->seekshift) == (long)f->filesize) pos--;	 /* remove entry if its equal also */

	if (pos<0) pos=0;

	for (;pos<F_MAXSEEKPOS; pos++) {
		f->seekpos[pos]=-1;
	}
}
#endif


/****************************************************************************
 *
 * end of common.c
 *
 ***************************************************************************/

#endif /* _COMMON_C_ */

