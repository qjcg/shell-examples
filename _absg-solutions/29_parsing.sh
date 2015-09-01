#!/usr/bin/env bash
# Print /etc/passwd with nice columnar output

column -t -s ':' /etc/passwd

# OTHER SOLUTIONS:
# tr ':' '\t' < /etc/passwd
# awk -F: '{printf "%-18s %s %s %s %s %s %s\n", $1, $2, $3, $4, $5, $6, $7}' /etc/passwd
