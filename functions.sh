#!/usr/bin/env bash
# Example of function syntax and usage

function hello1() {
	echo Hello $1	
}

# "function" keyword not needed
hello2() {
	echo Hello $1
}

hello1 John
hello1 Jack
hello1 Jerome

hello2 Elvis
hello2 Douglas
hello2 Wenceslas
