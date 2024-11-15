#!/bin/bash

#checking if the user is root or not

if [[ $UID -eq 0 ]]
then 
	echo "user is root"
else 
	echo "user is not root"
fi

