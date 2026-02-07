#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Please specify a number"
	echo "Usage: $0 <number>"
	exit 1
fi

num=$1

if (( num % 2 == 0 )); then
	echo "Even"
else
	echo "Odd"
fi


