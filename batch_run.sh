#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Invalid parameters."
	echo "Usage: $0 <group> <cmd> [datetime]"
	exit
fi

ip_list_file=$1
command_to_run=$2

for LINE in `cat ${ip_list_file}`
do
	echo "Searching on $LINE ..."
	ssh $LINE -p 32200 "${command_to_run}"
done
