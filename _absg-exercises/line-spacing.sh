#!/bin/bash
# Double or triple-space a file

FLAG=$1
FILE=$2

double() {
	# These also work:
	# sed G $1
	# awk '{printf "%s\n\n", $0}' $1
	sed 's/$/\n/' $1
}

builtins_double() {
	readarray LINES < $1
	for line in "${LINES[@]}"; do
		printf "$line\n"
	done
}

triple() {
	sed 's/$/\n\n/' $1
}

remove_empty_lines() {
	# These two also work:
	#awk '! /^$/' $1
	#sed '/^$/d' $1

	grep -v '^$' $1
}

case $FLAG in
-d) double $FILE ;;
-dd) builtins_double $FILE ;;
-t) triple $FILE ;;
-r) remove_empty_lines $FILE ;;
*) echo "Please enter a valid option flag [-d double] [-t triple] [-r remove_empty_lines]" ;;
esac
