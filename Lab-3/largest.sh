#!/bin/bash

if [ $1 -gt $2 ]; then
	if [ $1 -gt $3 ]; then
		echo "The largest number among $1, $2, and $3 is $1"
	else
		echo "The largest number among $1, $2, and $3 is $3"
	fi
else
	if [ $2 -gt $3 ]; then
                echo "The largest number among $1, $2, and $3 is $2"
        else
                echo "The largest number among $1, $2, and $3 is $3"
        fi
fi
