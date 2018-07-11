#!/bin/bash

dirs=$(ls -l $1 |awk '/^d/ {print $NF}')

printf "%-50s %s\n" "dir from $1" pid
for dir in $dirs
do
	pid=`ps -ef |grep $dir |grep -v "grep " |awk '{print $2}'`
	printf "%-50s %s\n" $dir $pid
done
