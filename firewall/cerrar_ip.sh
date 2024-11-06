#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Uso: $0 <IP>"
	exit 1
fi
sudo ufw deny from $1
echo "IP $1 deshabilitada"
