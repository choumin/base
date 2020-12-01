#!/bin/sh
[ ! $# -eq 1 ] && echo "Usage: $0 dir" && exit
dir=$1
[ ! -d $dir ] && echo "$dir not directory" && exit
dir=$(cd $dir; pwd)
echo "checking $dir ..."
for elem in `ls $dir`
do
	dirty=false
	elem=$dir/$elem
	if [ -d "$elem" ]; then
		a=$(cd $elem; git status |grep 'git checkout')
		b=$(cd $elem; git status |grep 'git reset')
		if [ ! -z "$a" -o ! -z "$b" ]; then
			dirty=true
		fi
	fi
	#echo $dirty
	if [ "$dirty" = true ]; then
		echo "$elem : yes"
	else
		echo "$elem : no"
	fi
done 
