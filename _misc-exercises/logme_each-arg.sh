#!/bin/bash
# Log each argument with timestamp to stdout on a separate line.

for arg in "$@"; do
	echo $(date +%d-%m-%y_%H-%M-%S): $arg
done
