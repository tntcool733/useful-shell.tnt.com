#!/bin/bash
# 请切换为root执行

user=$1
pid=$2
dir=$3
time=`date "+%Y-%m-%d_%H:%M:%S"`
jmap_heap_log=${dir}jmap_heap_${time}.log

printf "start to log %s\n" $jmap_heap_log
sudo jmap -heap $pid > $jmap_heap_log
printf "finish   log %s\n" $jmap_heap_log

