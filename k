#!/bin/sh

scriptPath="$0"
scriptName=${scriptPath##*\/}
#echo $scriptName
[ -z "$1" ] && echo "usage: $scriptName num" && exit
#echo $1
python /home/zhoumin/shell/convert.py -k $1
