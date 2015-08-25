#!/usr/bin/env bash
# Print out 5 (pseudo)random lottery numbers from 1-50.
nums=( $(seq 50 | shuf | head -5) )

if [[ $1 == -s ]]; then
	printf "Lotto Numbers (%s)\n%s\n" "$(date)" "${nums[*]}" > /tmp/lotto-numbers.txt
else
	echo ${nums[*]}
fi
