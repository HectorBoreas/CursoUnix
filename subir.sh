#!/bin/bash
if [ $# -eq 0 ] || (( $1 != $#-1 )); then
	echo "Uso: $0 <directorio 1> <directorio 2> ..."
	exit 1
fi

shift

for subdir in $@; do
	if [ -d ./UbuntuPractica/$subdir ]; then
		echo "El directorio $subdir ya existe"
	else 
		
	while [[ $# > 1 ]]
	do

	case $subdir in
	        $1 ) 
	        	mkdir -pv ./UbuntuPractica/$subdir
	        	pwd > ./UbuntuPractica/$subdir/$subdir.txt
	        	break
	        ;; 
	        $2 ) 
	        	mkdir -pv ./UbuntuPractica/$subdir
	        	grep hector /home/hector/CursoUnix/apartado1.sh > ./UbuntuPractica/$subdir/$subdir.txt
	        	break
	        ;; 
	        $3 ) 
	        	mkdir -pv ./UbuntuPractica/$subdir
	        	tail /home/hector/CursoUnix/arbol.sh > ./UbuntuPractica/$subdir/$subdir.txt
	        	break
	        ;; 
	        *) break ;;
	       
	esac
	done	
			
	fi
done
