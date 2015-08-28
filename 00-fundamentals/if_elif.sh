#!/usr/bin/env bash
# Example if statement with multiple branches via elif, else

echo If with multiple branches and a default
if false; then
	echo "This will never execute"
elif grep root /etc/passwd &>/dev/null; then
	echo grep found something
else
	echo "Nothing true"
fi
