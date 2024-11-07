#!/bin/bash 

while read myVar
do
	echo "value from file is $myVar"
done < /home/nadeem/bash_scriting/Bash_scripting/names.txt


