#!/bin/bash
comando1() {
	sleep 16
	ls
}
comando1 &
pid1=$!
echo $pid1
# Espera a que el usuario pulse una tecla
echo "Pulse una tecla para continuar"

read  

#comando1 &
#pid1=$!

echo "Proceso en segundo plano"
echo "PID Comando"
echo "$pid1 Comando ls"

# Utiliza el comando ps para listar los procesos
ps aux | grep -E 'ls'

# Utiliza el comando Kill para terminar el proceso
kill $pid1

echo "Proceso terminado"
