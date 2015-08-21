#!/usr/bin/env bash

echo Just an if
if true; then
	echo it was true
fi

# Example if statements
echo if with multiple branches and a default
if false; then
	echo "C'etais true"
elif grep john /etc/passwd &>/dev/null; then
	echo grep found something
else
	echo "C'etais pas true"
fi
