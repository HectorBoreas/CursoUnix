#/bin/bash
#Comprobación de entrada correcta
if [ $# -ne 0 ]; then
	echo "Uso: $0 <Sin parametros hasta pregunta>"
	exit 1
fi

#Pregunta para almacenar los datos de la variable
echo "Indica tu nombre"
read nombre
echo "$nombre, ¿Que edad tienes?"
read edad

#Comprobación de edad con condicional
if [ $edad -le 17 ]; then
	echo "Debes ser mayor de edad para acceder"
else
	echo "Bienvenid@ $nombre"
fi

