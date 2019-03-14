#!/usr/bin/env bash
# Example script that INTERACTIVELY performs actions based on single character input.

# REACTIVATE display of input characters and exit.
trap "stty echo; exit 0" QUIT

printf 'Keys: a b c\nCtrl-C to quit!\n\n'

# DEACTIVATE display of input characters.
stty -echo
while read -n 1 char; do
	case $char in
	a) echo Command: AAA ;;
	b) echo Command: BBB ;;
	c) echo Command: CCC ;;
	*) echo Command: --UNKNOWN-- ;;
	esac
done < /dev/stdin
