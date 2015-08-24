#!/usr/bin/env bash
# Example of using the trap builtin command.

trap myfunc INT

myfunc() {
	printf "\nDeath by SIGINT (CTRL-c)!\n"
}

echo 'Time for a nap! A SIGINT would kill me right about now...'
sleep 999999999
