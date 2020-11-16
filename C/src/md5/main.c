/************************************************************
 * Copyright (C), 2017, Leon, All Rights Reserved.
 * FileName: test_md5.c
 * Description: MD5函数测试
 * Author: Leon
 * Version: 1.0
 * Date: 
 * Function:
 *
 * History:
 * <author>    <time>  <version>   <description>
 *  Leon
 *  ************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>
#include "md5.h"

/* md5函数测试 */
int main(int argc, char *argv[])
{
    struct stat st;
    unsigned char digest[16] = {0};
    MD5_CTX context;
    int i = 0;

    if(argc < 2)
        return;

    MD5Init(&context);

    if(-1 == stat(argv[1], &st))
    {
        /* 文件不存在则计算参数字符串的MD5 */
        MD5Update(&context, argv[1], strlen(argv[1]));
    }
    else
    {
        /* 计算文件MD5 */
        FILE *fp = fopen(argv[1], "r");
        char *data = NULL;
        int ret = 0;

        if(!fp)
        {
            perror("fopen");
            exit(-1);
        }
/*
        data = malloc(st.st_size);
        if(!data)
        {
            perror("malloc");
            exit(-1);
        }
        ret = fread(data, 1, st.st_size, fp);
        if(ret != st.st_size)
        {
            perror("fread");
            exit(-1);
        } 
        MD5Update(&context, data, st.st_size);
*/
		#define BLOCK_SIZE	1024
		data = malloc(BLOCK_SIZE);
		int i = 0;
		for (;;) {
			ret = fread(data, 1, BLOCK_SIZE, fp);
			printf("update %d-th block, block size: %d\n", (i + 1), ret);
        	MD5Update(&context, data, ret);
			if (ret < BLOCK_SIZE) {
				break;
			}
			i++;
		}
        fclose(fp);
        free(data);
    }
    MD5Final(&context, digest);

    /* 打印MD5值 */
    printf("md5: ");
    for(i = 0; i < 16; i++)
    {
        printf("%02x", digest[i]);
    }
    printf("\n");
    return 0;
}
