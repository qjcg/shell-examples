#!/usr/bin/env bash
# Example script that transforms text read from stdin.

while read line; do
	echo "$line" | tr a-z A-Z | rev
done
