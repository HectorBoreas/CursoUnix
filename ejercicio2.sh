#!/bin/bash
# Comprobación de parámetros válidos
if [ $# -gt 3 ] || [ $# -lt 1 ]; then
	echo "Uso: $0 <1 a 3 rutas de fichero><ruta fichero1> ... <ruta fichero3> "
	exit 1
fi
if [ ! -f $1 ] || [ ! -f $2 ] || [ ! -f $3 ]; then
	echo "Uso: $0 <las rutas deben ser ficheros>"
	exit 1
fi

#Creamos carpete y enviamos copia de los ficheros indicados
mkdir -p ../Escritorio/Ejercicio2

for backup in $@; do
	# Añado una condicion para que no modifique una copia ya hecha
	if [ -f ../Escritorio/Ejercicio2/$backup ]; then
		echo "el fichero ya ha sido copiado"
	else
		cp $backup ../Escritorio/Ejercicio2
	fi
done
