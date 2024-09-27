#!/bin/bash
# Prueba de condicional

# Definir una variable
numero=$1

# Comprobar si la variable es igual a un número especifico (por ejemplo, 5)
if [ $numero -eq 5 ]; then
	echo "La variable es igual a 5."
else
	echo "La variable no es igual a 5."
fi
