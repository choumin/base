#include <rpc/xdr.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "send_file.h"

#define USER_NAME_MAX_LEN	32
#define MD5_LEN				16

typedef struct {
	int name_len;
	int passwd_len;
	//char name[USER_NAME_MAX_LEN];
	//char passwd_md5[MD5_LEN + 1];
	char *name;
	char *passwd_md5;
} validate_req;

char *tmp_file = "tmp.txt";

bool validate_req_encode(void *req, char **buf, int *len)
{
	//mem_pool *mp = get_singleton_mp();

	*len = 2 * (sizeof(validate_req) + USER_NAME_MAX_LEN + MD5_LEN);
	*buf = (unsigned char *)malloc(sizeof(unsigned char) * (*len));

	XDR xdr;
	validate_req *vreq = (validate_req *)req;

	xdrmem_create(&xdr, *buf, *len, XDR_ENCODE);

	bool status = xdr_int(&xdr, &(vreq->name_len)) &&
				xdr_int(&xdr, &(vreq->passwd_len)) &&
				xdr_string(&xdr, &(vreq->name), USER_NAME_MAX_LEN) &&
				xdr_string(&xdr, &(vreq->passwd_md5), MD5_LEN + 1);

	return status;
}

bool validate_req_decode(unsigned char *buf, int len, void *req)
{
	XDR xdr;
	validate_req *vreq = (validate_req *)req;

	char *name = (char *)malloc(sizeof(char) * (USER_NAME_MAX_LEN + 1));
	char *passwd_md5 = (char *)malloc(sizeof(char) * (MD5_LEN + 1));

	xdrmem_create(&xdr, buf, len, XDR_DECODE);

	bool status = xdr_int(&xdr, &(vreq->name_len)) &&
				xdr_int(&xdr, &(vreq->passwd_len)) &&
				xdr_string(&xdr, &name, USER_NAME_MAX_LEN) &&
				xdr_string(&xdr, &passwd_md5, MD5_LEN + 1);
	if (status) {
		vreq->name = name;
		vreq->passwd_md5 = passwd_md5;
	} else {
		free(name);
		free(passwd_md5);
	}

	return status;
}

void test(void)
{
	char *content = NULL;
	int cont_len = 0;
	bool ret;

	validate_req req, _req;

	req.name = (char *)malloc(sizeof(char) * (USER_NAME_MAX_LEN + 1));
	req.passwd_md5 = (char *)malloc(sizeof(char) * (MD5_LEN + 1));

	strcpy(req.name, "zhoumin_1234");
	strcpy(req.passwd_md5, "");

	req.name_len = strlen(req.name);
	req.passwd_len = strlen(req.passwd_md5);

	ret = validate_req_encode(&req, &content, &cont_len);
	printf("encode result: %d, len: %d\n", ret, cont_len);

	ret = validate_req_decode(content, cont_len, &_req);
	printf("decode result: %d\n", ret);

	printf("name_len: %d\n", _req.name_len);
	printf("passwd_len: %d\n", _req.passwd_len);
	printf("name: %s\n", _req.name);
	printf("passwd_md5: %s\n", _req.passwd_md5);
}


void test2(void)
{
	send_file_req sfr;

	printf("before assign\n");
	strcpy(sfr.filename, "a.out");
	strcpy(sfr.session_id, "19910930");
	strcpy(sfr.md5, "helloworld");
	sfr.length = 30;

	//char *tmp = (char *)malloc(sizeof(char) * 1024);
	FILE *fp = fopen(tmp_file, "w");
	XDR xdr;
	xdrstdio_create(&xdr, fp, XDR_ENCODE);
	//xdrmem_create(&xdr, tmp, 1024, XDR_ENCODE); 

	printf("before encode\n");
	int ret = xdr_send_file_req(&xdr, &sfr);
	printf("ret: %d\n", ret);
	fclose(fp);
}

void test3(void)
{
	send_file_req sfr;

	FILE *fp = fopen(tmp_file, "r");
	XDR xdr;
	
	xdrstdio_create(&xdr, fp, XDR_DECODE);
	printf("before decode\n");
	int ret = xdr_send_file_req(&xdr, &sfr);	

	printf("ret: %d\n", ret);
	printf("filename: %s\n", sfr.filename);
	printf("session_id: %s\n", sfr.session_id);
	printf("md5: %s\n", sfr.md5);
	printf("length: %d\n", sfr.length);
	fclose(fp);
}

char *test4(size_t *sizep)
{
	send_file_req sfr;

	printf("before assign\n");
	strcpy(sfr.filename, "a.out");
	strcpy(sfr.session_id, "19910930");
	strcpy(sfr.md5, "helloworld");
	sfr.length = 30;

	char *buf = NULL;
	FILE *fp = open_memstream(&buf, sizep);
	XDR xdr;
	xdrstdio_create(&xdr, fp, XDR_ENCODE);

	printf("before encode\n");
	int ret = xdr_send_file_req(&xdr, &sfr);
	printf("ret: %d\n", ret);
	fclose(fp);

	return buf;
}

void test5(char *buf, int size)
{
	send_file_req sfr;

	XDR xdr;
	
	FILE *fp = fmemopen(buf, size, "r");
	xdrstdio_create(&xdr, fp, XDR_DECODE);

	printf("before decode\n");
	int ret = xdr_send_file_req(&xdr, &sfr);	

	printf("ret: %d\n", ret);
	printf("filename: %s\n", sfr.filename);
	printf("session_id: %s\n", sfr.session_id);
	printf("md5: %s\n", sfr.md5);
	printf("length: %d\n", sfr.length);

	free(buf);
}

int main(void)
{
	size_t size = 0;
	char *buf = test4(&size);
	printf("encode len: %u\n", size);
	test5(buf, size);

	return 0;
}
