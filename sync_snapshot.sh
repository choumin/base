#!/bin/bash

#trap set_stop exit 

lock_file=/home/zhoumin/shell/.sync_status

function is_running() {
	if [ ! -e $lock_file ]; then
		return 0
	fi	

	read line < $lock_file 
	if [ "$line" = "1" ]; then
		return 1
	else
		return 0
	fi
}

function is_running2() {
	#tmp=`ps -ef |grep "sync_snapshot.sh"`
	#echo $tmp
	num=`ps -ef |grep "sync_snapshot\.sh" |wc -l`
	#echo $num
	
	if [ $num -gt 2 ]; then
		return 1
	else 
		return 0
	fi
}

function set_running() {
	echo "1" > $lock_file
}

function set_stop() {
	echo "0" > $lock_file
}


function sync_snapshot() {
	snapshot_src_dir=/home/zhoumin/.config/tencent-qq/AppData/file/
	snapshot_dst_dir=/home/zhoumin/snapshot/
	index=0
	suffix=.jpg
	for entry in `ls $snapshot_src_dir |grep "\.jpg"$`; do
		current=`date "+%Y-%m-%d %H:%M:%S"`
		timestamp=`date -d "$current" +%s` 
		file_name=$timestamp-$index$suffix
		mv $snapshot_src_dir/$entry $snapshot_dst_dir/$file_name	
		index=$[$index+1]
	done
}

function main() {
	is_running2
	if [ $? -eq 1 ]; then
		#echo "sync is running ... "
		return
	else 
		#echo "start sync ... "
		set_running
	fi

	while [ 1 -eq 1 ]
	do
		sync_snapshot
		sleep 1
	done
}

main 

# add the following command to ~/.bashrc file.
# /home/zhoumin/shell/sync_snapshot.sh & > /dev/null
