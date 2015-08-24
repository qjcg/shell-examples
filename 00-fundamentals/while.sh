#!/usr/bin/env bash
# Example while and until blocks

while date; do
	sleep 1
done

COUNT=10
until [[ $COUNT -eq 0 ]]; do
	date
	sleep 1
	(( COUNT-- ))
done
