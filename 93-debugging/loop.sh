#!/bin/bash
# Inspecting values in a loop.

# turn on "debug mode"
set -x

x=0
for _ in {1..10}; do
	(( x++ ))
	#echo "The current number is $n"
done
