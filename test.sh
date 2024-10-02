#!/bin/bash

directorio="."
prefijo="archivo"

contador=1

for archivo in "$directorio"/*
do
  if [ -f "$archivo" ]
  then
    nuevo_nombre="${prefijo}_${contador}.txt"
    mv "$archivo" "$directorio/$nuevo_nombre"
    echo "Renombrado $archivo a $nuevo_nombre"
    contador=$((contador + 1))
  fi
done

