#/bin/bash
#Comprobación de parametros correctos
if [ $# -ne 0 ]; then
	echo "Uso: $0 <Debe esperar a que se solicite los datos>"
	exit 1
fi

#Preguntamos ruta y almacenamos la respuesta
echo "Indique la ruta donde desea crear el nuevo directorio"
read ruta

#Comprobación de ruta
if [ ! -e $ruta ]; then
	echo "Ruta no válida"
	exit 1
fi

#Preguntamos nombre y almacenamos respuesta
echo "Nombre del nuevo directorio"
read name

#Comprobación de si ya esiste y creación de directorio
if [ -d $ruta/$name ]; then
	echo "El directorio ya existe"
	exit 1
else
	mkdir $ruta/$name
	echo "El directorio $name, ha sido creado en $ruta"
fi

