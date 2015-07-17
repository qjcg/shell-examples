#!/usr/bin/env bash
# Example for loop

echo 'Entering Loop!'
for FILE in file{1..10}; do
	echo "The current file in the loop is: $FILE"
done
