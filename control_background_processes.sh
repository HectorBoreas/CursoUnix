#!/bin/bash
comando1() {
	ls
	sleep 8
}
comando1 &
pid1=$!

echo "Proceso en segundo plano"
echo "PID Comando"
echo "$pid1 Comando ls"

# Espera a que los procesos finalicen
wait $pid1

# Utiliza el comando ps para listar los procesos
ps aux | grep -E 'ls'

# Utiliza el comando Kill para terminar el proceso
kill $pid1

echo "Proceso terminado"
