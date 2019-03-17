#!/usr/bin/env bash
# Example of using traps to trap signals with multiple commands.

echo "SIGINT (^C) is trapped, when I receive it I'll print the date."
echo

trap "date" INT
cat
cat
cat

echo 'Now a SIGINT will cause "uptime" to run instead.'
trap "uptime" INT
cat
