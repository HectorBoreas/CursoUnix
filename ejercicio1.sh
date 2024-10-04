#!/bin/bash

if [ $# -gt 5 ] || [ $# -lt 2 ]; then
	echo "Uso: $0 nombre <tu nombre>"
	exit 1
fi
if [ $1 != "nombre" ]; then
	echo "El primer parámetro debe ser la palabra nombre"
	exit 1
fi
if [ $1 == "nombre" ] && [ $# -eq 2 ]; then
	echo "$2" > $1$2.txt
	if [ $2 == "apellido" ] && [ $# -eq 4 ]; then
		echo "$3 $4" > $1$3.txt
	fi
	if [ $2 == "apellidos" ] && [ $# -eq 5 ]; then
		echo "$3 $4 $5" > $1$3.txt
	fi

fi
