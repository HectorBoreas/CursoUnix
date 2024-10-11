#!/bin/bash

crea_dir(){
    if [ -d $2 ] && [ ! -d "$2/$1" ]; then
        mkdir $2/$1
        echo "Directorio $1 creado en la ruta $2"
    else
        echo "Datos facilitados erróneos"
    fi
}

nombre_dir="nuevo"
ruta="/home/hector/CursoUnix/PreEXA/Soluciones"
crea_dir $nombre_dir $ruta
nombre="nuevo"
ruta="/home/hector/CursoUnix/PreEXA/Soluciones"
crea_dir $nombre_dir $ruta
nombre="nuevo2"
ruta="../"
crea_dir $nombre_dir $ruta
