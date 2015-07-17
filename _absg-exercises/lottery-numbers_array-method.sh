#!/bin/bash
# Print out 5 (pseudo)random lottery numbers
# (See lottery-numbers.sh for a simpler solution)

# Print a pseudorandom number between 1 and 50
pick_number() {
	echo $(( $RANDOM % 50 + 1 ))
}

# Create an empty array, then populate with 10 pseudorandom numbers
lotto_numbers=()
for i in {0..10}; do
	lotto_numbers[$i]=$(pick_number)
done

# Filter 10-number array as follows:
# - convert spaces to newlines (result: one number per line of output)
# - sort the list conserving *only* unique numbers
# - then, sort the list randomly (so as not to conserve only lower numbers in the next step)
# - finally, select five first unique random numbers from shuffled list
lotto_numbers=( $(echo ${lotto_numbers[*]} | tr ' ' '\n' | sort -un | sort -R | head -5) )

# Output to file or stdout
if [[ $1 == -f && -n "$2" ]]; then
	outfile="$2"
	printf "[%s]  Your lottery numbers:\t%s\n" "$(date)" "${lotto_numbers[*]}" > $outfile
else
	printf "[%s]  Your lottery numbers:\t%s\n" "$(date)" "${lotto_numbers[*]}"
fi
