#!/bin/bash
test=$(($#-1))
if [[ $1 -eq $test ]]; then
	ruta=./PracticaUbuntu
	num=$1
	mkdir -p -v $ruta
	j=1
	for (( i = 1; i <= $num; i++)); do
		if [ $j = 1 ]; then
			mkdir -p -v $ruta/$2
			ls /home/hector >> $ruta/$2/$2.txt
		else
			if [ $j = 2 ]; then
				mkdir -p -v $ruta/$2
				grep hector /home/hector/CursoUnix/apartado1.sh >> $ruta/$2/$2.txt
			else
				if [ $j > 2 ]; then
                                	mkdir -p -v $ruta/$2
                                	tail /home/hector/CursoUnix/arbol.sh >> $ruta/$2/$2.txt
                		fi
			fi
		fi
		#shift Aumenta en uno el valor de los parametros, pej: $2 pasa a $3 y luego a $4
		shift
		j=$((j+1))
	done
else
	echo "El número indicado debe ser igual a las carpetas a crear"
fi
