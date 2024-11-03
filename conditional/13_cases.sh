#!/bin/bash 

echo "Provide an option"

echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice 

case $choice in 
	a) date;;
	b)ls;;
	c)pwd;;
	d)echo "please provide a valid value"
esac

