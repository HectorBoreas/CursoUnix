#!/bin/bash

acceso(){
    if [ $2 -lt 18 ]; then
        echo "Acceso denegado. Eres menor $1";
    else
        echo "Bienvenid@ $1"
    fi
}

nombre="Pedro"
edad=19
acceso $nombre $edad
nombre="Ana"
edad=12
acceso $nombre $edad
