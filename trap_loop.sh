#!/usr/bin/env bash
# Example of using the trap builtin command.

trap date USR1
trap custom USR2

custom() {
	echo "The Littlest Hobo"
}

echo "I set some traps:"
echo
trap -p
echo
echo "Heading into infinite loop (CTRL-c or SIGINT to exit)."
echo "My PID is: $$"
echo "Try sending me a signal! (eg: kill -USR1 $$ )"

while true; do
	sleep 0.5
done
