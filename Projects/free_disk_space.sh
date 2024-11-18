#!/bin/bash 

#monitoring free disk space 

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}'| tr -d %)
TO="Nadeemtaj407@gmail.com"  #setup postfix 

if [[ $FU -ge 80 ]]
then 
	echo "warning, disk space is low - $FU" | mail -s "Disk space alter" $TO"

else
	echo "All good"
fi

