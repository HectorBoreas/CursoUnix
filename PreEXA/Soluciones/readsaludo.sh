#!/bin/bash

acceso(){
    if [ $2 -lt 18 ]; then
        echo "Acceso denegado. Eres menor $1";
    else
        echo "Bienvenid@ $1"
    fi
}

echo "Inserta tu nombre"
read nombre
echo "Inserta tu edad"
read edad
acceso $nombre $edad
