#!/bin/bash

# Dado dos enteros almacenados en variables, crea un script en bash que permita mostrar el mayor en la terminalk
num1=$1
num2=$2

if [ $num1 -gt $num2 ]; then
	echo "El primer valor $num1 es mayor que $num2"
else if [ $num2 -gt $num1 ]; then
	echo "El segundo valor $num2 es mayor que $num1"
	else
	echo "Ambos valores son iguales"
	fi
fi
