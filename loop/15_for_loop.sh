#!/bin/bash

for i in {1..15}
do 
	echo "number is $i"

done

for i in nadeem ali waqas
do
       	echo "Name is $i"
done

#getting values from a files names.text

FILE="/home/nadeem/bash_scriting/Bash_scripting/names.txt"

for name in $(cat $FILE)
do 
	echo "Name is $name"
done 
