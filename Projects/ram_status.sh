#!/bin/bash

FREE_Space=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then 
	echo "WARNING, RAM IS running low"
else 
	echo "RAM SPACE IS sufficient - $FREE_SPACE M"
fi

