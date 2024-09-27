#!/bin/bash
#Pasando un nombre de usuario y una contraseña por parametros...
#... a un scipt (primero user y segundo pass), validar a un...
#... usuario (el user y el pass correcto estarán en una variable)

user="Paco"
pass="abcd"

if [ $1 == $user ]; then
	if [ $2 == $pass ]; then
        	echo "Bienvenido $1"
	else
		echo "password incorrecta"
	fi
else
	echo "usuario desconocido"
fi


