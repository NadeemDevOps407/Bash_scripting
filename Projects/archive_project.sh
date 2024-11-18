#!/bin/bash 

#$Revision:001$
#$Fri Nov 17 21:19:55 IST 2024$

#Variables
#set x
BASE=/home/nadeem/bash_scriting/Bash_scripting/Projects
DEPTH=10
RUN=0

#Check if the directory is present or not 

if [ ! -d $BASE ]
then 
	echo "directory does not exist: $BASE"
	exit 1
fi

#create "archive" folder if nor present 

if [ ! -d $BASE/archive ]
then 
	mkdir $BASE/archive 
fi

#find the list of files larger then 20MB
for i in find "$BASE" -maxdepth "$DEPTH" -type f -size +20M
do
	if [ $RUN -eq 0 ]
	then 
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi	

done
