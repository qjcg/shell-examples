#!/bin/bash
# Demonstrating the usefulness of "set -x" for debugging.

# uncomment to turn on "debugging mode"
set -x

NAME='Jerry Q. Hacker'
AGE=42

# =~ --> regex matching test
if [[ $NAME =~ Jerry ]]; then
	echo "Hey Jerry!"
fi

[[ $AGE -gt 100 ]] || echo "$NAME is a young spring chicken."
