#!/bin/bash

# Ejecuta tres comandos diferentes en segundo plano
command1() {
    sleep 5
}
command2() {
    sleep 10
}
command3() {
    sleep 8
}

command1 &
pid1=$!

command2 &
pid2=$!

command3 &
pid3=$!

echo "Procesos en segundo plano en ejecución:"
echo "PID   Comando"
echo "$pid1   command1"
echo "$pid2   command2"
echo "$pid3   command3"

# Espera a que los procesos finalicen
#wait $pid1
#wait $pid2
#wait $pid3

# Utiliza el comando ps para listar los procesos en ejecución y extraer información relevante
echo "Procesos en ejecución después de la ejecución en segundo plano:"
ps aux | grep -E 'command1|command2|command3'

# Utiliza el comando kill para terminar todos los procesos ejecutados en segundo plano
kill $pid1 $pid2 $pid3

echo "Procesos terminados."
