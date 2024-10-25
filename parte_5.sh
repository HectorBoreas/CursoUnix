#!/bin/bash
if [ ! $# -eq 3 ] ; then
	echo "Uso: $0 <usuario> <directorio> <fichero>"
fi
sudo useradd -m $1 && echo "$1:Admin1234" | sudo chpasswd
mkdir /home/$1/$2
sudo chown $1:$1 /home/$1/$2
touch /home/$1/$2/$3.txt
ls -las /home/$1
