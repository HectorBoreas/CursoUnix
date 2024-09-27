#!/bin/bash

# Bucle para mostrar los números del 1 al 10
echo "Números del 1 al 10: "
for ((i = 1; i <= 10; i++)); do
	echo "$i"
done

# Línea en blanco para separar los resultados
echo

# Bucle para mostrar los números del 10 al 1
echo "Números dal 10 al 1: "
for ((i = 10; i>= 1; i--)); do
	echo "$i"
done
