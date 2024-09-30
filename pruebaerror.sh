#!/bin/bash
test=$(($#-1))
if [[ $1 -ne $=$(($#-1)) ]]; then
	echo "error"
else
	echo "continua"
fi

