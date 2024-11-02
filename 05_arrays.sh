#!/bin/bash 

#array

myarry=(1 2 3 Hello "hi man")

echo "${myarry[0]}"

echo "${myarry[1]}"

#how to find no. of values in an array

echo "the length of an array ${#myarry[*]}"
