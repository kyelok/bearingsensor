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
#include "port.h"
#include "common.h"

#if F_LONGFILENAME

/* THIS MODULE IS FOR FAT WITH LONG FILE NAMES */
/* PLEASE CHECK FAT.H WITH F_LONGFILENAME DECLARATION */



/****************************************************************************
 *
 * _towchar
 *
 * convert a string into wide char format
 *
 * INPUTS
 *
 * nconv - where to convert
 * s - original string
 *
 * RETURNS
 *
 * wide char string
 *
 ***************************************************************************/
#ifdef HCC_UNICODE
wchar *_towchar(wchar *nconv, const char *s) {
int a;
	for (a=0; a<F_MAXPATH-1; a++) {
		nconv[a]=(unsigned char)*s++;
	}
	nconv[a]=0; /* terminates it */
	return nconv;
}
#endif


/****************************************************************************
 *
 * _fromwchar
 *
 * convert a wide char format to string
 *
 * INPUTS
 *
 * s - destination string
 * nconv - original wide char string
 *
 * RETURNS
 *
 * wide char string
 *
 ***************************************************************************/
#ifdef HCC_UNICODE
char *_fromwchar (char *s, wchar *nconv) {
int a;
	for (a=0; a<F_MAXPATH-1; a++) {
		*s++=(unsigned char)nconv[a];
	}
	*s=0; /* terminates it */
	return s;
}
#endif

/****************************************************************************
 *
 * _f_getdirsector
 *
 * read a directory sector
 *
 * INPUTS
 *
 * vi - volume pointer
 * sector - which sector is needed
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
int _f_getdirsector(F_VOLUME *vi,unsigned long sector) {
int ret=F_NO_ERROR;
	ret=_f_readsector(vi,vi->direntry,sector,1);
	if (!ret) vi->direntrysector=sector;
	else vi->direntrysector=(unsigned long)(-1);
	return ret;
}

/****************************************************************************
 *
 * _f_writedirsector
 *
 * Write directory sector, which was last read
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
int _f_writedirsector(F_VOLUME *vi) {
   if (vi->direntrysector!=(unsigned long)(-1)) {
#ifdef DIRCACHE_ENABLE
        if (vi->direntrysector-vi->dircache_start<vi->dircache_size)
        {
	  (void)_memcpy(vi->dircache+(((vi->direntrysector)-(vi->dircache_start))<<9),vi->direntry,F_SECTOR_SIZE);
	}
#endif
   	return _f_writesector(vi,vi->direntry,vi->direntrysector,1);
   }
   return F_ERR_INVALIDSECTOR;
}

/****************************************************************************
 *
 * _f_checkname
 *
 * checking filename for special characters
 *
 * INPUTS
 *
 * name - filename (e.g.: filename)
 *
 * RETURNS
 *
 * 0 - if no contains invalid character
 * other - if contains any invalid character
 *
 ***************************************************************************/

static long _f_checkname(W_CHAR *lname) {
	for (;;) {
		W_CHAR ch=*lname++;

		if (!ch) return 0;

		if (ch=='|') return 1;
		if (ch=='<') return 1;
		if (ch=='>') return 1;
		if (ch=='/') return 1;
		if (ch=='\\') return 1;
		if (ch==':') return 1;
	}
}


/****************************************************************************
 *
 * _f_checknamewc
 *
 * checking filename for wildcard character
 *
 * INPUTS
 *
 * lname - filename (e.g.: filename)
 *
 * RETURNS
 *
 * 0 - if no contains wildcard character (? or *)
 * other - if contains any wildcard character
 *
 ***************************************************************************/

static long _f_checknamewc(const W_CHAR *lname) {
	for (;;) {
		W_CHAR ch=*lname++;

		if (!ch) return 0;

		if (ch>0 && ch<0x20) return 1;
		if (ch=='?') return 1;
		if (ch=='*') return 1;

		if (ch=='|') return 1;
		if (ch=='<') return 1;
		if (ch=='>') return 1;
		if (ch=='/') return 1;
		if (ch=='\\') return 1;
		if (ch==':') return 1;
	}
}

/****************************************************************************
 *
 * _f_setfsname
 *
 * convert a single string into F_NAME structure
 *
 * INPUTS
 *
 * name - combined name with drive,path,filename,extension used for source
 * fsname - where to fill this structure with separated drive,path,name,ext
 *
 * RETURNS
 *
 * 0 - if successfully
 * other - if name contains invalid path or name
 *
 ***************************************************************************/

static int _f_setfsname(F_MULTI *fm,const W_CHAR *name,F_NAME *fsname) {
int pathpos=0;
int namepos=0;
int a;

	if (!name[0]) return 1; /* no name */

	if (name[1]==':') {
		int drv=_f_toupper(name[0]);
		if (drv>='A' && drv<='Z') {
			fsname->drivenum=drv-'A';
			name+=2; /* skip drive number */
		}
		else return 1; /* invalid drive */
	}
	else {
		fsname->drivenum=fn_getdrive(fm);
	}

	if (name[0]!='/' && name[0]!='\\') {
#ifdef HCC_UNICODE
   		if (fn_wgetdcwd(fm,fsname->drivenum,fsname->path,F_MAXPATH)) return 1; /* error */
#else
   		if (fn_getdcwd(fm,fsname->drivenum,fsname->path,F_MAXPATH)) return 1; /* error */
#endif
   		for (pathpos=0; fsname->path[pathpos];) pathpos++;
	}

	for (;;) {
		W_CHAR ch=*name++; 

		if (!ch) break;

		if (ch==':') return 1; /* not allowed */

		if (ch=='/' || ch=='\\') {
			if (pathpos) {
				if (fsname->path[pathpos-1]=='/') return 1; /* not allowed double  */
				if (fsname->path[pathpos-1]=='\\') return 1; /* not allowed double  */

				if (pathpos>=F_MAXPATH-2) return 1; /* path too long */
				fsname->path[pathpos++]=F_SEPARATORCHAR;
			}

			for (;namepos;) {
				if (fsname->lname[namepos-1]!=' ') break;
				namepos--;		  /* remove end spaces */
			}

			for (a=0; a<namepos; a++) {
				if (pathpos>=F_MAXPATH-2) return 1; /* path too long */
				fsname->path[pathpos++]=fsname->lname[a];
			}
			namepos=0;
			continue;
		}

  		if (ch==' ' && (!namepos)) continue; /* remove start spaces */

		if (namepos>=F_MAXLNAME-2) return 1; /* name too long */
		fsname->lname[namepos++]=ch;
	}

	fsname->lname[namepos]=0; /* terminates it */
	fsname->path[pathpos]=0;  /* terminates it */

	for (;namepos;) {
   		if (fsname->lname[namepos-1]!=' ') break;
   		fsname->lname[namepos-1]=0; /* remove end spaces */
   		namepos--;
	}


	if (!namepos) return 2; /* no name */
	return 0;
}


/****************************************************************************
 *
 * _f_getfilename
 *
 * create a complete filename from name and extension
 *
 * INPUTS
 *
 * dest - where to store filename
 * name - name of the file
 * ext - extension of the file
 *
 ***************************************************************************/

static void _f_getfilename(W_CHAR *dest, char *name,char *ext) {
int a,len;

	for (len=a=F_MAXNAME; a; a--,len--) {
		if (name[a-1]!=' ') break;
	}
	for (a=0; a<len; a++) *dest++=*name++;


	for (len=a=F_MAXEXT; a; a--,len--) {
		if (ext[a-1]!=' ') break;
	}
	if (len) *dest++='.';

	for (a=0; a<len; a++) *dest++=*ext++;

	*dest=0; /* terminateit */
}

/****************************************************************************
 *
 * _f_strtolower
 *
 * convert a string into lower case
 *
 * INPUTS
 *
 * s - input string to convert
 *
 ***************************************************************************/

static void _f_strtolower(char *s) {
  for (;;) {
     char ch=*s;
     if (!ch) break;

     if (ch>='A' && ch<='Z') *s=(char)(ch-'A'+'a');

     s++;
  }
}

/****************************************************************************
 *
 * _f_addlfn
 *
 * add next directory entry as long filename entry, this routine will build
 * the next file name, even if its long filename or short filename
 *
 * INPUTS
 *
 * de - directory entry to add
 * plfn - pointer to lfn structure where to build
 * num - number of directory entry
 *
 ***************************************************************************/

void _f_addlfn(F_DIRENTRY *de,F_LFNINT *plfn, unsigned long num) {
F_LFN *lfn=(F_LFN *)de;
int pos;

   if ((!de->name[0]) || (de->name[0]==(unsigned char)0xe5)) {
      plfn->state=F_LFNSTATE_INV;
      return;
   }

   if (de->attr == F_ATTR_LFN) {

      if (_f_getword(lfn->clusterlo)) {  /* this is always zero in lfn!! */
         plfn->state=F_LFNSTATE_INV;
         return;
      }

      pos=(int)lfn->ord & 0x3fUL;

      if (pos<1 || pos>20) {
         plfn->state=F_LFNSTATE_INV;
         return;
      }

      pos--;
      pos*=13; /* get current char pos; */

      if (lfn->ord & 0x40) {  /* if its the end of lfn (reverse order!) */
         plfn->ord=lfn->ord;
         plfn->state=F_LFNSTATE_NEXT;
         plfn->name[pos+13]=0; /* set zero terminate */
         plfn->chksum=lfn->chksum;
         plfn->start=num;
         plfn->end=num;
      }
      else {
         
         if (plfn->chksum!=lfn->chksum) {
            plfn->state=F_LFNSTATE_INV;
            return;
         }

         if (plfn->state==F_LFNSTATE_NEXT) {
            if (lfn->ord != ((plfn->ord & 0x3f)-1)) { /* if not the next */
               plfn->state=F_LFNSTATE_INV;
               return;
            }

            plfn->ord=lfn->ord;
         }
         else {
            plfn->state=F_LFNSTATE_INV;
            return;
         }
      }

#ifdef HCC_UNICODE
      plfn->name[pos]=lfn->lfnhi_1;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_1;
      plfn->name[pos]=lfn->lfnhi_2;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_2;
      plfn->name[pos]=lfn->lfnhi_3;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_3;
      plfn->name[pos]=lfn->lfnhi_4;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_4;
      plfn->name[pos]=lfn->lfnhi_5;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_5;
      plfn->name[pos]=lfn->lfnhi_6;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_6;
      plfn->name[pos]=lfn->lfnhi_7;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_7;
      plfn->name[pos]=lfn->lfnhi_8;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_8;
      plfn->name[pos]=lfn->lfnhi_9;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_9;
      plfn->name[pos]=lfn->lfnhi_10;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_10;
      plfn->name[pos]=lfn->lfnhi_11;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_11;
      plfn->name[pos]=lfn->lfnhi_12;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_12;
      plfn->name[pos]=lfn->lfnhi_13;
	  plfn->name[pos]<<=8;
      plfn->name[pos++]|=lfn->lfn_13;
#else
      plfn->name[pos++]=lfn->lfn_1;
      plfn->name[pos++]=lfn->lfn_2;
      plfn->name[pos++]=lfn->lfn_3;
      plfn->name[pos++]=lfn->lfn_4;
      plfn->name[pos++]=lfn->lfn_5;
      plfn->name[pos++]=lfn->lfn_6;
      plfn->name[pos++]=lfn->lfn_7;
      plfn->name[pos++]=lfn->lfn_8;
      plfn->name[pos++]=lfn->lfn_9;
      plfn->name[pos++]=lfn->lfn_10;
      plfn->name[pos++]=lfn->lfn_11;
      plfn->name[pos++]=lfn->lfn_12;
      plfn->name[pos++]=lfn->lfn_13;
#endif
   }
   else { /* check sum check */

      if (plfn->state==F_LFNSTATE_NEXT) {

         if ((plfn->ord & 0x3f) == 1) {
            unsigned char chksum=0;
            int a;

            for (a=0; a<8; a++) {   
               chksum = (unsigned char)((((chksum&1)<<7) | (( chksum & 0xfe) >>1)) + de->name[a]);
            }      
   
            for (a=0; a<3; a++) {   
               chksum = (unsigned char)((((chksum&1)<<7) | (( chksum & 0xfe) >>1)) + de->ext[a]);
            }      

            if (chksum == plfn->chksum) {
               plfn->state=F_LFNSTATE_LFN;
               plfn->end=num;
               return;
            }
         }
      }

      plfn->start=plfn->end=num; /* only short name */

      _f_getfilename((W_CHAR*)plfn->name,(char*)de->name,(char*)de->ext);

      if (de->ntres & NTRES_LOW) _f_strtolower((char*)plfn->name);

      plfn->state=F_LFNSTATE_SFN;
   }

}

/****************************************************************************
 *
 * _f_getintfile
 *
 * allocate an internal file handler
 *
 * RETURNS
 *
 * internal file pointer if successful
 * zero if there was no free file pointer (see F_MAXFILES)
 *
 ***************************************************************************/

static F_FILEINT *_f_getintfile(void) {
int a;
	for (a=0; a<F_MAXFILES; a++) {
		if (f_filesystem.files[a].mode==F_FILE_CLOSE) {
			F_FILEINT *f=&f_filesystem.files[a];

			f->relpos=0;
			f->abspos=0;
			f->filesize=0;
			f->startcluster=0;
			f->pos.prevcluster=0;
			f->modified=0;

			//if ((void *)(MagicNumber<<(sizeof(F_MAXFILES_TYPE)*8))==(void *)0) MagicNumber=1;
			f->file.reference=(void *)((MagicNumber<<F_MAXFILES_SHIFT)+a);
			//++MagicNumber;
			
			f->WrDataCache.N=0;
			f->WrDataCache.ptr=NULL;

			return f;
		}
	}
	return 0;		/* no more file could be opened  */
}

/****************************************************************************
 *
 * _f_opendir
 *
 * open a directory as file
 *
 * INPUTS
 *
 * vi - volumeinfo
 * drivenum - on which drive
 * cluster - directory start cluster
 *
 * RETURNS
 *
 * file pointer or zero if any error
 *
 ***************************************************************************/
static F_FILE *_f_opendir(F_VOLUME *vi,int drivenum, unsigned long cluster) {
F_FILEINT *f=0;

	f=_f_getintfile();
	if (!f) return 0; /* no more file could be opened  */

	f->drivenum=drivenum;
	f->startcluster=cluster;

	_f_clustertopos(vi,f->startcluster,&f->pos);

#ifdef DIRCACHE_ENABLE
	{
          unsigned long n=(f->pos.sectorend)-(f->pos.sectorbegin);
          if (n>DIRCACHE_SIZE) n=DIRCACHE_SIZE;
          if (vi->dircache_start==(unsigned long)-1 || (f->pos.sector)-(vi->dircache_start)>=n)
          {
	    if (_f_readsector(vi,vi->dircache,f->pos.sectorbegin,n)) return 0;
	    vi->dircache_start=f->pos.sectorbegin;
	    vi->dircache_size=n;
	  }
	}
#else
	if (_f_readsector(vi,f->data,f->pos.sector,1)) return 0;
#endif

	f->mode=F_FILE_RD;
	return (F_FILE *)(f->file.reference);
}

/****************************************************************************
 *
 * _f_nextdirsector
 *
 * check and go to next directory sector
 *
 * INPUTS
 *
 * vi - volume info
 * f - filepointer
 *
 * RETURNS
 *
 * error code or zero if successfull
 *
 ***************************************************************************/

static int _f_nextdirsector(F_VOLUME *vi,F_FILEINT *f) {
int ret;
	if (f->relpos==F_SECTOR_SIZE) {

		if (f->modified) {
#ifdef DIRCACHE_ENABLE
			ret=_f_writesector(vi,vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9),f->pos.sector,1);
#else
		        ret=_f_writesector(vi,f->data,f->pos.sector,1);
#endif
			if (ret) return ret;
			f->modified=0;
		}

		if ((f->pos.sector+1)==f->pos.sectorend) {

			if (f->pos.cluster>=F_CLUSTER_RESERVED) return F_ERR_EOF;

	  		if (!f->pos.cluster) {
		   		if (vi->mediatype==F_FAT32_MEDIA) {
					f->pos.cluster=vi->bootrecord.rootcluster;
				}
				else return F_ERR_EOF; /* root directory */
			}

			{
				unsigned long nextcluster;
				if (_f_getclustervalue(vi,f->pos.cluster,&nextcluster)) return F_ERR_EOF; /* not found */

				if (nextcluster<2 || nextcluster>=F_CLUSTER_RESERVED) return F_ERR_EOF;

				_f_clustertopos(vi,nextcluster,&f->pos);
			}
		}
		else {
			f->pos.sector++;
		}

#ifdef DIRCACHE_ENABLE
                {
                  unsigned long n=(f->pos.sectorend)-(f->pos.sectorbegin);
                  if (n>DIRCACHE_SIZE) n=DIRCACHE_SIZE;
                  if ((f->pos.sector)-(vi->dircache_start)>=n)
	          {
                    if (f->pos.sectorbegin+n>f->pos.sector)
                    {
	              if (_f_readsector(vi,vi->dircache,f->pos.sectorbegin,n)) return 0;
	              vi->dircache_start=f->pos.sectorbegin;
	            }
	            else
                    {
	              if (_f_readsector(vi,vi->dircache,f->pos.sector,n)) return 0;
	              vi->dircache_start=f->pos.sector;
	            }
	            vi->dircache_size=n;
	          }
	        }
#else
		ret=_f_readsector(vi,f->data,f->pos.sector,1);
		if (ret) return ret;
#endif

		f->relpos=0;
		f->abspos+=F_SECTOR_SIZE;
	}

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_seekdir
 *
 * seek into directory
 *
 * INPUTS
 *
 * vi - volumeinfo
 * file - filepointer
 * offset - number of directory entries
 * whence - how to seek
 *
 * RETURNS
 *
 * error code or zero if successfull
 *
 ***************************************************************************/

static int _f_seekdir(F_VOLUME *vi,F_FILE *file,long offset, long whence) {
F_FILEINT *f=_f_check_handle(file);
int ret;
	if (!f) return F_ERR_NOTOPEN;

	if (offset==-1 && whence==F_SEEK_CUR && f->relpos) {
		f->relpos-=sizeof (F_DIRENTRY);
		return F_NO_ERROR;
	}

	offset*=sizeof(F_DIRENTRY);

	switch (whence) {
	case F_SEEK_CUR:  offset=f->abspos+f->relpos+offset; break;
	case F_SEEK_SET:  break;
	default: return F_ERR_NOTUSEABLE;
	}

	if (f->modified) {
#ifdef DIRCACHE_ENABLE
		ret=_f_writesector(vi,vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9),f->pos.sector,1);
#else
		ret=_f_writesector(vi,f->data,f->pos.sector,1);
#endif
		if (ret) return ret;
		f->modified=0;
	}

	f->relpos=0;
	f->abspos=0;

	_f_clustertopos(vi,f->startcluster,&f->pos);

	for (;;) {

		if (offset<F_SECTOR_SIZE) {
			f->relpos=offset;

#ifdef DIRCACHE_ENABLE
			{
                          unsigned long n=(f->pos.sectorend)-(f->pos.sectorbegin);
                          if (n>DIRCACHE_SIZE) n=DIRCACHE_SIZE;
                          if ((f->pos.sector)-(vi->dircache_start)>=n)
	                  {
                            if (f->pos.sectorbegin+n>f->pos.sector)
                            {
	                      if (_f_readsector(vi,vi->dircache,f->pos.sectorbegin,n)) return 0;
	                      vi->dircache_start=f->pos.sectorbegin;
	                    }
	                    else
	                    {
	                      if (_f_readsector(vi,vi->dircache,f->pos.sector,n)) return 0;
	                      vi->dircache_start=f->pos.sector;
	                    }
	                    vi->dircache_size=n;
	                  }
	                }
#else
			ret=_f_readsector(vi,f->data,f->pos.sector,1);
			if (ret) return ret;
#endif
			return F_NO_ERROR;
		}

		offset-=F_SECTOR_SIZE;
		f->abspos+=F_SECTOR_SIZE;

		if ((f->pos.sector+1)==f->pos.sectorend) {

			if (f->pos.cluster>=F_CLUSTER_RESERVED) return F_ERR_EOF;

	  		if (!f->pos.cluster) {
				if (vi->mediatype==F_FAT32_MEDIA) {
					f->pos.cluster=vi->bootrecord.rootcluster;
				}
				else return F_ERR_EOF; /* root directory */
			}

			{
				unsigned long nextcluster;
				if (_f_getclustervalue(vi,f->pos.cluster,&nextcluster)) return F_ERR_EOF; /* not found */

				if (nextcluster<2 || nextcluster>=F_CLUSTER_RESERVED) return F_ERR_EOF;

				_f_clustertopos(vi,nextcluster,&f->pos);
			}
		}
		else {
			f->pos.sector++;	  
		}

	}

}

/****************************************************************************
 *
 * _f_writedir
 *
 * write directory entry into directory
 *
 * INPUTS
 *
 * vi - volumeinfo
 * de - directory entry needs written
 * file - filepointer
 *
 * RETURNS
 *
 * error code or zero if successfull
 *
 ***************************************************************************/

static int _f_writedir(F_VOLUME *vi,F_DIRENTRY *de,F_FILE *file) {
F_FILEINT *f=_f_check_handle(file);
int ret;
	if (!f) return F_ERR_NOTOPEN;

	ret=_f_nextdirsector(vi,f);
	if (ret) return ret;

#ifdef DIRCACHE_ENABLE
	(void)_memcpy(vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9)+f->relpos,(void *)de,sizeof (F_DIRENTRY));
#else
	(void)_memcpy(f->data+f->relpos,(void *)de,sizeof (F_DIRENTRY));
#endif
	f->relpos+=sizeof (F_DIRENTRY);

	f->modified=1;

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_readdir
 *
 * read next directory entry
 *
 * INPUTS
 *
 * vi - volumeinfo
 * de - where to store information
 * file - filepointer
 *
 * RETURNS
 *
 * error code or zero if successfull
 *
 ***************************************************************************/

static int _f_readdir(F_VOLUME *vi,F_DIRENTRY *de,F_FILE *file) {
F_FILEINT *f=_f_check_handle(file);
int ret;
	if (!f) return F_ERR_NOTOPEN;

	ret=_f_nextdirsector(vi,f);
	if (ret) return ret;

#ifdef DIRCACHE_ENABLE
	(void)_memcpy((void *)de,vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9)+f->relpos,sizeof (F_DIRENTRY));
#else
	(void)_memcpy((void *)de,f->data+f->relpos,sizeof (F_DIRENTRY));
#endif
	f->relpos+=sizeof (F_DIRENTRY);

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_closedir
 *
 * close a directory, and carry on error code 
 *
 * INPUTS
 *
 * vi - volumeinfo
 * file - file pointer
 * errcode - errorcode 
 *
 * RETURNS
 *
 * error code or zero if successfull
 *
 ***************************************************************************/

static int _f_closedir(F_VOLUME *vi,F_FILE *file, int errcode) {
F_FILEINT *f=_f_check_handle(file);

	if (!f) {
		if (errcode) return errcode;
		return F_ERR_NOTOPEN;
	}

	f->mode=F_FILE_CLOSE;

	if (f->modified) {
#ifdef DIRCACHE_ENABLE
		int ret=_f_writesector(vi,vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9),f->pos.sector,1);
#else
		int ret=_f_writesector(vi,f->data,f->pos.sector,1);
#endif
		if (ret) {
			if (errcode) return errcode;
			return ret;
		}
		f->modified=0;
	}

	if (errcode) return errcode;
	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_removelfn
 *
 * remove lfn entry from directory
 *
 * INPUTS
 *
 * vi - volumeinfo
 * drivenum - drive number
 * cluster - cluster of directory
 * lfn - long file name to remove (findfile fills starts and ends)
 *
 * RETURNS
 *
 * 0 - if successfully
 * or error code
 *
 ***************************************************************************/

static int _f_removelfn(F_VOLUME *vi,int drivenum, unsigned long cluster, F_LFNINT *lfn) {
F_DIRENTRY de;
unsigned long a;
F_FILE *file;
int ret;

	if (lfn->state!=F_LFNSTATE_LFN && lfn->state!=F_LFNSTATE_SFN) {
		return F_ERR_INVALIDNAME;
	}

	file=_f_opendir(vi,drivenum,cluster);
	if (!file) return F_ERR_INVALIDDIR;

	ret=_f_seekdir(vi,file,lfn->start,F_SEEK_SET);
	if (ret) return	_f_closedir(vi,file,ret);

	for (a=lfn->start; a<=lfn->end; a++) {
		ret=_f_readdir(vi,&de,file);		
		if (ret) return	_f_closedir(vi,file,ret);

		ret=_f_seekdir(vi,file,-1,F_SEEK_CUR);
		if (ret) return	_f_closedir(vi,file,ret);

		de.name[0]=0xe5;

		ret=_f_writedir(vi,&de,file);		
		if (ret) return	_f_closedir(vi,file,ret);
	}

   return _f_closedir(vi,file,F_NO_ERROR);
}

/****************************************************************************
 *
 * _f_findfile
 *
 * internal function to finding file in directory entry
 *
 * INPUTS
 *
 * vi - volumeinfo structure, where to find file
 * lname - filename
 * pos - where to start searching, and contains current position
 * pde - store back the directory entry pointer
 * lfn - long file name to store info
 *
 * RETURNS
 *
 * 0 - if file was not found
 * 1 - if file was found
 *
 ***************************************************************************/

static int _f_findfile(F_VOLUME *vi,W_CHAR *lname,F_POS *pos, F_DIRENTRY **pde, F_LFNINT *lfn) {
unsigned long denum=0;
W_CHAR sname[8+3+2];

   lfn->state=F_LFNSTATE_INV;
   lfn->start=(unsigned long)(-1);
   lfn->end=(unsigned long)(-1);

	while (pos->cluster<F_CLUSTER_RESERVED) {

		for (;pos->sector<pos->sectorend; pos->sector++) {
			F_DIRENTRY *de=(F_DIRENTRY*)(vi->direntry+sizeof(F_DIRENTRY)*pos->pos);

			if (_f_getdirsector(vi,pos->sector)) return 0; /* notfound */

			for (; pos->pos<F_SECTOR_SIZE/sizeof(F_DIRENTRY);de++,pos->pos++) {
				unsigned int b;

				_f_addlfn(de,lfn,denum);

				denum++;

				if (!de->name[0]) return 0;						 /* empty */
				if (de->name[0]==(unsigned char)0xe5) continue; /* deleted */
				if (de->attr & F_ATTR_VOLUME) continue;

				for (b=0;;b++) {
					W_CHAR ch=(W_CHAR)_f_toupper(lfn->name[b]);
					if (ch != _f_toupper(lname[b])) break; /* differs */
					if (!ch) {
						if (pde) *pde=de;
						return 1;
					}
				}

				_f_getfilename(sname,(char*)de->name,(char*)de->ext);
            
				for (b=0;;b++) {
					W_CHAR ch=(W_CHAR)_f_toupper(sname[b]);
					if (ch != _f_toupper(lname[b])) break; /* differs */
					if (!ch) {
						if (pde) *pde=de;
						return 1;
					}
				}
			}

			pos->pos=0;
		}

 		if (!pos->cluster) {
			if (vi->mediatype==F_FAT32_MEDIA) {
				pos->cluster=vi->bootrecord.rootcluster;
			}
			else return 0; /* root directory */
		}

		{
			unsigned long nextcluster;
			if (_f_getclustervalue(vi,pos->cluster,&nextcluster)) return 0; /* not found */

	   		if (nextcluster<2 || nextcluster>=F_CLUSTER_RESERVED) return 0; /* eof */

			_f_clustertopos(vi,nextcluster,pos);
		}

	}

	return 0;
}


/***************************************************************************
 *
 *
 * _f_cmp_wname
 *
 * function for checking a nem with wild card to original
 *
 * INPUTS
 *
 * wname - wild card name (e.g. *.* or ?a.*)
 * name - original name to check
 *
 * RETURNS
 *
 * 0 - if not equal
 * 1 - if equal or match
 *
 ***************************************************************************/
int _f_cmp_wname (const W_CHAR *wname, const W_CHAR *name) 
{
  const W_CHAR *wild_wname=0;
  const W_CHAR *wild_name;
  W_CHAR act;
  W_CHAR wild_end=0;
  char wild;

  wild=0;
  wild_name=0;
  for (;;)
  {
    act=*name++;
    act=(W_CHAR)_f_toupper(act);
    if (act==0)
    {
      while (*wname=='?' || *wname=='*') ++wname;
      if (*wname) return 0;
      break;
    }

    if (wild)
    {
 __f_cmp_wname_check_end:
      if (act==wild_end)
      {
        wild=0;
        wild_wname=wname++;
        wild_name=name;
      }
      continue;
    }

    if (*wname=='*')
    {
      wild=1;
      while (*wname=='*') wname++;
      wild_end=(W_CHAR)_f_toupper(*wname);
      goto __f_cmp_wname_check_end;
    }
    else if (*wname!='?' && _f_toupper(*wname)!=act)
    {
      if (wild_name)
      {
        wild=1;
        wname=wild_wname;
        name=wild_name;
      }
      else return 0;
    }
    else
    {
      ++wname;
    }
  }

  return 1;
}




/****************************************************************************
 *
 * _fs_findlfilewc
 *
 * internal function to finding file in directory entry with wild card
 *
 * INPUTS
 *
 * vi - volumeinfo structure, where to find file
 * lname - filename
 * pos - where to start searching, and contains current position
 * pde - store back the directory entry pointer
 *
 * RETURNS
 *
 * 0 - if file was not found
 * 1 - if file was found
 *
 ***************************************************************************/
static int _f_findlfilewc(F_VOLUME *vi,W_CHAR *lname,F_POS *pos, F_DIRENTRY **pde, F_LFNINT *lfn) {
unsigned long denum=0;
W_CHAR sname[8+3+2];

   lfn->state=F_LFNSTATE_INV;

	while (pos->cluster<F_CLUSTER_RESERVED) {

		for (;pos->sector<pos->sectorend; pos->sector++) {
			F_DIRENTRY *de=(F_DIRENTRY*)(vi->direntry+sizeof(F_DIRENTRY)*pos->pos);

			if (_f_getdirsector(vi,pos->sector)) return 0; /* not found */

			for (; pos->pos<F_SECTOR_SIZE/sizeof(F_DIRENTRY);de++,pos->pos++) {

				_f_addlfn(de,lfn,denum);
				denum++;

				if (!de->name[0]) return 0;						 /* empty */
				if (de->name[0]==(unsigned char)0xe5) continue; /* deleted */
				if (de->attr & F_ATTR_VOLUME) continue;

				if (_f_cmp_wname(lname,lfn->name))
				{
				  if (pde) *pde=de;
				  return 1;
				}

				_f_getfilename(sname,(char*)de->name,(char*)de->ext);

                                {
                                  if (de->ext[0]==' ') 
                                  {
                                    int i;
                                    for (i=0;sname[i];i++);
                                    sname[i]='.';
                                    sname[i+1]=0;
                                  }
				  if (_f_cmp_wname(lname,sname))
				  {
				    if (pde) *pde=de;
				    return 1;
				  }
				}
			}

			pos->pos=0;
		}

 		if (!pos->cluster) {
   			if (vi->mediatype==F_FAT32_MEDIA) {
				pos->cluster=vi->bootrecord.rootcluster;
			}
			else return 0; /* root directory */
		}

		{
			unsigned long nextcluster;
			if (_f_getclustervalue(vi,pos->cluster,&nextcluster)) return 0; /* not found */

			if (nextcluster<2 || nextcluster>=F_CLUSTER_RESERVED) return 0; /* not found */

			_f_clustertopos(vi,nextcluster,pos);
		}
	}

	return 0;
}



/****************************************************************************
 *
 * _f_getnextstring
 *
 * finding in a string a string until / or \ termination
 *
 * INPUTS
 *
 * dest - where to store next string
 * sou - original text
 *
 * RETURNS
 *
 * new start position in the original
 *
 ***************************************************************************/

static W_CHAR * _f_getnextstring(W_CHAR *dest,W_CHAR *sou) {
	for (;;) {
		W_CHAR ch=*sou;
		if (!ch) break;
		sou++;
		if (ch=='/' || ch=='\\') break;
		
		*dest++=ch;
	}
	*dest=0;
	return sou;
}

/****************************************************************************
 *
 * _f_findpath
 *
 * finding out if path is valid in F_NAME and
 * correct path info with absolute path (removes relatives)
 *
 * INPUTS
 *
 * vi - volumename
 * fsname - filled structure with path,drive
 * pos - where to start searching, and contains current position
 *
 * RETURNS
 *
 * 0 - if path was not found or invalid
 * 1 - if path was found
 *
 ***************************************************************************/

static int _f_findpath(F_VOLUME *vi,F_NAME *fsname,F_POS *pos) {
F_LFNINT lfn;
F_DIRENTRY *de;
W_CHAR *path=fsname->path;
W_CHAR currname[F_MAXPATH];
W_CHAR oripath[F_MAXPATH];
int pathpos=0;
int a;

	oripath[0]=0;

	_f_clustertopos(vi,0,pos);

	for (;*path;) {
		path=_f_getnextstring(currname,path);

		if ((pos->cluster==0) && (currname[0]=='.') && (!currname[1])) {
			_f_clustertopos(vi,0,pos);
			continue;
		}
		else {
			if (!_f_findfile(vi,currname,pos,&de,&lfn)) return 0;
			if (!(de->attr & F_ATTR_DIR ) ) return 0;

			_f_clustertopos(vi,_f_getdecluster(vi,de),pos);
		}
		
		if (lfn.name[0]=='.') {
			if (!lfn.name[1]) {
				continue; /* nothing to modify */
			}
			else if (lfn.name[1]=='.') {
				if (lfn.name[2]) return 0; /* more than 2 dots */

				if (!pathpos) return 0; /* we are on the top */
				for (;pathpos;) {		/* set back with one level */
					pathpos--;
					if (oripath[pathpos]==F_SEPARATORCHAR) break;
				}
			}
		}
		else {
			if (pathpos) oripath[pathpos++]=F_SEPARATORCHAR;
			for (a=0;;) {
				W_CHAR ch=lfn.name[a++];
				if (!ch) break;
				oripath[pathpos++]=ch;
			}
		}
	}
	oripath[pathpos]=0; /* terminates it; */
	(void)_memcpy((void *)(fsname->path),oripath,sizeof(fsname->path));	 
	return 1; /* found */
}


/****************************************************************************
 *
 * fn_getdcwd
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

int fn_getdcwd(F_MULTI *fm,int drivenum, char *buffer, int maxlen ) {
F_VOLUME *vi;
int a;
W_CHAR *cwd;
int ret; 

	if (drivenum < 0 || drivenum>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;
	vi=&f_filesystem.volumes[drivenum];

	cwd=fm->f_vols[drivenum].cwd;

	ret=_f_mutex_get(fm,vi);
	if (ret) return ret;

	if (_f_checkstatus(vi)) {
		fm->f_vols[drivenum].cwd[0]=0; /* remove cwd */
		vi->state=F_STATE_NEEDMOUNT; /* mount is needed */
	}

	if (!maxlen) return F_NO_ERROR;

	maxlen--;	/* need for termination */

	for (a=0; a<maxlen; a++) {
		char ch=(char)cwd[a];
		buffer[a]=ch;
		if (!ch) break;
	}

	buffer[a]=0;	/* add terminator at the end */

	return F_NO_ERROR;
}
#ifdef HCC_UNICODE
int fn_wgetdcwd(F_MULTI *fm,int drivenum, wchar *buffer, int maxlen ) {
F_VOLUME *vi;
int a;
wchar *cwd;
int ret;

	if (drivenum < 0 || drivenum>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;
	vi=&f_filesystem.volumes[drivenum];

	cwd=fm->f_vols[drivenum].cwd;

	ret=_f_mutex_get(fm,vi);
	if (ret) return ret;

	if (_f_checkstatus(vi)) {
		fm->f_vols[drivenum].cwd[0]=0; /* remove cwd */
		vi->state=F_STATE_NEEDMOUNT; /* mount is needed */
	}

	if (!maxlen) return F_NO_ERROR;

	maxlen--;	/* need for termination */

	for (a=0; a<maxlen; a++) {
		wchar ch=cwd[a];
		buffer[a]=ch;
		if (!ch) break;
	}

	buffer[a]=0;	/* add terminator at the end */

	return F_NO_ERROR;
}
#endif


/****************************************************************************
 *
 * fn_getcwd
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

int fn_getcwd(F_MULTI *fm,char *buffer, int maxlen ) {
F_VOLUME *vi;
int a;
W_CHAR *cwd;
int ret; 
int drivenum;

	drivenum=fn_getdrive(fm);
	if (drivenum < 0 || drivenum>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;
	vi=&f_filesystem.volumes[drivenum];

	cwd=fm->f_vols[drivenum].cwd;

	ret=_f_mutex_get(fm,vi);
	if (ret) return ret;

	if (_f_checkstatus(vi)) {
		fm->f_vols[drivenum].cwd[0]=0; /* remove cwd */
		vi->state=F_STATE_NEEDMOUNT; /* mount is needed */
	}

	if (!maxlen) return F_NO_ERROR;

	maxlen--;	/* need for termination */
	if (maxlen)
	{
	  *buffer++=F_SEPARATORCHAR;
	  maxlen--;
	}

	for (a=0; a<maxlen; a++) {
		char ch=(char)cwd[a];
		buffer[a]=ch;
		if (!ch) break;
	}

	buffer[a]=0;	/* add terminator at the end */

	return F_NO_ERROR;
}


#ifdef HCC_UNICODE
int fn_wgetcwd(F_MULTI *fm,wchar *buffer, int maxlen ) {
F_VOLUME *vi;
int a;
wchar *cwd;
int ret;
int drivenum;

	drivenum=fn_getdrive(fm);
	if (drivenum < 0 || drivenum>=F_MAXVOLUME) return F_ERR_INVALIDDRIVE;
	vi=&f_filesystem.volumes[drivenum];

	cwd=fm->f_vols[drivenum].cwd;

	ret=_f_mutex_get(fm,vi);
	if (ret) return ret;

	if (_f_checkstatus(vi)) {
		fm->f_vols[drivenum].cwd[0]=0; /* remove cwd */
		vi->state=F_STATE_NEEDMOUNT; /* mount is needed */
	}

	if (!maxlen) return F_NO_ERROR;

	maxlen--;	/* need for termination */
	if (maxlen)
	{
	  *buffer++=F_SEPARATORCHAR;
	  maxlen--;
	}

	for (a=0; a<maxlen; a++) {
		wchar ch=cwd[a];
		buffer[a]=ch;
		if (!ch) break;
	}

	buffer[a]=0;	/* add terminator at the end */

	return F_NO_ERROR;
}
#endif


/****************************************************************************
 *
 * fn_findfirst
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

int fn_findfirst(F_MULTI *fm,const char *filename,F_FIND *find) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
F_WFIND find2;
int rc;

	rc=fn_wfindfirst(fm,_towchar(s,filename),&find2);
	if (rc==0)
	{
	  int i;
	  _fromwchar(find->filename,find2.filename);
	  for (i=0;i<F_MAXNAME;i++) find->name[i]=find2.name[i];
	  for (i=0;i<F_MAXEXT;i++) find->ext[i]=find2.ext[i];
	  find->attr=find2.attr;
	  find->ctime=find2.ctime;
	  find->cdate=find2.cdate;
	  find->cluster=find2.cluster;
	  find->filesize=find2.filesize;
	  find->findfsname=find2.findfsname;
	  find->pos=find2.pos;
	}
	return rc;
}

int fn_wfindfirst(F_MULTI *fm,const wchar *filename,F_WFIND *find) {
#endif
F_VOLUME *vi;
int ret;

	if (_f_setfsname(fm,filename,&find->findfsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checkname(find->findfsname.lname)) return F_ERR_INVALIDNAME;/* invalid name, wildcard is ok */

	ret=_f_getvolume(fm,find->findfsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&find->findfsname,&find->pos)) return F_ERR_INVALIDDIR; /* search for path */

#ifdef HCC_UNICODE
	return fn_wfindnext(fm,find);
#else
	return fn_findnext(fm,find);
#endif
}

/****************************************************************************
 *
 * fn_findnext
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

int fn_findnext(F_MULTI *fm,F_FIND *find) {
#ifdef HCC_UNICODE
F_WFIND find2;
int rc;

	find2.findfsname=find->findfsname;
	find2.pos=find->pos;
	rc=fn_wfindnext(fm,&find2);
	if (rc==0)
	{
	  int i;
	  _fromwchar(find->filename,find2.filename);
	  for (i=0;i<F_MAXNAME;i++) find->name[i]=find2.name[i];
	  for (i=0;i<F_MAXEXT;i++) find->ext[i]=find2.ext[i];
	  find->attr=find2.attr;
	  find->ctime=find2.ctime;
	  find->cdate=find2.cdate;
	  find->cluster=find2.cluster;
	  find->filesize=find2.filesize;
	  find->findfsname=find2.findfsname; 
	  find->pos=find2.pos;
	}
	return rc;
}

int fn_wfindnext(F_MULTI *fm,F_WFIND *find) {
#endif
F_LFNINT lfn;
F_VOLUME *vi;
F_DIRENTRY *de;
int a;
int ret;

	ret=_f_getvolume(fm,find->findfsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findlfilewc(vi,find->findfsname.lname,&find->pos,&de,&lfn)) return F_ERR_NOTFOUND;
  
	for (a=0;a<F_MAXNAME; a++) find->name[a]=de->name[a];
	for (a=0;a<F_MAXEXT; a++) find->ext[a]=de->ext[a];

        (void)_memcpy((void *)(find->filename),lfn.name,sizeof(find->filename));

	find->attr=de->attr;
	find->cdate=_f_getword(de->cdate);
	find->ctime=_f_getword(de->ctime);
	find->filesize=_f_getlong(de->filesize);
	find->cluster=_f_getdecluster(vi,de);
	find->pos.pos++; /* goto next position */

	return 0;
}

/****************************************************************************
 *
 * fn_chdir
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

int fn_chdir(F_MULTI *fm,const char *dirname) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wchdir(fm,_towchar(s,dirname));
}

int fn_wchdir(F_MULTI *fm,const wchar *dirname) {
#endif
F_POS pos;
F_VOLUME *vi;
F_NAME fsname;
int len;
int a;
int ret;

	ret=_f_setfsname(fm,dirname,&fsname);
	if (ret==1) return F_ERR_INVALIDNAME; /* invalid name */

	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name, wildcard is ok */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	for (len=0;fsname.path[len];) len++;
	if (len) fsname.path[len++]=F_SEPARATORCHAR;

	for (a=0;;) {
		W_CHAR ch=fsname.lname[a++];
		fsname.path[len++]=ch;
		if (!ch) break;
	}
	
	if (!(_f_findpath(vi,&fsname,&pos))) return F_ERR_NOTFOUND;

	for (a=0; a<F_MAXPATH;a++) vi->cwd[a]=fsname.path[a];

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * _f_createlfn
 *
 * Create a raw lfn entry and short name,extension from long filename
 *
 * INPUTS
 *
 * lname - original long file name
 * lfn - lfn structure where to create raw lfn entry
 * name - where to create 8 bytes short name 
 * ext - where to create 3 bytes short extension 
 *
 ***************************************************************************/

static void _f_createlfn(W_CHAR *lname, F_LFNINT *lfn, char *name,char *ext) {
int len;
int a,b;

	lfn->state=F_LFNSTATE_INV;

	for (len=0;;len++) {
		if (!lname[len]) break;
	}

	lfn->end=len;

	(void)_memset(name,' ',8);
	(void)_memset(ext,' ',3);

	for (a=len;a>0; a--) {
		if (lname[a-1]=='.') {
			for (b=0;;a++) {
				W_CHAR ch=(W_CHAR)_f_toupper(lname[a]);
				if (!ch) break;
				if (ch==32) continue;
				if (ch==']') ch='_';
				if (ch=='[') ch='_';

				ext[b++]=(char)ch;
				if (b==3) break;
			}
			break;
		}
	}

	for (a=b=0;; a++) {
		W_CHAR ch=(W_CHAR)_f_toupper(lname[a]);
		if (!ch) break;
		if (ch==32) continue;
		if (ch=='.') break;
		if (ch==']') ch='_';
		if (ch=='[') ch='_';

		name[b++]=(char)ch;
		if (b==8) break;
	}

    _f_getfilename((W_CHAR*)lfn->name,name,ext);
	for (a=0; ;a++) {
		if (lname[a] != lfn->name[a]) {

			for (a=7; a>=0; a--) {
				if (name[a]!=32) break;
			}

			if (a<0) return;

			a++; /* goto next char */
			if (a>6) a=6;

			lfn->start=a; /* start counter of name */

			lfn->state=F_LFNSTATE_LFN;
			lfn->ord=(unsigned char)((len+12)/13);
			return; 
		}
		if (!lfn->name[a]) break;
	}
	
 	lfn->state=F_LFNSTATE_SFN;
	lfn->ord=0; /* no lfn needed */
}

/****************************************************************************
 *
 * _f_addentry
 *
 * Add a new directory entry into driectory list
 *
 * INPUTS
 *
 * vi - volumeinfo
 * fsname - filled F_NAME structure 
 * pos - where directory cluster chains starts
 * pde - F_DIRENTRY pointer where to store the entry where it was added
 *
 * RETURNS				   
 *
 * 0 - if successfully added
 * other - if any error (see FS_xxx errorcodes)
 *
 ***************************************************************************/

unsigned char pbitp[64];

int _f_addentry(F_VOLUME *vi,F_NAME *fsname,F_POS *pos,F_DIRENTRY **pde) {
int fat32root=0;
char name[8];
char ext[3];
F_LFNINT lfn;
int ret;
F_FILE *file;
long num=0;
long len=0;
long start=-1;
F_DIRENTRY de;

	if (!fsname->lname[0]) return F_ERR_INVALIDNAME;
	if (fsname->lname[0]=='.') return F_ERR_INVALIDNAME;

	_f_createlfn(fsname->lname,&lfn,name,ext);

	if (lfn.state==F_LFNSTATE_INV) return F_ERR_INVALIDNAME;

	if ((!pos->cluster) && (vi->mediatype==F_FAT32_MEDIA))	fat32root=1;

	file=_f_opendir(vi,fsname->drivenum,pos->cluster);
	if (!file) return F_ERR_INVALIDDIR;

	for (;;) {

		ret=_f_readdir(vi,&de,file);
		if (ret==F_ERR_EOF) {
			long a;
			unsigned long cluster;
		    F_FILEINT *f=_f_check_handle(file);
			if (!f) return _f_closedir(vi,file,F_ERR_NOMOREENTRY);

			if ((!f->pos.cluster) || (f->pos.cluster>=F_CLUSTER_RESERVED)){
				return _f_closedir(vi,file,F_ERR_NOMOREENTRY); /* EOF!! root FAT16,FAT12; */
			}

			ret=_f_alloccluster(vi,&cluster);	/* get a new one */
			if (ret) return _f_closedir(vi,file,ret);

			if (cluster<F_CLUSTER_RESERVED) {
				if (fat32root) ret=_f_setclustervalue(vi,cluster,F_CLUSTER_LASTF32R);
				else ret=_f_setclustervalue(vi,cluster,F_CLUSTER_LAST);

				if (ret) return _f_closedir(vi,file,ret);

				ret=_f_setclustervalue(vi,f->pos.cluster,cluster);
				if (ret) return _f_closedir(vi,file,ret);
				  
				ret=_f_writefatsector(vi);
				if (ret) return _f_closedir(vi,file,ret);
			}
			else return _f_closedir(vi,file,F_ERR_NOMOREENTRY);

			(void)_memset(&de,0,sizeof(F_DIRENTRY));

			a=vi->bootrecord.sector_per_cluster;
			a*=F_SECTOR_SIZE/sizeof(F_DIRENTRY);
			while (a--) {
				ret=_f_writedir(vi,&de,file);
				if (ret) return	_f_closedir(vi,file,ret);
			}

			ret=_f_seekdir(vi,file,num,F_SEEK_SET);
			if (ret) return _f_closedir(vi,file,ret);

			ret=_f_readdir(vi,&de,file); /* read new entry */
		}

		if (ret) return _f_closedir(vi,file,ret);

		if ((!de.name[0]) || (de.name[0]==(unsigned char)0xe5)) {
			if (start==-1) {
				start=num;
				len=0;
			}
			len++;

			if (len-1==lfn.ord) {

				if (lfn.state==F_LFNSTATE_SFN) {
					ret=_f_seekdir(vi,file,start,F_SEEK_SET);
					if (ret) return _f_closedir(vi,file,ret);

					_f_initentry(&de,name,ext);	

					if (vi->mediatype==F_FAT32_MEDIA) {
						_f_setword(de.crtdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
						_f_setword(de.crttime,f_gettime());  /* if there is realtime clock then creation time could be set from */
						_f_setword(de.lastaccessdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
					}

					ret=_f_writedir(vi,&de,file);
					if (ret) return _f_closedir(vi,file,ret);
				}
				else {
					long a;
					int b;
					unsigned char ok;
					F_LFN *plfn=(F_LFN *)(&de);

					{
						long range=0;
						_memset (pbitp,0,64); /* reset all bits*/
						pbitp[0]=1; /* ~0 is not allowed */

						for (;;) {
							ret=_f_seekdir(vi,file,0,F_SEEK_SET);
							if (ret) return _f_closedir(vi,file,ret);

							for (;;) {
								ok=1;
								ret=_f_readdir(vi,&de,file);
								if (ret==F_ERR_EOF) break;
								if (ret) return _f_closedir(vi,file,ret);

								if (!de.name[0]) break;
								if (de.name[0]==(unsigned char)0xe5) continue;
								if (de.attr==F_ATTR_LFN) continue;

								for (b=0; b<3; b++) {		/* 1st we compare the extension */
									if (de.ext[b]!=ext[b]) {
										ok=0;
										break;
									}
								}

								if (ok) {
									for (b=0; b<8; b++) {
										if (de.name[b]!=name[b]) {
											if (de.name[b]=='~') {
												long num=0;
												for (b++;b<8;b++) {
													num*=10;
													if (de.name[b]>='0' && de.name[b]<='9') {
														num+=(de.name[b]-'0');
													}
													else {
														ok=0;
														break;
													}
												}
												if (ok) {
													num-=range;
													if (num>=0 && num<512) {
														pbitp[num>>3]|=1<<(num&7);
													}
												}
											}
											break;
										}
									}
								}
							}

							for (a=0; a<512; a++) {
								if (pbitp[a>>3]&(1<<(a&7))) continue;

								a+=range;
								if (a<10) {
									if (lfn.start>6) lfn.start=6;
	
									name[lfn.start]='~';
									name[lfn.start+1]=(unsigned char)( (a%10)+'0');
								}
								else if (a<100) {
									if (lfn.start>5) lfn.start=5;

									name[lfn.start]='~';
									name[lfn.start+1]=(unsigned char)( (a/10)+'0');
									name[lfn.start+2]=(unsigned char)( (a%10)+'0');
								}
								else if (a<1000) {
									if (lfn.start>4) lfn.start=4;

									name[lfn.start]='~';
									name[lfn.start+1]=(unsigned char)( (a/100)+'0');
									a%=100;
									name[lfn.start+2]=(unsigned char)( (a/10)+'0');
									name[lfn.start+3]=(unsigned char)( (a%10)+'0');
								}
								else if (a<10000) {
									if (lfn.start>3) lfn.start=3;

									name[lfn.start]='~';
									name[lfn.start+1]=(unsigned char)( (a/1000)+'0');
									a%=1000;
									name[lfn.start+2]=(unsigned char)( (a/100)+'0');
									a%=100;
									name[lfn.start+3]=(unsigned char)( (a/10)+'0');
									name[lfn.start+4]=(unsigned char)( (a%10)+'0');
								}
								else return _f_closedir(vi,file,F_ERR_NOMOREENTRY);

								goto nameok;
							}

							range+=512;
							_memset (pbitp,0,64); /* reset all bits*/
						}
					}
nameok:
					ret=_f_seekdir(vi,file,start,F_SEEK_SET);
					if (ret) return _f_closedir(vi,file,ret);

					{
			            unsigned char chksum=0;

						for (a=0; a<8; a++) {   
							chksum = (unsigned char)((((chksum&1)<<7) | (( chksum & 0xfe) >>1)) + name[a]);
						}      

						for (a=0; a<3; a++) {   
							chksum = (unsigned char)((((chksum&1)<<7) | (( chksum & 0xfe) >>1)) + ext[a]);
						}      
						lfn.chksum=chksum;
					}

					for (b=1,a=lfn.ord; a>0; a--) {
						unsigned long npos=(a-1)*13;
						(void)_memset(plfn,0,sizeof(F_LFN));

						if (b==1) plfn->ord=(unsigned char)(a+0x40);
						else plfn->ord=(unsigned char)a;

						b=0;

						plfn->chksum=lfn.chksum;
						
#ifdef HCC_UNICODE
						if (npos+0<=lfn.end) {  plfn->lfn_1 =(char)fsname->lname[npos+0]; plfn->lfnhi_1 =(char)(fsname->lname[npos+0]>>8); } else plfn->lfn_1 =plfn->lfnhi_1 =(unsigned char)255;
						if (npos+1<=lfn.end) {  plfn->lfn_2 =(char)fsname->lname[npos+1]; plfn->lfnhi_2 =(char)(fsname->lname[npos+1]>>8); } else plfn->lfn_2 =plfn->lfnhi_2 =(unsigned char)255;
						if (npos+2<=lfn.end) {  plfn->lfn_3 =(char)fsname->lname[npos+2]; plfn->lfnhi_3 =(char)(fsname->lname[npos+2]>>8); } else plfn->lfn_3 =plfn->lfnhi_3 =(unsigned char)255;
						if (npos+3<=lfn.end) {  plfn->lfn_4 =(char)fsname->lname[npos+3]; plfn->lfnhi_4 =(char)(fsname->lname[npos+3]>>8); } else plfn->lfn_4 =plfn->lfnhi_4 =(unsigned char)255;
						if (npos+4<=lfn.end) {  plfn->lfn_5 =(char)fsname->lname[npos+4]; plfn->lfnhi_5 =(char)(fsname->lname[npos+4]>>8); } else plfn->lfn_5 =plfn->lfnhi_5 =(unsigned char)255;
						if (npos+5<=lfn.end) {  plfn->lfn_6 =(char)fsname->lname[npos+5]; plfn->lfnhi_6 =(char)(fsname->lname[npos+5]>>8); } else plfn->lfn_6 =plfn->lfnhi_6 =(unsigned char)255;
						if (npos+6<=lfn.end) {  plfn->lfn_7 =(char)fsname->lname[npos+6]; plfn->lfnhi_7 =(char)(fsname->lname[npos+6]>>8); } else plfn->lfn_7 =plfn->lfnhi_7 =(unsigned char)255;
						if (npos+7<=lfn.end) {  plfn->lfn_8 =(char)fsname->lname[npos+7]; plfn->lfnhi_8 =(char)(fsname->lname[npos+7]>>8); } else plfn->lfn_8 =plfn->lfnhi_8 =(unsigned char)255;
						if (npos+8<=lfn.end) {  plfn->lfn_9 =(char)fsname->lname[npos+8]; plfn->lfnhi_9 =(char)(fsname->lname[npos+8]>>8); } else plfn->lfn_9 =plfn->lfnhi_9 =(unsigned char)255;
						if (npos+9<=lfn.end) {  plfn->lfn_10=(char)fsname->lname[npos+9]; plfn->lfnhi_10=(char)(fsname->lname[npos+9]>>8); } else plfn->lfn_10=plfn->lfnhi_10=(unsigned char)255;
						if (npos+10<=lfn.end) { plfn->lfn_11=(char)fsname->lname[npos+10];plfn->lfnhi_11=(char)(fsname->lname[npos+10]>>8);} else plfn->lfn_11=plfn->lfnhi_11=(unsigned char)255;
						if (npos+11<=lfn.end) { plfn->lfn_12=(char)fsname->lname[npos+11];plfn->lfnhi_12=(char)(fsname->lname[npos+11]>>8);} else plfn->lfn_12=plfn->lfnhi_12=(unsigned char)255;
						if (npos+12<=lfn.end) { plfn->lfn_13=(char)fsname->lname[npos+12];plfn->lfnhi_13=(char)(fsname->lname[npos+12]>>8);} else plfn->lfn_13=plfn->lfnhi_13=(unsigned char)255;
#else
						if (npos+0<=lfn.end) plfn->lfn_1 =fsname->lname[npos+0]; else plfn->lfn_1 =plfn->lfnhi_1 =(unsigned char)255;
						if (npos+1<=lfn.end) plfn->lfn_2 =fsname->lname[npos+1]; else plfn->lfn_2 =plfn->lfnhi_2 =(unsigned char)255;
						if (npos+2<=lfn.end) plfn->lfn_3 =fsname->lname[npos+2]; else plfn->lfn_3 =plfn->lfnhi_3 =(unsigned char)255;
						if (npos+3<=lfn.end) plfn->lfn_4 =fsname->lname[npos+3]; else plfn->lfn_4 =plfn->lfnhi_4 =(unsigned char)255;
						if (npos+4<=lfn.end) plfn->lfn_5 =fsname->lname[npos+4]; else plfn->lfn_5 =plfn->lfnhi_5 =(unsigned char)255;
						if (npos+5<=lfn.end) plfn->lfn_6 =fsname->lname[npos+5]; else plfn->lfn_6 =plfn->lfnhi_6 =(unsigned char)255;
						if (npos+6<=lfn.end) plfn->lfn_7 =fsname->lname[npos+6]; else plfn->lfn_7 =plfn->lfnhi_7 =(unsigned char)255;
						if (npos+7<=lfn.end) plfn->lfn_8 =fsname->lname[npos+7]; else plfn->lfn_8 =plfn->lfnhi_8 =(unsigned char)255;
						if (npos+8<=lfn.end) plfn->lfn_9 =fsname->lname[npos+8]; else plfn->lfn_9 =plfn->lfnhi_9 =(unsigned char)255;
						if (npos+9<=lfn.end) plfn->lfn_10=fsname->lname[npos+9]; else plfn->lfn_10=plfn->lfnhi_10=(unsigned char)255;
						if (npos+10<=lfn.end) plfn->lfn_11=fsname->lname[npos+10];else plfn->lfn_11=plfn->lfnhi_11=(unsigned char)255;
						if (npos+11<=lfn.end) plfn->lfn_12=fsname->lname[npos+11];else plfn->lfn_12=plfn->lfnhi_12=(unsigned char)255;
						if (npos+12<=lfn.end) plfn->lfn_13=fsname->lname[npos+12];else plfn->lfn_13=plfn->lfnhi_13=(unsigned char)255;
#endif
						plfn->attr=F_ATTR_LFN;

						ret=_f_writedir(vi,&de,file);
						if (ret) return _f_closedir(vi,file,ret);
					}

					_f_initentry(&de,name,ext);	

					if (vi->mediatype==F_FAT32_MEDIA) {
						_f_setword(de.crtdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
						_f_setword(de.crttime,f_gettime());  /* if there is realtime clock then creation time could be set from */
						_f_setword(de.lastaccessdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
					}

					ret=_f_writedir(vi,&de,file);
					if (ret) return _f_closedir(vi,file,ret);
				}

				if (pde) {

					F_FILEINT *f=_f_check_handle(file);

					if (!f) return _f_closedir(vi,file,F_ERR_NOTOPEN);

					if (f->relpos>=sizeof(F_DIRENTRY)) {
						vi->direntrysector=f->pos.sector;
#ifdef DIRCACHE_ENABLE
						(void)_memcpy(vi->direntry,vi->dircache+(((f->pos.sector)-(vi->dircache_start))<<9),F_SECTOR_SIZE);
#else
						(void)_memcpy(vi->direntry,f->data,F_SECTOR_SIZE);
#endif
						*pde=(F_DIRENTRY*)(vi->direntry+f->relpos-sizeof(F_DIRENTRY));

						pos->cluster=f->pos.cluster;
						pos->pos=f->relpos/sizeof(F_DIRENTRY)-1;
						pos->sector=f->pos.sector;
						pos->sectorend=f->pos.sectorend;

					}
					else return	_f_closedir(vi,file,F_ERR_NOTOPEN);

				}

				return _f_closedir(vi,file,F_NO_ERROR); /* if ok */
			}
		}
		else start=-1;

		num++;
	}

}

/****************************************************************************
 *
 * fn_rename
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

int fn_rename(F_MULTI *fm,const char *filename, const char *newname) {
#ifdef HCC_UNICODE
wchar s1[F_MAXPATH];
wchar s2[F_MAXPATH];
	return fn_wrename(fm,_towchar(s1,filename),_towchar(s2,newname));
}

int fn_wrename(F_MULTI *fm,const wchar *filename, const wchar *newname) {
#endif
F_LFNINT lfn;
F_POS posdir;
F_POS pos;
F_VOLUME *vi;
F_DIRENTRY *de;
F_DIRENTRY deold;
F_NAME fsname;
F_NAME fsnewname;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!(_f_findpath(vi,&fsname,&posdir))) return F_ERR_INVALIDDIR;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	if (fsname.lname[0]=='.') return F_ERR_NOTFOUND;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;

	if (de->attr & F_ATTR_READONLY) return F_ERR_ACCESSDENIED;      /* readonly */

	if (_f_checklocked(fsname.drivenum,&pos)) return F_ERR_LOCKED;

	(void)_memcpy((void *)(&deold),de,sizeof(F_DIRENTRY)); /* store all properties */

	if (_f_checknamewc(newname)) return F_ERR_INVALIDNAME;/* invalid name no drive,no path */
	if (_f_setfsname(fm,newname,&fsnewname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsnewname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	if (fsnewname.lname[0]=='.') return F_ERR_INVALIDNAME;

	(void)_memcpy((void *)(fsnewname.path),fsname.path,sizeof(fsname.path));
	fsnewname.drivenum=fsname.drivenum;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	if (_f_findfile(vi,fsnewname.lname,&pos,0,&lfn)) return F_ERR_DUPLICATED;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	ret=_f_addentry(vi,&fsnewname,&pos,&de);
	if (ret) return ret;

	(void)_memcpy(deold.name,de->name,8);		 /* update name and ext */
	(void)_memcpy(deold.ext,de->ext,3);
	(void)_memcpy((void *)de,&deold,sizeof(F_DIRENTRY)); /* restore all properties */

	ret = _f_writedirsector(vi);
	if (ret) return ret;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND; /* try to find again to remove */

	return _f_removelfn(vi,fsname.drivenum,posdir.cluster,&lfn);
}


/****************************************************************************
 *
 * fn_mkdir
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

int fn_mkdir(F_MULTI *fm,const char *dirname) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wmkdir(fm,_towchar(s,dirname));
}

int fn_wmkdir(F_MULTI *fm,const wchar *dirname) {
#endif
F_LFNINT lfn;
F_FILEINT *f;
F_POS posdir;
F_POS pos;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
unsigned long cluster;
unsigned int a;
int ret;

	if (_f_setfsname(fm,dirname,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&fsname,&posdir)) return F_ERR_INVALIDDIR;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	if (fsname.lname[0]=='.') return F_ERR_NOTFOUND;
	if (_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_DUPLICATED;

	pos.cluster = posdir.cluster;  
	pos.sector	= posdir.sector;   
	pos.sectorend=posdir.sectorend;
	pos.pos=posdir.pos;      

	ret=_f_alloccluster(vi,&cluster);
	if (ret) return ret;

	ret=_f_addentry(vi,&fsname,&pos,&de);
	if (ret) return ret; /* couldnt be added */

	de->attr |= F_ATTR_DIR;		/* set as directory */


/*  */

	f=_f_getintfile();

	if (!f) return F_ERR_NOMOREENTRY;

	_f_clustertopos(vi,cluster,&f->pos);

	_f_setdecluster(vi,de,cluster); /* new dir */

/*  */

	de=(F_DIRENTRY *)(f->data);

	_f_initentry(de,".       ","   ");
	de->attr = F_ATTR_DIR;		/* set as directory */
	_f_setdecluster(vi,de,cluster);	 /* current */
	de++;

	_f_initentry(de,"..      ","   ");
	de->attr = F_ATTR_DIR;		/* set as directory */
	_f_setdecluster(vi,de,posdir.cluster); /* parent */
	de++;

	for (a=2; a<F_SECTOR_SIZE/sizeof(F_DIRENTRY); a++,de++) {
		(void)_memset((void *)de,0,sizeof(F_DIRENTRY));
	}

	ret=_f_writesector(vi,f->data,f->pos.sector,1);
	if (ret) return ret;

	f->pos.sector++;

/*  */
	de=(F_DIRENTRY *)(f->data);

	for (a=0; a<2; a++,de++) {
		(void)_memset(de,0,sizeof(F_DIRENTRY));
	}

	while(f->pos.sector<f->pos.sectorend) {
		de=(F_DIRENTRY *)(f->data);

write_again:
		ret=_f_writesector(vi,f->data,f->pos.sector,1);
		if (ret) {
		 	if (vi->state!=F_STATE_WORKING) return ret; /* check if still working volume */

		 	ret=_f_dobadblock(vi,f);
		 	if (ret) return ret;

		 	goto write_again;
		}

		f->pos.sector++;
	}

	ret=_f_setclustervalue(vi,f->pos.cluster,F_CLUSTER_LAST);
	if (ret) return ret;

	ret=_f_writefatsector(vi);
	if (ret) return ret;
#ifdef FATCACHE_ENABLE
	ret=_f_fatcache_flush(vi,0);
	if (ret) return ret;
#endif

	return _f_writedirsector(vi); /* writing  direntry */
}


/****************************************************************************
 *
 * fn_filelength
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

long fn_filelength(F_MULTI *fm,const char *filename) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wfilelength(fm,_towchar(s,filename));
}

long fn_wfilelength(F_MULTI *fm,const wchar *filename) {
#endif
F_LFNINT lfn;
F_VOLUME *vi;
F_POS pos;
F_DIRENTRY *de;
F_NAME fsname;

	if (_f_setfsname(fm,filename,&fsname)) return 0; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return 0;/* invalid name */

	if (_f_getvolume(fm,fsname.drivenum,&vi)) return 0; /* cannot get it */

	if (!_f_findpath(vi,&fsname,&pos)) return 0;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return 0;

	if (de->attr & F_ATTR_DIR) return 0;				/* directory */

	return _f_getlong(de->filesize);
}


/****************************************************************************
 *
 * fn_open
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

F_FILE *fn_open(F_MULTI *fm,const char *filename,const char *mode) {
#ifdef HCC_UNICODE
wchar s1[F_MAXPATH];
wchar s2[F_MAXPATH];
	return fn_wopen(fm,_towchar(s1,filename),_towchar(s2,mode));
}

F_FILE *fn_wopen(F_MULTI *fm,const wchar *filename,const wchar *mode) {
#endif
F_LFNINT lfn;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
char m_mode=F_FILE_CLOSE;
F_FILEINT *f=0;

	if (mode[0]=='r' && mode[1]==0) m_mode=F_FILE_RD;
	if (mode[0]=='w' && mode[1]==0) m_mode=F_FILE_WR;
	if (mode[0]=='a' && mode[1]==0) m_mode=F_FILE_A;
	if (mode[0]=='r' && mode[1]=='+' && mode[2]==0) m_mode=F_FILE_RDP;
	if (mode[0]=='w' && mode[1]=='+' && mode[2]==0) m_mode=F_FILE_WRP;
	if (mode[0]=='a' && mode[1]=='+' && mode[2]==0) m_mode=F_FILE_AP;

	if (m_mode==F_FILE_CLOSE) return 0; 			/* invalid mode */

	if (_f_setfsname(fm,filename,&fsname)) return 0; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return 0;/* invalid name */

	if (_f_getvolume(fm,fsname.drivenum,&vi)) return 0; /* cannot access */

	f=_f_getintfile();
	if (!f) return 0; /* no more file could be opened  */

	f->drivenum=fsname.drivenum;

	if (fsname.lname[0]=='.') return 0;

	switch (m_mode) {
		case F_FILE_RDP: /* r+ */
		case F_FILE_RD: /* r */

			if (!_f_findpath(vi,&fsname,&f->dirpos)) return 0;
			if (!_f_findfile(vi,fsname.lname,&f->dirpos,&de,&lfn)) return 0;

   			if (de->attr & F_ATTR_DIR) return 0;		   /* directory */
			if (m_mode==F_FILE_RDP) {
				if (de->attr & F_ATTR_READONLY) return 0;
				if (_f_checklocked(fsname.drivenum,&f->dirpos)) return 0; /* locked */
			}
			else {
				if (_f_checkreadlocked(fsname.drivenum,&f->dirpos)) return 0; /* locked */
			}


			f->startcluster=_f_getdecluster(vi,de);

			if (f->startcluster) {
				_f_clustertopos(vi,f->startcluster,&f->pos);

				f->filesize=_f_getlong(de->filesize);
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif
				f->abspos=(unsigned long)-F_SECTOR_SIZE; /* forcing seek to read 1st sector! abspos=0; */
				if (_f_fseek(vi,fm,f,0)) return 0;
			}
			else {
		 		f->pos.sector=0;
		 		f->pos.sectorend=0;
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif
			}

   			break;


	   	case F_FILE_AP:
	   	case F_FILE_A: /* a */
			if (!_f_findpath(vi,&fsname,&f->dirpos)) return 0;

			f->pos.cluster=f->dirpos.cluster;
			f->pos.pos=f->dirpos.pos;
			f->pos.sector=f->dirpos.sector;
			f->pos.sectorend=f->dirpos.sectorend;
	
			if (_f_findfile(vi,fsname.lname,&f->dirpos,&de,&lfn)) { 

   				if (de->attr & F_ATTR_DIR) return 0;		   /* directory */
				if (de->attr & F_ATTR_READONLY) return 0;

				if (_f_checklocked(fsname.drivenum,&f->dirpos)) return 0; /* locked */

				f->startcluster=_f_getdecluster(vi,de);

				f->filesize=_f_getlong(de->filesize);
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif

				if (f->startcluster) {
					_f_clustertopos(vi,f->startcluster,&f->pos);
					f->abspos=(unsigned long)-F_SECTOR_SIZE; /* forcing seek to read 1st sector! abspos=0; */
					if (_f_fseek(vi,fm,f,f->filesize)) {
						f->mode=F_FILE_CLOSE;
						return 0;
					}
				}
				else {
					f->pos.sector=0;
					f->pos.sectorend=0;

					f->relpos=0;
					f->abspos=0;
					f->filesize=0;
					f->pos.prevcluster=0;
					f->modified=0;
				}
			}
			else {

				f->dirpos.cluster=f->pos.cluster;
				f->dirpos.pos=f->pos.pos;
				f->dirpos.sector=f->pos.sector;
				f->dirpos.sectorend=f->pos.sectorend;

				_f_clustertopos(vi,f->dirpos.cluster,&f->pos);

		   		if (_f_addentry(vi,&fsname,&f->dirpos,&de)) return 0;  /* couldnt be added */

				f->relpos=0;
				f->abspos=0;
				f->filesize=0;
				f->startcluster=0;
				f->pos.prevcluster=0;
				f->modified=0;

				de->attr |= F_ATTR_ARC;		/* set as archiv */
				if (_f_writedirsector(vi)) return 0;

				f->startcluster=0;
				f->pos.sector=0;
				f->pos.sectorend=0;
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif
			}


	   		break;
   
	   	case F_FILE_WR: /* w */
	   	case F_FILE_WRP: /* w+ */
			if (!_f_findpath(vi,&fsname,&f->dirpos)) return 0;

			_f_clustertopos(vi,f->dirpos.cluster,&f->pos);
			if (_f_findfile(vi,fsname.lname,&f->pos,&de,&lfn)) {
				unsigned long cluster=_f_getdecluster(vi,de);	   /* exist */

		   		if (de->attr & F_ATTR_DIR) return 0;		   /* directory */
				if (de->attr & F_ATTR_READONLY) return 0;

				f->dirpos.cluster=f->pos.cluster;
				f->dirpos.pos=f->pos.pos;
				f->dirpos.sector=f->pos.sector;
				f->dirpos.sectorend=f->pos.sectorend;

				if (_f_checklocked(fsname.drivenum,&f->dirpos)) return 0; /* locked */

				de->filesize[0]=0;					/* reset size; */
				de->filesize[1]=0;					/* reset size; */
				de->filesize[2]=0;					/* reset size; */
				de->filesize[3]=0;					/* reset size; */
				de->attr |= F_ATTR_ARC;		/* set as archiv */
				de->clusterlo[0]=0;					/* no points anywhere */
				de->clusterlo[1]=0;					/* no points anywhere */
				de->clusterhi[0]=0;					/* no points anywhere */
				de->clusterhi[1]=0;					/* no points anywhere */

				if (vi->mediatype==F_FAT32_MEDIA) {
	         		_f_setword(de->crtdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
	         		_f_setword(de->crttime,f_gettime());  /* if there is realtime clock then creation time could be set from */
	           		_f_setword(de->lastaccessdate,f_getdate());  /* if there is realtime clock then creation date could be set from */
				}

				if (_f_writedirsector(vi)) return 0;
	
				if (_f_removechain(vi,cluster)) return 0; /* remove  */
			}
			else {
		   		if (_f_addentry(vi,&fsname,&f->dirpos,&de)) return 0;  /* couldnt be added */

				f->relpos=0;
				f->abspos=0;
				f->filesize=0;
				f->startcluster=0;
				f->pos.prevcluster=0;
				f->modified=0;
	
				de->attr |= F_ATTR_ARC;		/* set as archiv */
				if (_f_writedirsector(vi)) return 0;
			}


			f->startcluster=0;
			f->pos.sector=0;
			f->pos.sectorend=0;

#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif
	   		break;

		default: return 0; /* invalid mode */
	}

#ifdef USE_MALLOC
        f->WrDataCache.pos=(F_POS *)malloc(sizeof(F_POS)*WR_DATACACHE_SIZE);
        if (f->WrDataCache.pos==NULL) return 0;
#else
        f->WrDataCache.pos=f->WrDataCache.posbuf;
#endif
	f->mode=m_mode; /*  lock it  */

	return (F_FILE *)(f->file.reference);
}


/****************************************************************************
 *
 * fn_settimedate
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

int fn_settimedate(F_MULTI *fm,const char *filename,unsigned short ctime,unsigned short cdate) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wsettimedate(fm,_towchar(s,filename),ctime,cdate);
}

int fn_wsettimedate(F_MULTI *fm,const wchar *filename,unsigned short ctime,unsigned short cdate) {
#endif
F_LFNINT lfn;
F_POS pos;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&fsname,&pos)) return F_ERR_INVALIDDIR;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;

	_f_setword(de->ctime,ctime);
	_f_setword(de->cdate,cdate);

	return _f_writedirsector(vi);
}

/****************************************************************************
 *
 * fn_gettimedate
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

int fn_gettimedate(F_MULTI *fm,const char *filename,unsigned short *pctime,unsigned short *pcdate) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wgettimedate(fm,_towchar(s,filename),pctime,pcdate);
}

int fn_wgettimedate(F_MULTI *fm,const wchar *filename,unsigned short *pctime,unsigned short *pcdate) {
#endif
F_LFNINT lfn;
F_POS pos;
F_VOLUME *vi;
F_DIRENTRY *de;
F_NAME fsname;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&fsname,&pos)) return F_ERR_INVALIDDIR;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;


	if (pctime) *pctime=_f_getword(de->ctime);
	if (pcdate) *pcdate=_f_getword(de->cdate);

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * fn_delete
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

int fn_delete(F_MULTI *fm,const char *filename) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wdelete(fm,_towchar(s,filename));
}

int fn_wdelete(F_MULTI *fm,const wchar *filename) {
#endif
F_LFNINT lfn;
F_POS dirpos,pos;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!(_f_findpath(vi,&fsname,&dirpos))) return F_ERR_INVALIDDIR;

	(void)_memcpy((void *)&pos,(void *)&dirpos,sizeof(F_POS)); /* copy directory pos */

	if (fsname.lname[0]=='.') return F_ERR_NOTFOUND;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;

	if (de->attr & F_ATTR_DIR) return F_ERR_INVALIDDIR;		   /* directory */
	if (de->attr & F_ATTR_READONLY) return F_ERR_ACCESSDENIED;      /* readonly */
	
	if (_f_checklocked(fsname.drivenum,&pos)) return F_ERR_LOCKED;

	ret=_f_removelfn(vi,fsname.drivenum,dirpos.cluster,&lfn);
	if (ret) return ret;

	ret=_f_removechain(vi,_f_getdecluster(vi,de));
#ifdef FATCACHE_ENABLE
	if (ret) return ret;

	ret=_f_fatcache_flush(vi,0);
#endif
	return ret;
}


/****************************************************************************
 *
 * fn_getattr
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

int fn_getattr(F_MULTI *fm,const char *filename,unsigned char *attr) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wgetattr(fm,_towchar(s,filename),attr);
}

int fn_wgetattr(F_MULTI *fm,const wchar *filename,unsigned char *attr) {
#endif
F_LFNINT lfn;
F_POS pos;
F_VOLUME *vi;
F_DIRENTRY *de;
F_NAME fsname;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&fsname,&pos)) return F_ERR_INVALIDDIR;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;

	if (attr) *attr=de->attr;

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * fn_setattr
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

int fn_setattr(F_MULTI *fm,const char *filename,unsigned char attr) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wsetattr(fm,_towchar(s,filename),attr);
}

int fn_wsetattr(F_MULTI *fm,const wchar *filename,unsigned char attr) {
#endif
F_LFNINT lfn;
F_POS pos;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
int ret;

	if (_f_setfsname(fm,filename,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!_f_findpath(vi,&fsname,&pos)) return F_ERR_INVALIDDIR;
	if (!_f_findfile(vi,fsname.lname,&pos,&de,&lfn)) return F_ERR_NOTFOUND;

	attr&=F_ATTR_HIDDEN|F_ATTR_READONLY|F_ATTR_ARC|F_ATTR_SYSTEM; /* keep only valid bits */

	attr|=de->attr&(F_ATTR_DIR|F_ATTR_VOLUME); /* keep some original */

	if (de->attr==attr) return F_NO_ERROR; /* its the same */

	de->attr=attr; 

	return _f_writedirsector(vi);
}

/****************************************************************************
 *
 * fn_rmdir
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

int fn_rmdir(F_MULTI *fm,const char *dirname) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wrmdir(fm,_towchar(s,dirname));
}

int fn_wrmdir(F_MULTI *fm,const wchar *dirname) {
#endif
F_LFNINT lfn;
F_POS dirpos,pos;
F_DIRENTRY *pde;
F_NAME fsname;
F_VOLUME *vi;
F_FILE *file;
unsigned long dircluster;
int ret;

	if (_f_setfsname(fm,dirname,&fsname)) return F_ERR_INVALIDNAME; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return F_ERR_INVALIDNAME;/* invalid name */

	ret=_f_getvolume(fm,fsname.drivenum,&vi);
	if (ret) return ret;

	if (!(_f_findpath(vi,&fsname,&dirpos))) return F_ERR_INVALIDDIR;

	(void)_memcpy((void *)&pos,(void *)&dirpos,sizeof(F_POS)); /* copy directory pos */
   
	if (fsname.lname[0]=='.') return F_ERR_NOTFOUND;

	if (!_f_findfile(vi,fsname.lname,&pos,&pde,&lfn)) return F_ERR_NOTFOUND;

	if (!(pde->attr & F_ATTR_DIR)) return F_ERR_INVALIDDIR;		   /* not a directory */


	dircluster=_f_getdecluster(vi,pde);

	file=_f_opendir(vi,fsname.drivenum,dircluster);
	if (!file) return F_ERR_INVALIDDIR;

	for (;;) {
		F_DIRENTRY de;
		unsigned char ch;

		ret=_f_readdir(vi,&de,file);
		if (ret==F_ERR_EOF) break;
		if (ret) return _f_closedir(vi,file,ret);

		ch=de.name[0];
		if (!ch) break;	 /* last entry */
		if (ch==(unsigned char)0xe5) continue; /* deleted */
		if (ch=='.') continue;

		return _f_closedir(vi,file,F_ERR_NOTEMPTY);/* something is there */
	}

	ret=_f_closedir(vi,file,F_NO_ERROR);
	if (ret) return ret;

	ret=_f_removelfn(vi,fsname.drivenum,dirpos.cluster,&lfn);
	if (ret) return ret;

	ret=_f_removechain(vi,dircluster);
#ifdef FATCACHE_ENABLE
	if (ret) return ret;

	ret=_f_fatcache_flush(vi,0);
#endif
	return ret;
}


/****************************************************************************
 *
 * fn_getlabel
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

int fn_getlabel(F_MULTI *fm,int drivenum, char *label, long len) {
char tmplabel[11];
long a;
F_VOLUME *vi;
int ret;
F_FILE *file;

	if (!len) return F_NO_ERROR; /* how to store volume name? */

	ret=_f_getvolume(fm,drivenum,&vi);
	if (ret) return ret;

	(void)_memcpy(tmplabel,vi->bootrecord.volume_name,11);

	file=_f_opendir(vi,drivenum,0); /* open root; */
	if (!file) return F_ERR_READ;

	for (;;) {
		F_DIRENTRY de;

		ret=_f_readdir(vi,&de,file);
		if (ret==F_ERR_EOF) break;
		if (ret) break;

   		if (!de.name[0]) continue;						 /* empty */
	   	if (de.name[0]==(unsigned char)0xe5) continue; /* deleted */

		if (de.attr == F_ATTR_VOLUME) {
			(void)_memcpy(tmplabel,de.name,8);
   			(void)_memcpy(tmplabel+8,de.ext,3);
			break;
   		}

	}

	ret=_f_closedir(vi,file,F_NO_ERROR);
	if (ret) return ret;

	len--;
	for (a=0; a<11 && a<len; a++) {
		char ch=tmplabel[a];
		if (ch>='a' && ch<='z') ch+='A'-'a';
		label[a]=tmplabel[a];
	}
	label [a]=0; /* terminate it, this is ok because of len--! */

	for (;a>=0; a--) { /* cut the spaces */
		if (label[a]<=32) label[a]=0;
		else break;
	}

	return F_NO_ERROR;
}

/****************************************************************************
 *
 * fn_setlabel
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

int fn_setlabel(F_MULTI *fm,int drivenum, const char *label) {
int ret;
char tmplabel[11];
int a,b;
F_VOLUME *vi;
F_FILE *file;
F_POS pos;
F_NAME fsname;
F_DIRENTRY *pde;

	ret=_f_getvolume(fm,drivenum,&vi);
	if (ret) return ret;

	for (a=b=0; a<11; a++) {
		char ch=label[b];
		if (ch>='a' && ch<='z') ch+='A'-'a';

		if (ch>=32) b++;
		else ch=32;

		tmplabel[a]=ch;
	}

	file=_f_opendir(vi,drivenum,0); /* open root; */
	if (!file) return F_ERR_READ;

	for (;;) {
		F_DIRENTRY de;

		ret=_f_readdir(vi,&de,file);
		if (ret==F_ERR_EOF) break;
		if (ret) return _f_closedir(vi,file,ret);

   		if (!de.name[0]) continue;						 /* empty */
	   	if (de.name[0]==(unsigned char)0xe5) continue; /* deleted */

		if (de.attr == F_ATTR_VOLUME) {
			(void)_memcpy((void *)(de.name),(void *)tmplabel,8);
			(void)_memcpy((void *)(de.ext),(void *)(tmplabel+8),3);

			ret=_f_seekdir(vi,file,-1,F_SEEK_CUR);
			if (ret) return _f_closedir(vi,file,ret);

			ret=_f_writedir(vi,&de,file);
			if (ret) return _f_closedir(vi,file,ret);

			return _f_closedir(vi,file,F_NO_ERROR);
   		}

	}

	ret=_f_closedir(vi,file,F_NO_ERROR);
	if (ret) return ret;

	_f_clustertopos(vi,0,&pos);

	fsname.drivenum=drivenum;
	fsname.path[0]=0;
	fsname.lname[0]='X';  /* for dummy */
	fsname.lname[1]=0;

	if (_f_addentry(vi,&fsname,&pos,&pde)) return F_ERR_NOMOREENTRY;  /* couldnt be added */

	_f_initentry(pde,tmplabel,tmplabel+8);
	pde->attr=F_ATTR_VOLUME;

	return _f_writedirsector(vi);
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

char truncate_tmp[512];

F_FILE *fn_truncate(F_MULTI *fm,const char *filename,unsigned long length) {
#ifdef HCC_UNICODE
wchar s[F_MAXPATH];
	return fn_wtruncate(fm,_towchar(s,filename),length);
}

F_FILE *fn_wtruncate(F_MULTI *fm,const wchar *filename,unsigned long length) {
#endif
F_LFNINT lfn;
F_DIRENTRY *de;
F_NAME fsname;
F_VOLUME *vi;
char m_mode=F_FILE_WRP;
F_FILEINT *f=0;

#ifdef HCC_UNICODE
	if (length==0) {
		wchar mode[3];
		mode[0]='w';
		mode[1]='+';
		mode[2]=0;
		return fn_wopen(fm,filename,mode);
	}
#else
	if (length==0) return fn_open(fm,filename,"w+");
#endif
	if (_f_setfsname(fm,filename,&fsname)) return 0; /* invalid name */
	if (_f_checknamewc(fsname.lname)) return 0;/* invalid name */

	if (_f_getvolume(fm,fsname.drivenum,&vi)) return 0; /* cant open any */

	f=_f_getintfile();
	if (!f) return 0; /* no more file could be opened  */

	f->drivenum=fsname.drivenum;
	f->relpos=0;
	f->abspos=0;
	f->filesize=0;
	f->pos.prevcluster=0;
	f->modified=0;

	if (fsname.lname[0]=='.') return 0;

	if (!_f_findpath(vi,&fsname,&f->dirpos)) return 0;
	if (!_f_findfile(vi,fsname.lname,&f->dirpos,&de,&lfn)) return 0;
	if (_f_checklocked(fsname.drivenum,&f->dirpos)) return 0; /* locked */

   	if (de->attr & F_ATTR_DIR) return 0;		   /* directory */

	f->startcluster=_f_getdecluster(vi,de);

	if (f->startcluster) {
		long slen;

		_f_clustertopos(vi,f->startcluster,&f->pos);

		f->filesize=_f_getlong(de->filesize);
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif

		f->abspos=(unsigned long)-F_SECTOR_SIZE; /* forcing seek to read 1st sector! abspos=0; */

		if (length>f->filesize) slen=f->filesize;
		else slen=length;

		if (_f_fseek(vi,fm,f,slen)) return 0;
	}
	else {
		f->pos.sector=0;
		f->pos.sectorend=0;
#if F_MAXSEEKPOS
		_fn_initseekdivisor(f,vi);
#endif
	}

	if (length<f->filesize) {
		unsigned long cluster;
		int ret;

		ret=_f_getclustervalue(vi,f->pos.cluster,&cluster);
		if (ret) return 0;

		if (_f_removechain(vi,cluster)) return 0;

		ret=_f_setclustervalue(vi,f->pos.cluster,F_CLUSTER_LAST);
		if (ret) return 0;

		f->filesize=length;
	}
	else if (length>f->filesize) {
		long rem=length-f->filesize;

		f->mode=m_mode; /*  lock it  */
	   (void)_memset(truncate_tmp,0,sizeof(truncate_tmp));
		
		while (rem) {
			long size=rem;
			if (size>(long)sizeof(truncate_tmp)) size=(long)sizeof(truncate_tmp);

			if (size!=fn_write(fm,truncate_tmp,1,size,(F_FILE *)(f->file.reference))) {
				f->mode=F_FILE_CLOSE;
				return 0;
			}
			rem-=size;
		}
	}

	f->mode=m_mode; /*  lock it  */

#ifdef USE_MALLOC
        f->WrDataCache.pos=(F_POS *)malloc(sizeof(F_POS)*WR_DATACACHE_SIZE);
        if (f->WrDataCache.pos==NULL) return 0;
#else
        f->WrDataCache.pos=f->WrDataCache.posbuf;
#endif

	return (F_FILE *)(f->file.reference);
}


/****************************************************************************
 *
 * end of fat_lfn.c
 *
 ***************************************************************************/

#endif /*  F_LONGFILENAME  */

