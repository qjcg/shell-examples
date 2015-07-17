#!/usr/bin/env bash
# Example of using << syntax to print output (rather than eg. one echo per line)

cat << END
Multiple lines of text
can be placed inside
a block like this.

They will all be printed out,
and we don't need an "echo" before
each line.

Variable names are expanded too.

HOME: $HOME
PATH: $PATH
END

# Equivalent version using echo
echo
echo Multiple lines of text
echo can be placed inside
echo a block like this.
echo 
echo They will all be printed out
echo and we don\'t need an "echo" before
echo each line.
echo 
echo Variable names are expanded too.
echo 
echo HOME: $HOME
echo PATH: $PATH
