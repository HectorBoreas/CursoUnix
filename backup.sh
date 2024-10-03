#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Uso: $0 <Ruta directorio>"
	exit 1
fi
backup=/home/hector/Documents/Backup/
fecha=$( date '+%D%R' )
nombre=$1$fecha
if [ ! -d $backup ]; then
	mkdir $backup
fi
if [ -d $1 ]; then
	cp -r $1 $backup$( date '+%F%R' )_$1
	echo "Copia de seguridad realizada"
else
	echo "La ruta especificada no es válida"
fi
