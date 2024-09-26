#!/bin/bash

mkdir  mis_archivos
for (( i = 1; i <= 2; i++)); do
	touch ./mis_archivos/archivo$i.txt
	if [ $i -eq 1 ]; then
		chmod 222 ./mis_archivos/archivo$i.txt
	fi
	if [ $i -eq 2 ]; then
		chmod 666 ./mis_archivos/archivo$i.txt
	fi
done
ls -las ./mis_archivos/

