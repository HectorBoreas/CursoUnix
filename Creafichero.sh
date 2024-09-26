#!/bin/bash
touch $1.txt
#nombre=$1.txt
if [ $2 == "rwx" ]; then
	owner=7
else
	if [ $2 == "rw" ]; then
		owner=6
	else
		if [ $2 == "w" ]; then
			owner=4
		else
			if [ $2 == "r" ]; then
				owner=2
			
			fi
		fi
	fi
fi
if [ $3 == "rwx" ]; then 
        grupo=7
else
        if [ $3 == "rw" ]; then
                grupo=6
	else
                if [ $3 == "w" ]; then
                        grupo=4
		else
                        if [ $3 == "r" ]; then 
                                grupo=2
			
                        fi 
                fi 
        fi 
fi 
if [ $4 == "rwx" ]; then 
        otros=7
else
        if [ $4 == "rw" ]; then
                otros=6
	else 
                if [ $4 == "w" ]; then
                        otros=4
		else 
                        if [ $4 == "r" ]; then 
                                otros=2 
                        fi 
                fi 
        fi 
fi 
#echo $owner
#echo $grupo
#echo $otros
permisos=$owner$grupo$otros
#echo $permisos
chmod $permisos $1.txt
