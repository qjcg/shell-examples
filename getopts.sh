#!/usr/bin/env bash
# Demo of using getopts to manage command line flags.
# documentation: "help getopts"

while getopts :abc opt ; do
	case $opt in
	a) echo got a ;;
	b) echo got b ;;
	c) echo got c ;;
	esac
done
