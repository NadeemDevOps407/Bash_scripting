#!/bin/bash 

read -p "WHich site you want to check?" site

ping -c 1 $site
sleep 1s

if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $site"
else 
	echo "Unable to connect $site"
fi

