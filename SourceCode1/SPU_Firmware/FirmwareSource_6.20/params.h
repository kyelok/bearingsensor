#ifndef paramsH
#define paramsH

typedef void (*F_PARAMFUNC)(void);

typedef struct tag_parameterstruct
{
	unsigned int reg;
	int lowlim;
	unsigned int hilim;
	unsigned int *ptr;
	char stringbuf[PARAM_STR_LEN];
	F_PARAMFUNC paramfunc;
}parameterstruct;

typedef struct tag_unusedstruct
{
	unsigned int reglow;
	unsigned int reghigh;
}unusedstruct;

extern const parameterstruct parameters[NUM_PARAMETERS_IN_LIST];

int PCModifyParameter(unsigned int reg, unsigned int NumReg);

#endif

