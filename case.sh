#!/bin/bash

while [[ $# > 0 ]]  # Itero sobre la cantidad de parametros que se ingresaron.
do
    case "$#" in
        1 ) echo "primer parametro $1"; break ;;
        2 ) echo "segundo parametro $2"; break ;;
        3 ) echo "tercer parametro $3"; break ;;
        * ) echo "fin"; break ;;
    esac        
done 

# Ahora ya puedes usar los parametros por nombre.

echo "$1"
echo "$3"
