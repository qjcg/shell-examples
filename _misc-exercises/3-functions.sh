#!/bin/bash
# Solution to 3 functions exercise

fun1() { echo Calling fun1; }
fun2() { echo Calling fun2; }
fun3() { echo Calling fun3; }

# doing it with an if block
if [[ $1 == fun1 ]]; then
	fun1
elif [[ $1 == fun2 ]]; then
	fun2
elif [[ $1 == fun3 ]]; then
	fun3
fi

# same thing using a case statement
case $1 in
fun1) fun1 ;;
fun2) fun2 ;;
fun3) fun3 ;;
esac

if [[ $# -eq 0 ]]; then
	echo "You should enter some arguments. Then I would be truly happy."
fi
