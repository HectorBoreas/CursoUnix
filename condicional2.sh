#!/bin/bash
# Prueba de condicional2

# Verificar si se proporciono argumento

if [ $# -ne 1 ]; then
	echo "Uso: $0 <nombre>"
	exit 1
fi

# Saludar al nombre
echo "Hola $1"
