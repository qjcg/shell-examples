#!/usr/bin/env bash
# Example of using the trap builtin command.
# See "help trap"

echo "SIGINT (^C) is trapped, when I receive it I'll print the date."
echo

trap "echo SIGINT received!" INT
cat
