#!/bin/bash
# 请切换为root执行: sudo -s

user=$1
pid=$2
dir=$3
time=`date "+%Y-%m-%d_%H:%M:%S"`
jstack_log=${dir}jstack_${pid}_${time}.log
jstat_log=${dir}jstat_${pid}_${time}.log
jmap_heap_log=${dir}jmap_heap_${pid}_${time}.log
jmap_histolive_log=${dir}jmap_histolive_${pid}_${time}.log
jmap_dump_log=/tmp/jmap_dump_${pid}_${time}.hprof

printf "===========\n"
printf "[jstack]start to log %s\n" $jstack_log
sudo -u $user jstack $pid > $jstack_log
printf "[jstack]finish   log %s\n" $jstack_log

printf "===========\n"
printf "[jstat]start to log %s\n" $jstat_log
sudo jstat -gcutil $pid 1000 10
printf "[jstat]finish   log %s\n" $jstat_log

printf "===========\n"
printf "start to log %s\n" $jmap_heap_log
sudo jmap -heap $pid > $jmap_heap_log
printf "finish   log %s\n" $jmap_heap_log

printf "===========\n"
printf "start to log %s\n" $jmap_histolive_log
sudo -u $user jmap -histo:live $pid > $jmap_histolive_log
printf "finish   log %s\n" $jmap_histolive_log

printf "===========\n"
printf "start to log %s\n" $jmap_dump_log
sudo -u $user jmap -dump:format=b,file=$jmap_dump_log $pid
printf "finish   log %s\n" $jmap_dump_log

