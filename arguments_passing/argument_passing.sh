#!/bin/bash 

#how to access these arguments 

echo "Fist argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo "NUmber of arguments are -s $#"

#for loop to access the values from arguments 
for filename in $@
do
	echo "Copying file - $filename"
done

