#!/bin/bash

parent_dir=$1
process_uid=$2

dirs=$(ls -l $parent_dir |awk '/^d/ {print $NF}')

printf "%-50s %s\n" "dir from $parent_dir" pid
for dir in $dirs
do
	pid=`ps -ef |grep $dir |awk '/^'''$process_uid'''/ {print $2}'`
	printf "%-50s %s\n" $dir $pid
done
