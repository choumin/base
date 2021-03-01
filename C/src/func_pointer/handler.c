#include <stdbool.h>
#include <stdio.h>
#include "handler.h"

struct handler handlers[] = {
	{0, type0_func1, type0_func2},
	{1, type1_func1, type1_func2},
	{-1, NULL, NULL},
};

bool type0_func1(char *a, int len, void *obj)
{
	printf("func: %s, line: %d\n", __func__, __LINE__);
	return true;
}

bool type0_func2(void *obj, char *a, int len)
{
	printf("func: %s, line: %d\n", __func__, __LINE__);
	return true;
}

bool type1_func1(char *a, int len, void *obj)
{
	printf("func: %s, line: %d\n", __func__, __LINE__);
	return true;
}

bool type1_func2(void *obj, char *a, int len)
{
	printf("func: %s, line: %d\n", __func__, __LINE__);
	return true;
}
