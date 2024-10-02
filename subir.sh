#!/bin/bash
if [ $# -eq 0 ] || (( $1 != $#-1 )); then
	echo "Uso: $0 <directorio 1> <directorio 2> ..."
	exit 1
fi

shift

for subdir in $@; do
	if [ -d ./UbuntuPractica/$subdir ]; then
	echo "El directorio $subdir ya existe"
	else
		mkdir -v ./UbuntuPractica/$subdir
		ls UbuntuPractica > ./UbuntuPractica/$subdir/$subdir.txt
	fi
done
