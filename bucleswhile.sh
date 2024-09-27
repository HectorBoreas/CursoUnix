#!/bin/bash

# Imprimir números del 1 al 10 con un bucle while 
echo "Números del 1 al 10:"
i=1
while [ $i -le 10 ]; do
	echo $i
	i=$((i+1))
done

# Línea en blanco para separar los resultados
echo

# Imprimir números del 10 al 1 con un bucle while
echo "Números dal 10 al 1:"
i=10
while [ $i -ge 1 ]; do
	echo $i
	i=$((i-1))
done
