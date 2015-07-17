#!/usr/bin/env bash
# Convert files to upper/lower case.

conversion="$1"
shift
file_list="$@"

for file in $file_list; do
	if [[ -r $file ]]; then
		if [[ $conversion = -M ]]; then
			echo "Converting $file to uppercase -> $file.MAJ"
			tr a-z A-Z < "$file" > "$file".MAJ
		elif [[ $conversion = -m ]] ; then
			echo "Converting $file to lowercase -> $file.min"
			tr A-Z a-z < "$file" > "$file".min
		else
			echo "Please specify a valid conversion argument: -m or -M"
			exit 1
		fi
	else
		echo "$file is not a readable file."
	fi
done
