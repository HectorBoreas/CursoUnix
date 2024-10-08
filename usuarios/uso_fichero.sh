#!/bin/bash
#Comprobación de parametros

# Verificar si se proporciona un archivo como argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <nombre_del_archivo>"
  exit 1
fi

archivo="$1"

# Verificar si el archivo existe
if [ ! -f "$archivo" ]; then
  echo "El archivo $archivo no existe."
  exit 1
fi

# Creación de usuario del archivo línea por línea
while IFS= read -r name pass perm; do
	sudo useradd -p $pass -m $name 
	echo $perm
done < "$archivo"


