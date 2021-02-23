#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <sys/types.h>
#include <unistd.h>

#if 0
extern int __vdso_clock_gettime(clock_t clk, struct timespec *ts);
extern int __vdso_getpid(void);

void test2(void) {
	struct timespec ts;
	__vdso_clock_gettime(CLOCK_MONOTONIC, &ts);
	printf("sec: %d, nsec: %d\n", ts.tv_sec, ts.tv_nsec);
}

void test3(void) {
	pid_t pid = __vdso_getpid();
	printf("pid from vdso: %d\n", pid);
	printf("pid from no vdso: %d\n", getpid());
}
#endif

static double getFloatTime()
{
        struct timeval t;

        gettimeofday(&t, 0);
        return (double) t.tv_sec + (double) t.tv_usec / 1000000.0;
}

void test5(void) {
	int NR_LOOP = 10000000, i = 0;
	pid_t pid;
	double start, end;
	
	start = getFloatTime();
       	for (i = 0; i < NR_LOOP; ++i) {
		pid = getpid();
	}
	pid = getpid();
	end = getFloatTime();

	printf("last test result (pid): %d\n", pid);	
	printf("%s time cost: %.4f, last result: %lld\n", "no vdso", end - start, pid);
}

void test6(void) {
	int NR_LOOP = 10000000, i = 0;
	uid_t uid;
	double start, end;

	start = getFloatTime();
	for (i = 0; i < NR_LOOP; ++i) {
		uid = getuid();
	}
	uid = getuid();
	end = getFloatTime();

	printf("last test result (uid): %d\n", uid);
	printf("%s time cost: %.4f, last result: %lld\n", "vdso", end - start, uid);

}

void test7(void) {
	int NR_LOOP = 10000000, i = 0;
	struct timespec ts;
	int ret = 0;
	double start, end;

	start = getFloatTime();
	for (i = 0; i < NR_LOOP; ++i) {
		ret = clock_gettime(CLOCK_MONOTONIC, &ts);
	}
	ret = clock_gettime(CLOCK_MONOTONIC, &ts);
	end = getFloatTime();

	printf("last test result: %d, ts.tv_sec: %d, ts.tv_nsec: %d\n", ret, ts.tv_sec, ts.tv_nsec);
	printf("%s, time cost: %.4f, last result: %lld\n", "vdso", end - start, ret);
}

void test8(void) {
	int NR_LOOP = 10000000, i = 0;
	struct timeval tv;
	struct timezone tz;
	int ret = 0;
	double start, end;

	start = getFloatTime();
    	for (i = 0; i < NR_LOOP; ++i) {
        	ret = gettimeofday(&tv, &tz);
    	}
    	ret = gettimeofday(&tv, &tz); 
    	end = getFloatTime();
	
	printf("last test result: %d, tv.tv_sec: %d, tv.tv_usec: %d\n", ret, tv.tv_sec, tv.tv_usec);
	printf("%s, time cost: %.4f, last result: %lld\n", "vdso", end - start, ret);
}

void test(void) {
	test5();
	test6();
	test7();
	test8();
}

int main(void) {

	test();
	return 0;
}
