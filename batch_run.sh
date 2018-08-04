#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Invalid parameters."
	echo "Usage: $0 <group> <cmd> [datetime]"
	exit
fi

ip_list_file=$1

for LINE in `cat $1`
do
	echo "Searching on $LINE ..."
	ssh $LINE -p 32200 "$2"
done
