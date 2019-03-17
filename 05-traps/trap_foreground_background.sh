#!/usr/bin/env bash
# Example of using the trap builtin command.
# See "help trap"
# See also discussion here ("When is the signal handled?"):
#  - http://mywiki.wooledge.org/SignalTrap#When_is_the_signal_handled.3F

echo
echo "PID: $$"
echo "SIGINT  (^C) is trapped, when I receive it I'll only print the date."
echo "SIGALRM & SIGUSR1 are also trapped, and will print a message when received."
echo "To exit: kill $$"
echo

trap "date" INT
trap "echo ALRM received!" ALRM
trap "echo USR1 received!" USR1

loop_fg_job() {
	while true ; do
		# The trap will only be run after foreground process finishes!
		sleep 30m
	done
}

loop_bg_job() {
	while true ; do
		sleep 30m &
		# Wait for last job placed in background to complete.
		wait $!
	done
}

[[ $1 == -f ]] && loop_fg_job || loop_bg_job
