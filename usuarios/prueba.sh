#!/bin/bash
sudo useradd -m $1 --badname
sudo passwd $1 << EOF
$2
$2
EOF
#	sudo passwd $1 -e -u
