#!/bin/bash

# Verificar si se proporciona un archivo como argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <nombre_del_archivo>"
  exit 1
fi


# Verificar si el archivo existe
if [ ! -f $1 ]; then
  echo "El archivo $archivo no existe."
  exit 1
fi
contador=0
# Leer el archivo línea por línea
while read -r linea; do	
	if [ $contador -eq 0 ]; then
		usuario=$linea	
		
	fi
	if [ $contador -eq 1 ]; then
		password=$linea	
		sudo useradd -m "$usuario" && echo "$usuario:$password" | sudo chpasswd
	fi
	contador=$((contador+1))
	
done < $1
echo $usuario $password
