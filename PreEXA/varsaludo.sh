#/bin/bash
nombre="Juan"
edad=17

if [ $edad -ge 18 ]; then
	echo "Bienvenid@ $nombre"
else
	echo "$nombre debes ser mayor de edad para acceder"
fi

