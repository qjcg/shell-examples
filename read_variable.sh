#!/usr/bin/env bash
# Example of using the read builtin command

read -p "Please enter something... > " -t 10 something
echo "The something you entered was: $something"
