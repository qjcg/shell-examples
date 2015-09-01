#!/usr/bin/env bash
# Example of using the trap builtin command.
# See "help trap"

trap date INT
echo "Time for a nap! A SIGINT would kill me right about now..."
sleep 999999999
