#/bin/bash
#Comprobación de parametros
if [ $# -ge 3 ] || [ $# -le 1 ]; then
	echo "Uso: $0 <ruta> <nombre nuevo dir>"
	exit 1
fi

#Comprobamos si la ruta existe
if [ ! -e $1 ]; then
	echo "Ruta no válida"
	exit 1
fi

#Comprobación y creación de directorio
if [ -d $1$2 ]; then
	echo "El directorio ya existe"
	exit 1
else
	mkdir $1/$2
	echo "El directorio $2, ha sido creado en $1"
fi

