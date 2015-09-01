#!/usr/bin/env bash
# Double or triple-space a file

file=${1:?Please provide a filename.}
flag=${2:-2}

[[ -f $file ]] || { echo File does not exist: $file ; exit 1; }

case $flag in
3) nls="\n\n\n" ;;
*) nls="\n\n" ;;
esac

while read line; do
	printf "%s%b" "$line" "$nls"
done < $file
