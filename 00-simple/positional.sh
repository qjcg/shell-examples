#!/usr/bin/env bash
# Script to demonstrate the meaning of the different positional arguments

cat << WATERMELON
\$0: $0
\$1: $1
\$2: $2
\$3: $3
\$4: $4
\$#: $#
\$*: $*
\$?: $?
WATERMELON

echo
echo "Intentionally trying to run a command that doesn't exist:"
does-not-exist
echo '$?: ' $?

echo
echo I do a shift here:
shift
echo '$*: ' $*
echo '$1: ' $1
echo '$2: ' $2

echo
echo I do another shift here:
shift
echo '$*: ' $*
echo '$1: ' $1
echo '$2: ' $2

echo
echo I do a shift 3 here:
shift 3
echo $?
echo '$*: ' $*
echo '$1: ' $1
echo '$2: ' $2
