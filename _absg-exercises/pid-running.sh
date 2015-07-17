#!/bin/bash

my_pid=${1:-1}
my_interval=${2:-1}

while true; do
	# The commented line below works too
	#while ps -p $my_pid >/dev/null ; do
	if [[ -d /proc/$my_pid ]] ; then
		printf "[%s] Process with PID %s is running. " "$(date)" "$my_pid" 
	else
		printf "[%s] Process with PID %s is NOT running. " "$(date)" "$my_pid"
	fi

	# erase previous output line, leaving the cursor on the same line
	printf "\r"
	sleep $my_interval
done

