#/bin/bash
if [ $# -ge 1 ]; then
	echo "Uso: $0 <Debe esperar a que se solicite los datos>"
	exit 1
fi
echo "Indique la ruta donde desea crear el nuevo directorio"
read ruta

if [ ! -e $ruta ]; then
	echo "Ruta no válida"
	exit 1
fi

echo "Nombre del nuevo directorio"
read name

if [ -d $ruta/$name ]; then
	echo "El directorio ya existe"
	exit 1
else
	mkdir $ruta/$name
	echo "El directorio $name, ha sido creado en $ruta"
fi

