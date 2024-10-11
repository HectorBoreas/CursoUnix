#!/bin/bash

crea_dir(){
    if [ -d $2 ] && [ ! -d "$2/$1" ]; then
        mkdir $2/$1
        echo "Directorio $1 creado en la ruta $2"
    else
        echo "Datos facilitados erróneos"
    fi
}


crea_dir $1 $2
crea_dir $3 $4
crea_dir $5 $6
