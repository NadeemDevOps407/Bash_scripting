#!/bin/bash 

#And Operators

read -p "What is your age? " age
read -p "YOur country: " country 

if [[ $age -ge 18 ]] && [[ $country == USA ]]
then 
	echo "You can vote"
else 
	echo "You can't vote"
fi
