#include <stdio.h>

#define _PCD_GET_MODE_64_ABC	123

#define PcdGet64(TokenName)                 _PCD_GET_MODE_64_##TokenName

void test() {
	#define PRINT( n ) printf( "token" #n " = %d\n", game##n )
	#define PRINT2( n ) printf( "token" #n " = %d\n", token##n )

	int token8 = 8;

	int game9 = 9;

	PRINT(9);
	PRINT2(8);
}

int GetFrontPageTimeoutFromQemu () {
	return 930;
}       

int array[10];

int LibPcdSet16S(int tokenNumber, int value) {
	array[tokenNumber] = value;
	return 0;
}

void showArray() {
	int i = 0;
	for (i = 0; i < 10; ++i) {
		printf("%d ", array[i]);
	}
	printf("\n");
}
void test2() {
	#define _PCD_TOKEN_PcdPlatformBootTimeOut						9
	#define _PCD_SET_MODE_16_S_PcdPlatformBootTimeOut(v)			LibPcdSet16S(_PCD_TOKEN_PcdPlatformBootTimeOut, (v))	
	#define PcdSet16S(TokenName, Value)         					_PCD_SET_MODE_16_S_##TokenName    ((Value))

	int PcdStatus = PcdSet16S (PcdPlatformBootTimeOut,
                GetFrontPageTimeoutFromQemu ());       

	printf("%d\n", PcdStatus);
	
}

void test3() {
	#define ALIGN_UP(addr, align) \
    ((addr + (typeof (addr)) align - 1) & ~((typeof (addr)) align - 1))

	#define ALIGN_VALUE(Value, Alignment) ((Value) + (((Alignment) - (Value)) & ((Alignment) - 1)))

	int size = ALIGN_UP (sizeof ("a0"), 4);

	printf("%d\n", size);
}

void test4() {
#define ARRAYSIZE(a) (sizeof(a) / sizeof(a[0]))

	char *CommandLine = "console=tty0";
	char *Args[] = {"a0", CommandLine};
	printf("array size: %d\n", ARRAYSIZE(Args));
}
int main(void) {
	//int abc = PcdGet64(ABC);
	//printf("abc: %d\n", abc);
	//showArray();
	//test2();
	//showArray();
	//
	test4();
	return 0;
}
