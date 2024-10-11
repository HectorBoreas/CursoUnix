#!/bin/bash

acceso(){
    if [ $2 -lt 18 ]; then
        echo "Acceso denegado. Eres menor $1";
    else
        echo "Bienvenid@ $1"
    fi
}

acceso $1 $2
acceso $3 $4
