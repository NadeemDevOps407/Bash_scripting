#!/bin/bash 

read -p "Enter your marks:" marks 

if [[ $marks -gt 40 ]]
then 
	echo "you are PASS"
else 
	echo "you are Fail!!!"

fi
