#!/usr/bin/env bash
# Example for loop

echo 'Entering Loop!'
for f in file{1..5}; do
	echo "Current file: $f"
done

# same thing in a C-style for-loop syntax
for ((f=1; f<6; f++)); do
	echo "Current file: file$f"
done
