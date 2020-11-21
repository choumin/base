#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct _list list;

struct _list {
	list *pre;
	list *next;
};

typedef struct {
	int type;
	int version;
	int magic;
} file_header;

typedef struct {
	file_header header;
	char name[1];
} file_path;

int main(void) {
	// test offset of element in struct.
	printf("%d\n", &(((list *)0)->next));

	char *fname = "hello_world.txt";
	file_path *fp = (file_path *)malloc(sizeof(file_path) + strlen(fname));
	strcpy(fp->name, fname);

	printf("fp->name: %s\n", fp->name);

	return 0;
}
