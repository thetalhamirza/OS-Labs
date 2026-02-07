#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Please specify filename in arguments"
	echo "Usage: $0 <filename>"
	exit 1
fi

filename="$1"

if [ -f "$filename" ]; then
	lines=$(wc -l < "$filename")
	chars=$(wc -c < "$filename")

	echo "File "$filename" detected"
	echo "Total lines: $lines"
	echo "Total characters: $chars"
else
	echo "File does not exist"
fi
