#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Uso: $0 <puerto o puerto:puerto><protocolo>"
	exit 1
fi
sudo ufw deny $1/$2
echo "Puerto/s $1 con protocolo $2 bloqueados"
