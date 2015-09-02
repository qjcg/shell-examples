#!/usr/bin/env bash
# Example of checking whether a command exists.
# See http://stackoverflow.com/a/677212

hash obviously_fake 2>/dev/null || {
	# echo to stderr
	>&2 echo "What, no obviously_fake command? I never would've guessed."
	exit 1
}

# will never execute
obviously_fake
