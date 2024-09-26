#!/bin/bash

num=$1
ruta=$2

if [ $num -eq 1 ]; then
	if [ -d $ruta ]; then
		ls -las $ruta
	else
		echo "La ruta indicada no es un directorio"
	fi
else
	if [ $num -eq 2 ]; then
		if [ -f $ruta ]; then
			cat $ruta
		else
			echo "La ruta indicada, no es un fichero"
		fi
	fi
fi

#while [ $# != 2 ]; do
#        echo "Debes introducir 2 parametros, el primero elige entre 1 para directorios>
#        exit 1
#done

#while [[ $num -ge 3 || $num -le 0 ]]; do
#       echo "1 para directorios o 2 para directorios"
#	exit 1 
#done


