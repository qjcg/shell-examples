#!/usr/bin/env bash
# Example of using the trap builtin command.

trap myfunc INT
trap date USR1
trap uptime USR2

echo printing traps:
trap -p

myfunc() {
	printf "\nDeath by SIGINT (CTRL-c)!\n"
}

while true; do
	true
done
