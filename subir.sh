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
#		echo $1
#		shift
		
	while [[ $# > 0 ]]
	do
	mkdir -v ./UbuntuPractica/$subdir
#		opcion=$
	case "$#" in
	        1 ) 
	        	mkdir -p ./UbuntuPractica/$subdir
	        	pwd > $ruta/$2/$2.txt
#	        	shift
	        	break
	        ;; 
	        2 ) 
	        	mkdir -p ./UbuntuPractica/$subdir
	        	grep hector /home/hector/CursoUnix/apartado1.sh > $ruta/$2/$2.txt
#	        	shift
	        	break
	        ;; 
	        3 ) 
	        	mkdir -p ./UbuntuPractica/$subdir
	        	tail /home/hector/CursoUnix/arbol.sh > $ruta/$2/$2.txt
#	        	shift
	        	break
	        ;; 
	        *) shift; break ;;
	       
	esac
	done
		
#			ls UbuntuPractica > ./UbuntuPractica/$subdir/$subdir.txt
		
#			pwd UbuntuPractica > ./UbuntuPractica/$subdir/$subdir.txt
			
	fi
done
