#ifndef __CHKDSK_H
#define __CHKDSK_H

#define CHKDSK_LOG_ENABLE 
#ifdef CHKDSK_LOG_ENABLE
#define CHKDSK_LOG_SIZE 8192
#endif
#define CHKDSK_MAX_DIR_DEPTH 64		/* max. stack= ~(CHKDSK_MAX_DIR_DEPTH*85)+1100 */

#define CHKDSK_ERASE_BAD_CHAIN 0x1	/* erase all bad chains */
#define CHKDSK_ERASE_LOST_CHAIN 0x2	/* erase all lost chains */
#define CHKDSK_ERASE_LOST_BAD_CHAIN 0x4	/* erase all lost bad chains */


enum {
  FC_NO_ERROR,
  FC_WRITE_ERROR=50,
  FC_READ_ERROR,
  FC_CLUSTER_ERROR,
  FC_ALLOCATION_ERROR
};


extern int f_checkdisk (int drivenum, int param);


#endif
