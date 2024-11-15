#!/bin/bash 

filepath="/home/nadeem/bash_scriting/Bash_scripting/nadeemtaj.csv"

if [[ -f $filepath  ]]
then 
	echo "FIle exist"
else
	echo "creating file now"
	touch $filepath
fi

