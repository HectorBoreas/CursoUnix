#!/bin/bash
if [ $# -ge 1 ]; then
	echo "Uso: $0 <Sin parametros>"
	exit 1
fi

name="Juana"

sudo useradd -m $name

sudo passwd $name


