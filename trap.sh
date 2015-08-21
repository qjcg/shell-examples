#!/usr/bin/env bash
# Example of using the trap builtin command.

trap myfunc INT

myfunc() {
	printf "\nDeath by SIGINT (CTRL-c)!\n"
}

echo 'Time for a nap! The only thing that might wake me up is a SIGINT.'
sleep 999999999
