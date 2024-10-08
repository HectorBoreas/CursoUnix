#!/bin/bash
if [ $# -ge 1 ]; then
	echo "Uso: $0 <Sin parametros>"
	exit 1
fi
echo "Introduce en nombre del nuevo usuario"
read name

sudo useradd -m $name

sudo passwd $name


