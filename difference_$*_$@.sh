#!/usr/bin/env bash
# Show the difference between "$*" and "$@"

usage() {
cat << END
Show the difference between (double-quoted) "\$*" and "\$@"
(Pass two or more arguments to this script to see it work)

$(basename $0) <arg1> <arg2> ... [<argN>]

END
}

[[ $# -lt 2 ]] && usage && exit

echo 'double quoted "$*": (all arguments considered "one big argument" during for loop)'
for i in "$*"; do
	echo "$i"
done

IFS='_'
echo
echo '$*: (with IFS set to "_", not the default " ")'
for i in "$*"; do
	echo "$i"
done

echo
echo 'double quoted "$@": (each argument considered separate item during for loop)'
for j in "$@"; do
	echo "$j"
done
