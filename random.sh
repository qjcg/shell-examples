#!/bin/bash
# Demonstrate the use of the RANDOM built-in shell variable.

echo Print a random integer between 0-32767:
echo $RANDOM
echo
echo Print a number between 1-10:
echo $(( $RANDOM % 10 + 1))
echo
echo Print a random element from an array:
cars=(Pinto Ferrari Prius Focus)
echo ${cars[ $(( $RANDOM % ${#cars[*]} )) ]}
