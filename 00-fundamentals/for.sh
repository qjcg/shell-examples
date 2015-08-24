#!/usr/bin/env bash
# Example for loop

echo 'for loop: iterating through a list'
for f in file1 file2 file3 file4 file5; do
	echo "Current file: $f"
done

echo

# same thing as above in a C-style for-loop syntax
echo 'for loop: C-style syntax'
for ((f=1; f<6; f++)); do
	echo "Current file: file$f"
done
