#/bin/bash
#Definimos las variables
nombre="Juan"
edad=17

#Condicional para verificar la edad
if [ $edad -ge 18 ]; then
	echo "Bienvenid@ $nombre"
else
	echo "$nombre debes ser mayor de edad para acceder"
fi

