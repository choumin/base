/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _SEND_FILE_H_RPCGEN
#define _SEND_FILE_H_RPCGEN

#include <rpc/rpc.h>


#ifdef __cplusplus
extern "C" {
#endif


struct send_file_req {
	char session_id[17];
	char filename[129];
	char md5[17];
	int length;
};
typedef struct send_file_req send_file_req;

/* the xdr functions */

#if defined(__STDC__) || defined(__cplusplus)
extern  bool_t xdr_send_file_req (XDR *, send_file_req*);

#else /* K&R C */
extern bool_t xdr_send_file_req ();

#endif /* K&R C */

#ifdef __cplusplus
}
#endif

#endif /* !_SEND_FILE_H_RPCGEN */
