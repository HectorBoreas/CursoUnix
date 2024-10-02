#!/bin/bash
comando1(){
	whoami
	sleep 6
}
comando2(){
        hostname
	sleep 4
}
comando3(){
        pwd
	sleep 7
}
comando4(){
        date
	sleep 2
}
comando5(){
        ls
	sleep 10
}
comando1 &
pid1=$!
comando2 &
pid2=$!
comando3 &
pid3=$!
comando4 &
pid4=$!
comando5 &
pid5=$!

wait $pid1 $pid2 $pid3 $pid4 $pid5

echo "Procesos en ejecución después de la ejecución en segundo plano"
ps aux | grep -E 'comando1|comando2|comando3|comando4|comando5'

# Terminamos los procesos con el comando kill
kill $pid1 $pid2 $pid3 $pid4 $pid5


echo "procesos terminados"
