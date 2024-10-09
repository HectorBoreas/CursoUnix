#/bin/bash
#Comprobación de parametros correctos
if [ $# -ne 0 ]; then
	echo "Uso: $0 <sin parametros>"
	exit 1
fi

#Definimos las variables
ruta=./PracticaEXA/Nueva
name=VarDir

#Creamos el directorio
mkdir $ruta/$name
echo "El directorio $name, ha sido creado en $ruta"

