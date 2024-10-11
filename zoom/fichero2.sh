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
	if [ $contador -eq 0 ] || [  ]; then
		usuario=$linea	
#		echo $usuario
	fi
	if [ $contador -eq 1 ]; then
		password=$linea	
		sudo useradd -m "$usuario" && echo "$usuario:$password" | sudo chpasswd
#		echo $password
	fi
	if [ $contador -eq 2 ]; then
		ruta=$linea	
#		echo $permiso
		sudo cp ./a.txt $ruta$usuario.txt
		sudo chown $usuario:$usuario $ruta$usuario.txt
		sudo chmod 722 $ruta$usuario.txt
	fi
	if [ $contador -ne 3 ]; then
		contador=$((contador+1))
		
	fi
	if [ $contador -eq 3 ]; then
		contador=$((contador-3))
	fi
	
	
done < $1
#echo $usuario $password $ruta
