struct send_file_req {
	char session_id[17];
	char filename[129];
	char md5[17];
	int length;
};
