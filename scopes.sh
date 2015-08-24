#!/bin/bash
# Demonstrate bash scopes.

INSTRUCTOR='Jerry'

# we have access to the global scope in a function
get_instructor1() {
	echo $INSTRUCTOR
}

# **will** modify the value in the global scope
get_instructor2() {
	INSTRUCTOR='Jerry'
}

# will NOT modify the value in the global scope
get_instructor3() {
	local INSTRUCTOR='Elvis'
}

# will place student IN GLOBAL SCOPE
get_instructor4() {
	STUDENT='Jack'
}

get_instructor1
get_instructor2
get_instructor3
get_instructor4

echo Now the value of INSTRUCTOR in the global scope is: $INSTRUCTOR
echo Now the value of STUDENT in the global scope is: $STUDENT
