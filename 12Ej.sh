#!/bin/bash
num=$1
# Si el parametro no esta dentro del rango, indica las instrucciones.
while [[ $num -ge 6 || $num -le 0 ]]; do 
	echo "Debes introducir un parametro del 1 al 5"
	exit 1
done
# Si el parametro es correcto, inicia el bucle
while [[ $num -ge 1 && $num -le 5 ]]; do
	touch $num.txt
	echo "Fichero $num.txt creado" 
	num=$((num+1))
done

