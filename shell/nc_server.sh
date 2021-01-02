#!/bin/sh

tmp_file=./time.txt
touch $tmp_file

while true
do
	date +"%Y-%m-%d %H:%M:%S" > $tmp_file 
	nc -l 1234 < $tmp_file
	cat $tmp_file 
done
