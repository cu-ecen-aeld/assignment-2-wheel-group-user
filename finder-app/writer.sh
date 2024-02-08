#!/bin/bash

if [ $# -ge 2 ]; then
	if mkdir -p "$1%/*" && touch $1; then
		echo $2 > $1
	else
		echo "$1 could not be created"
	fi
else
	echo "please provide the filepath and file content as arguments"
	exit 1
fi
