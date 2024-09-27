#!/bin/bash
# Pasando un nombre de directorio por parametro al script en bash, permite que se cree con dicho nombre en /hom,e

nombre=$1

sudo mkdir /home/$nombre -v

#mostramos el nuevo directorio

ls -las /home
