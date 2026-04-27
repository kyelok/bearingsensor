#ifndef _MMC_MCF_H_
#define _MMC_MCF_H_

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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef HCC_HW
#define FAT_CONF_5272
#endif

#define F_MMC_DRIVE0 (void *)0	/* CS0 */
#define F_MMC_DRIVE1 (void *)1	/* CS2 */



/******************************************************************************
 *
 * only one externed function
 *
 *****************************************************************************/
extern int mmc_initfunc(F_FUNC *func,void *user_ptr);

#define MMC_ERR_NOTPLUGGED -1 /* for high level */

enum {
  MMC_NO_ERROR,
  MMC_ERR_NOTINITIALIZED=101,
  MMC_ERR_INIT,
  MMC_ERR_CMD,
  MMC_ERR_STARTBIT,
  MMC_ERR_BUSY,
  MMC_ERR_CRC,
  MMC_ERR_WRITE,
  MMC_ERR_WRITEPROTECT,
  MMC_ERR_NOTAVAILABLE
};

#ifdef __cplusplus
}
#endif

/******************************************************************************
 *
 * end of mmc.h
 *
 *****************************************************************************/

#endif /* _MMC_H_ */

