#!/bin/bash
# Demonstrate some simple awk functionality.

# regular expression match (kind of like "grep")
# if no action specified, will print the whole line ("$0" in awk syntax)
awk -F: '/root/' /etc/passwd

# print only 3rd and 5th fields (columns)
awk -F: '/root/ {print $3, $5}' /etc/passwd

# same thing, reverse order
awk -F: '/root|nobody/ {print $5, $3}' /etc/passwd

# multiple awk commands in a block, separated by semicolons
# the gsub built-in awk function makes a global substitution on a line
awk -F: '/root|nobody/ {gsub("root", "ROOT"); print $5, $3, $1 }' /etc/passwd
