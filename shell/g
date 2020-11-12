#!/bin/sh

scriptPath="$0"
scriptName=${scriptPath##*\/}
scriptDir=`dirname ${scriptPath}`
#echo $scriptName
[ -z "$1" ] && echo "usage: $scriptName num" && exit
#echo $1

python ${scriptDir}/convert.py -g $1
