#!/bin/bash

# Leer el archivo línea por línea
while read -r linea; do

	sudo useradd -m "$linea" && echo "$linea:chpasswd" | sudo chpasswd

done < $1

