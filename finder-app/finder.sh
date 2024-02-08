#!/bin/bash

if [ $# -lt 2 ]; then
	echo "please provide a path and filename"
	exit 1
fi
if [ -d $1 ]; then
	num_files=$(find $1 -type f | wc -l)
	string_count=$(grep -rl $2 $1 | wc -l)
else
	echo "$1 is not a directory"
	exit 1
fi

echo "The number of files are $num_files and the number of matching lines are $string_count"
exit 0
	
