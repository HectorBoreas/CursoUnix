#/bin/bash
if [ $# -ge 1 ]; then
	echo "Uso: $0 <Sin parametros hasta pregunta>"
	exit 1
fi

echo "Indica tu nombre"
read nombre
echo "$nombre, ¿Que edad tienes?"
read edad

if [ $edad -le 17 ]; then
	echo "Debes ser mayor de edad para acceder"
else
	echo "Bienvenid@ $nombre"
fi

