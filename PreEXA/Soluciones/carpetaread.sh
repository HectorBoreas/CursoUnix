#!/bin/bash

crea_dir(){
    if [ -d $2 ] && [ ! -d "$2/$1" ]; then
        mkdir $2/$1
        echo "Directorio $1 creado en la ruta $2"
    else
        echo "Datos facilitados erróneos"
    fi
}


echo "Inserta un nombre de directorio"
read nombre_dir
echo "Inserta una ruta"
read ruta
crea_dir $nombre_dir $ruta
