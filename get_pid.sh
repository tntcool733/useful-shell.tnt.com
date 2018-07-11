#!/bin/bash

# 说明：此脚步用于批量获取某父目录下，子目录名称的进程pid
# 例子：bash ./get_pid.sh /data/service/java_base www-data

# 需要遍历查找的父目录
parent_dir=$1
# 需要过滤的进程用户id
process_uid=$2

dirs=$(ls -l $parent_dir |awk '/^d/ {print $NF}')

printf "%-50s %s\n" "dir from $parent_dir" pid
for dir in $dirs
do
	pid=`ps -ef |grep $dir |awk '/^'''$process_uid'''/ {print $2}'`
	printf "%-50s %s\n" $dir $pid
done
