#!/bin/bash

main() {
	dir=./PracticaUbuntu
	#mkdir $dir

	declare CONTADOR=1

	while [ $1 > 0 ]; do
		let CONTADOR=$CONTADOR+1
		mkdir -p $dir
		mkdir -p $dir/$2
		touch $dir/$2/$2.txt
		shift
	done
}
main $@
