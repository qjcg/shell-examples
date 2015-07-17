#!/bin/bash
# A script that creates a backup of itself.

cat "$0" > backup.sh
echo "Created backup of $0: backup.sh"
