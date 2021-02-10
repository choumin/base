#!/bin/bash

[ $# -lt 2 ] && echo "Usage: $0 src dst" && exit

src=$1
dst=$2

[ ! -d $src ] && echo "$src are not dir!" && exit
[ ! -d $dst ] && echo "$dst are not dir!" && exit

echo "src dir is: $src"
echo "dst dir is: $dst"

cur_dir=`pwd`
src_abs=$cur_dir/$src
dst_abs=$cur_dir/$dst
for item in $(ls $src_abs)
do
	src_item=$src_abs/$item

	echo $src_item
	if [ -d $src_item ]; then
		dst_item=$dst_abs/$item
		if [ ! -d $dst_item ]; then
			mkdir -p $dst_item
		fi

		for _item in $(ls $src_item)
		do
			src_file=$src_item/$_item
			dst_file=$dst_item/$_item
			echo "$src_file, $dst_file"
			cat $src_file |awk '{for(i=1;i<NF;++i){printf("%s ", $i)} printf("%s\n", $NF)}' > $dst_file
		done
	else
		cp $src_item $dst_abs/ 
	fi
done
