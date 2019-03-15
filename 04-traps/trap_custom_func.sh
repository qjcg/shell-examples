#!/usr/bin/env bash
# Example of using the trap builtin command and calling a custom function.

trap snapshot_db INT

snapshot_db() {
	echo "BACKING UP DATABASE"
}

echo "PID: $$"
trap -p

cat
