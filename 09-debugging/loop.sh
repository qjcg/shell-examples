#!/bin/bash
# Trivial loop for inspection via bashdb.

hash bashdb 2>/dev/null || { >&2 echo Please install bashdb. ; exit 1; }

x=0
for _ in {1..10}; do
	(( x++ ))
done
