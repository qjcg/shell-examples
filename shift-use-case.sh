#!/usr/bin/env bash
# Demonstrates a basic use case for the shift keyword

(( $# )) || { >&2 echo "This script requires an arbitrary number of arguments. Ex: $0 aaa bbb ccc" ; exit 1; }

# store first positional parameter in a variable
direction=$1
shift

# the shift allows us to use "the rest" of the parameters, no matter how many there were
words=$*

for w in $words; do
	if [[ $direction == upper ]]; then
		tr a-z A-Z <<< $w
	else
		tr A-Z a-z <<< $w
	fi
done
