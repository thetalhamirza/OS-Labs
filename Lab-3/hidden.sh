#!/bin/bash


if [ $# -ne 1 ]; then
	echo "No directory specified"
	echo "Usage: $0 <directory_path>"
	exit 1
fi

dir="$1"

if [ -d "$dir" ]; then
	echo "Hidden files in $dir"

	hidden_files=$(ls -A "$dir" | grep '^\.')

	echo "$hidden_files"

	count=$(ls -A "$dir" | grep '^\.' | wc -l)

	echo "Total hidden files detected: $count"

else

	echo "Directory doesn't exist"
fi
