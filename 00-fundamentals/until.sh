#!/usr/bin/env bash
# Example of an until block

# infinite loop
until ! date; do
	sleep 1
done
