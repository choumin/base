#!/bin/sh

scriptPath=$0
scriptName=${scriptPath##*\/}
scriptDir=`dirname ${scriptPath}`
#echo $scriptName
[ -z "$1" ] && echo "Usage: $scriptName ins" && exit
python ${scriptDir}/dump_ins.py $1
