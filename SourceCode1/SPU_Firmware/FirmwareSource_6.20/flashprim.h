/*******************************************************************************/
#ifndef flashprimH
#define flashprimH

typedef struct tag_flashsel
{
	unsigned int code1;
	unsigned int code2;
	unsigned int code3;
	unsigned char flashok;
	volatile unsigned int *code1ptr;
}flashsel;


extern flashsel FlashSetting;

void InitFlash(void);
void ClearFlashPrim(void);
void ClearFlashBlock(unsigned int block);
void FlashToggleCheck(void);
void WriteFlash(unsigned long addr, unsigned int datawrite);
void FlashAddressSet(unsigned long addr);
unsigned int ReadFlash(unsigned long addr);

#endif
/* EOF */
