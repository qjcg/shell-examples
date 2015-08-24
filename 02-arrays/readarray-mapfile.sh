#!/usr/bin/env bash
# Example script that populates an array from stdin

# Example invocation of this script:
#	readarray-mapfile.sh < /etc/passwd

readarray MY_ARRAY < /dev/stdin
echo Just created a new array MY_ARRAY with ${#MY_ARRAY} elements.
echo The first value is ${MY_ARRAY[0]}
echo The last value is ${MY_ARRAY[@]: -1}
echo The second-last value is ${MY_ARRAY[@]: -2}
