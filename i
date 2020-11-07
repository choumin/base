#!/bin/sh

scriptPath=$0
scriptName=${scriptPath##*\/}
#echo $scriptName
[ -z "$1" ] && echo "Usage: $scriptName ins" && exit
python /home/zhoumin/shell/dump_ins.py $1
