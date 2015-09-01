#!/usr/bin/env bash
# Regularly check whether provided PID is currently running.

pid=${1:-1}
interval=${2:-1}

while true; do
	if [[ -d /proc/$pid ]] ; then
		printf "[%s] Process with PID %d is running. " "$(date)" "$pid" 
	else
		printf "[%s] Process with PID %d is NOT running. " "$(date)" "$pid"
	fi

	# erase previous output line, leaving the cursor on the same line
	printf "\r"
	sleep $interval
done
