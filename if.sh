#!/usr/bin/env bash
# Example if statements

if false; then
	echo "C'etais true"
else if grep john1231231231231 /etc/passwd ; then
	echo Grep found something
else
	echo "C'etais pas true"
fi

#for i in {1..100..2}; do
#	echo $i
#done
