#!/usr/bin/env bash
# Example script that transforms text read from stdin

# Example invocation of this script:
#	capitalize-and-reverse-stdin.sh < /etc/passwd

while read line; do
	echo $line | tr a-z A-Z | rev
done < /dev/stdin
