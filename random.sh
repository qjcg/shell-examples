#!/bin/bash
# Demonstrate the use of the RANDOM built-in shell variable.

echo On each access, RANDOM will be a random integer between 0-32767.
echo $RANDOM

echo This will pick a number between 1-10
echo $(( $RANDOM % 10 + 1))
echo

echo This will pick a random element from an array
arr=(pinto ferrari prius focus)
echo ${arr[ $(( $RANDOM % ${#arr[*]} )) ]}
