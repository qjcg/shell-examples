#!/usr/bin/env bash
# Example of using the trap builtin command.

trap date INT
echo "Time for a nap! A SIGINT would kill me right about now..."
sleep 999999999
