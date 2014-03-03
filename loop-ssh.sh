#!/bin/bash

MYCMD='hostname'

cat $1 |while read line
do
  # Handle common spreadsheet lists
	SERVER=`echo $line |cut -d ',' -f 1 |awk '{print $1}'|grep -v '^#'`
	
	if [ -n "$SERVER" ]
	then
		ssh $SERVER "$MYCMD"
	fi
done
