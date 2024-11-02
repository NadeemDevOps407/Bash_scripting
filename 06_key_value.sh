#!/bin/bash

#how to store the key values pairs

declare -A myArray 
myArray=( [name]=Prashant [age]=28 [city]=paris )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[city]}"

