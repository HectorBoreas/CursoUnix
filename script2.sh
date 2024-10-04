#!/bin/bash

while read -r numero; do
    resultado=$((numero * 2))
    echo "El doble de $numero es $resultado"
done
