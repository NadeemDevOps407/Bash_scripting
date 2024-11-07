#!/bin/bash 

a=10

until [ $a -eq 1 ]
do 
	echo "value of a is $a"
	let a--
done
