#!/bin/bash

echo "Introduce una ruta"
read directorio

echo "Introduce la palabra a buscar"
read cadena_a_buscar

archivos_txt=$(find "$directorio" -type f -name "*.txt")

for archivo in $archivos_txt; do
    if grep -q "$cadena_a_buscar" "$archivo"; then
        echo "Cadena encontrada en el archivo: $archivo"
        grep "$cadena_a_buscar" "$archivo"
        echo "----------------------------------------"
    fi
done
