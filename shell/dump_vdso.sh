#!/bin/bash

[ -z "$1" ] && echo "Usage: $0 out_file" && exit 1

mem_start=`cat /proc/$$/maps |grep vdso |awk -F'-' '{print $1}'`

skip=$((16#$mem_start))
count=16384

out_file=$1
dd if=/proc/$$/mem of=$out_file bs=1 skip=$skip count=$count

