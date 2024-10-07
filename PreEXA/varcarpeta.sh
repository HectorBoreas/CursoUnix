#/bin/bash
if [ $# -ge 1 ]; then
	echo "Uso: $0 <ruta> <nombre nuevo directorio>"
	exit 1
fi
ruta=./PracticaExa/Nueva
name=VarDir

mkdir $ruta/$name
echo "El directorio $name, ha sido creado en $ruta"

