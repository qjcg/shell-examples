#!/usr/bin/env bash
# Example if statements

echo Just an if
if true; then
	echo it was true
fi

echo if with multiple branches and a default
if false; then
	echo "This will never execute"
elif grep root /etc/passwd &>/dev/null; then
	echo grep found something
else
	echo "Nothing true"
fi
