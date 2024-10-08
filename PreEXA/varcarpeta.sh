#/bin/bash
#Comprobación de parametros correctos
if [ $# -ge 1 ]; then
	echo "Uso: $0 <ruta> <nombre nuevo directorio>"
	exit 1
fi

#Definimos las variables
ruta=./PracticaExa/Nueva
name=VarDir

#Creamos el directorio
mkdir $ruta/$name
echo "El directorio $name, ha sido creado en $ruta"

