#!/bin/bash 

read -p "Enter your marks:" marks 

if [[ $marks -ge 80 ]]
then 
	echo "1st Division"
elif [[ $marks -ge 60 ]]
then 
	echo "2nd division"
elif [[ $marks -ge 40 ]]
then 
	echo "3rd Division"
else 
	echo "you are Fail!!!"

fi

