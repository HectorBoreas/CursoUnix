#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Uso: $0 <Nombre nuevo usuario>"
	exit 1
fi

sudo useradd -m $1

sudo passwd $1


