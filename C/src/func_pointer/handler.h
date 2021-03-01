#ifndef _HANDLER_H_
#define _HANDLER_H_

struct handler {
	int type;
	bool (*func1)(char *a, int len, void *obj);
	bool (*func2)(void *obj, char *a, int len);
};

bool type0_func1(char *a, int len, void *obj);
bool type0_func2(void *obj, char *a, int len);
bool type1_func1(char *a, int len, void *obj);
bool type1_func2(void *obj, char *a, int len);

#endif
