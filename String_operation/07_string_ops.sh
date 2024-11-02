#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}

echo "Length of the myVar is $myVarLength"

echo "Upper case is ${myVar^^}"
echo "lower case is ${myVar,,}"


#to replace a string 

newVar=${myVar/BUddy/Paul}

echo "New Var is ---- $newVar"

#to slice a string 
echo "after slice ${myVar:4:5}"
