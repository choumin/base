#!/bin/sh
[ ! $# -eq 1 ] && echo "Usage: $0 dir" && exit
dir=$1
[ ! -d $dir ] && echo "$dir not directory" && exit
dir=$(cd $dir; pwd)
echo "checking $dir ..."
for elem in `ls $dir`
do
	msg1=""
	msg2=""
	msg3="clean"
	elem=$dir/$elem
	if [ -d "$elem" ]; then
		a=$(cd $elem; git status |grep 'git checkout')
		b=$(cd $elem; git status |grep 'git reset')
		c=$(cd $elem; git status |grep 'git push')
		if [ ! -z "$a" -o ! -z "$b" ]; then
			msg1="uncommit"
		fi
		if [ ! -z "$c" ]; then
			msg2="unpush"
		fi
	fi
	#echo $dirty
	if [ ! -z "$msg1" -a ! -z "$msg2" ]; then
		echo "$elem : $msg1, $msg2"
	elif [ ! -z "$msg1" ]; then
		echo "$elem : $msg1"
	elif [ ! -z "$msg2" ]; then
		echo "$elem : $msg2"
	else
		echo "$elem : $msg3"
	fi
done 
