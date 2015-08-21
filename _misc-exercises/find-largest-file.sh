#!/bin/bash
# Prints out the largest file on the filesystem

min_size=$1

# NOTES
# - the find command starts it's search at the top of the filesystem hierarchy: "/"
# - it prints out all files that are 10 megabytes or larger
# - we use the "-exec" action to run a command for each file found by find
# - we then pipe these results to the sort command, sorting on column 5 (filesize), in human-readable format
# - finally, piping to "tail -1" prints the largest file found

if [[ -z $1 ]]; then
	echo You must specify a minimum filesize as the first argument.
	exit 1
fi

# Validate input via regular expression test
if [[ $1 =~ [1-9][0-9]*[KMGT]? ]] ; then
	find / -size +$min_size -exec ls -lh '{}' \; 2>/dev/null | sort -k5 -h | tail -1
else
	echo "First argument must be a minimum filesize (ex: 10M, 1G)"
fi
