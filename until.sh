#!/usr/bin/env bash
# Example of an until block

# infinite loop
until ! date; do
	sleep 2
done
