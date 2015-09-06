#!/usr/bin/env bash
# Example of function syntax and usage

function hello1() {
	echo Hello $1	
}

# "function" keyword not needed
hello2() {
	echo Hello $1
}

hello1 Jerry
hello1 Jack
hello1 Jimmy

hello2 Elvis
hello2 Douglas
hello2 Wenceslas

echo
echo "Functions must be defined BEFORE they're called."
echo "Here, calling the function f3 BEFORE it's defined will result in an error:"

f3

f3() {
	echo This is f3
}

