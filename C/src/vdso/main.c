#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <sys/types.h>
#include <unistd.h>

#define VDSO_GETPID
#define VDSO_GETUID
#define VDSO_GETTIMEOFDAY

static double getFloatTime()
{
        struct timeval t;

        gettimeofday(&t, 0);
        return (double) t.tv_sec + (double) t.tv_usec / 1000000.0;
}

extern int __vdso_clock_gettime(clock_t clk, struct timespec *ts);
void test2(void) {
	struct timespec ts;
	__vdso_clock_gettime(CLOCK_MONOTONIC, &ts);
	printf("sec: %d, nsec: %d\n", ts.tv_sec, ts.tv_nsec);
}

#ifdef VDSO_GETPID
extern int __vdso_getpid(void);
void test3(void) {
	pid_t pid = __vdso_getpid();
	printf("pid from vdso: %d\n", pid);
	printf("pid from no vdso: %d\n", getpid());
}

void test4(void) {
	int NR_LOOP = 10000000, i = 0;
	pid_t pid;
	double start, end;
	
	start = getFloatTime();
       	for (i = 0; i < NR_LOOP; ++i) {
		pid = __vdso_getpid();
	}
	pid = __vdso_getpid();
	end = getFloatTime();

	printf("last test result (pid): %d\n", pid);	
	printf("%s time cost: %.4f, last result: %lld\n", "vdso", end - start, pid);
}
#endif

#ifdef VDSO_GETUID
extern int __vdso_getuid(void);
void test5(void) {
	uid_t uid = __vdso_getuid();
	printf("uid from vdso: %d\n", uid);
	printf("uid from no vdso:%d\n", getuid());
}


void test6(void) {
	int NR_LOOP = 10000000, i = 0;
	uid_t uid;
	double start, end;

	start = getFloatTime();
	for (i = 0; i < NR_LOOP; ++i) {
		uid = __vdso_getuid();
	}
	uid = __vdso_getuid();
	end = getFloatTime();

	printf("last test result (uid): %d\n", uid);
	printf("%s time cost: %.4f, last result: %lld\n", "vdso", end - start, uid);

}
#endif

#ifdef VDSO_GETTIMEOFDAY
extern int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz);
void test7(void) {
	int NR_LOOP = 10000000, i = 0, ret = 0;
	struct timeval tv;
	struct timezone tz;
	double start, end;
	
	start = getFloatTime();
       	for (i = 0; i < NR_LOOP; ++i) {
		ret = __vdso_gettimeofday(&tv, &tz);
	}
	ret = __vdso_gettimeofday(&tv, &tz);
	end = getFloatTime();

	printf("last test result: tv.sec: %d, tv.usec: %d\n", tv.tv_sec, tv.tv_usec);	
	printf("%s time cost: %.4f, last result: %d\n", "vdso", end - start, ret);
}
#endif

void test8(void) {
	int NR_LOOP = 10000000, i = 0, ret = 0;
	struct timespec ts;
	double start, end;
	
	start = getFloatTime();
       	for (i = 0; i < NR_LOOP; ++i) {
		ret = __vdso_clock_gettime(CLOCK_MONOTONIC, &ts);
	}
	ret = __vdso_clock_gettime(CLOCK_MONOTONIC, &ts);
	end = getFloatTime();

	printf("last test result: tv.sec: %d, tv.nsec: %d\n", ts.tv_sec, ts.tv_nsec);	
	printf("%s time cost: %.4f, last result: %d\n", "vdso", end - start, ret);
}

void test(void) {
	test3();
	test4();
	test5();
	test6();
	test7();
	test8();
}

int main(void) {

	test();
	return 0;
}
