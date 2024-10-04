#!/bin/bash

while [[ $# > 0 ]]
do
	mkdir -p Test
	pos=$(($#-$1))
	case $pos in
		1 ) pwd; break; ;;
		2 ) ls; pos=$(($pos+1)); ;;
		3 ) tree; pos=$(($pos+1)); ;;
		* ) whoami; ;;
	esac
	$pos=$(($pos+1))
done


