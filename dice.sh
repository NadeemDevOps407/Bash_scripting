#!/bin/bash 

#generating random no. between 1 to 6. 

No=$(( $RANDOM%6 + 1 ))

echo "number is $No"
