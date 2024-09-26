#!/bin/bash
num1=$1
num2=$2

while [ $num1 -ge $num2 ]; do
	echo "Error, el primer parametro es mayor que el segundo"
	exit 1
done
for (( i = $num1; i <= $num2; i++)); do
	echo $i
done
