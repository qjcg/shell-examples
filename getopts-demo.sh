#!/usr/bin/env bash
# Demo of using getopts to manage command line flags for a script.
# See documentation for this shell builtin for more info: "help getopts"

while getopts :abc opt ; do
	case $opt in
	a) echo got a ;;
	b) echo got b ;;
	c) echo got c ;;
	esac
done
