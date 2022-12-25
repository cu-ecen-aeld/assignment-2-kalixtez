#!/bin/bash

path=$1
string=$2

if [[ -z $path || -z $string ]]; then
	echo "Usage: ./finder.sh [path] [string_to_search]"
	exit 1
fi

if ! [ -d $path ]; then
	echo "The path specified does not exist."
	exit 1
fi

count=0
match=0
for FILE in $(find $path -type f);
do
	let count++
	let match+=$(cat $FILE | grep "$string" | wc -l)
done

echo "The number of files are " $count " and the number of matching lines are " $match