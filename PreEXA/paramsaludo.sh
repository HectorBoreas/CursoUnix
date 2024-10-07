#/bin/bash
if [ $# -le 1 ] || [ $# -ge 3 ]; then
	echo "Uso: $0 <nombre> <edad>"
	exit 1
fi

if [ $2 -le 17 ]; then
	echo "Debes ser mayor de edad para acceder"
else
	echo "Bienvenid@ $1"
fi
