#ifndef versionH
#define versionH


extern const char version[];
extern const unsigned int versionreg;


typedef struct tag_firmwarestruct
{
	unsigned int spu2;		//slave spu firmware version
	unsigned int spu1;		//master spu firmware version
}firmwarestruct;

extern firmwarestruct firmware;

void FirmwareComparison(void);
void SetSlaveVersion(unsigned int ver);
unsigned int GetSlaveVersion(void);

#endif


