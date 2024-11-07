#!/bin/bash 

while IFS="," read Id name age
do 
	echo "Id is $Id"
	echo "name is $name"
	echo "age is $age"
done < test.csv 
