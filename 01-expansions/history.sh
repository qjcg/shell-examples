#!/usr/bin/env bash
# Examples of history expansion usage.
# See bash(1)/HISTORY EXPANSION

source ../_vendor/bash_colors/bash_colors.sh

# These options are needed to manually enable
# history expansion for a non-interactive session
# (eg. a script).
set -o history
set -H

echo
echo FORMAT:
clr_green 'Syntax: description'
echo Initial command output
echo History expansion
clr_red 'History expansion output'

echo
clr_blueb '---Event Designators---'

echo
clr_green '!!: previous command'
echo aaa bbb ccc
clr_red '!! '"!!"

echo
clr_green '!-1: previous command another way'
echo aaa bbb ccc
clr_red '!-1 '"!-1"

echo
clr_green '!string: previous command starting with string'
echo aaa bbb ccc
clr_red '!echo '"!echo"

echo
clr_green '!?string?: previous command containing string'
echo aaa bbb ccc
clr_red '!?bbb? '"!?bbb?"

echo
clr_green '^pattern^substitution^: quick substitution'
echo aaa bbb ccc
^aaa^AAA^

echo
clr_blueb '---Word Designators---'

echo
clr_green '!!:^ : first argument of previous command'
echo aaa bbb ccc
clr_red '!!:^ '"!!:^"

echo
clr_green '!!:$ : last argument of previous command'
echo aaa bbb ccc
clr_red '!!:$ '"!!:$"

echo
clr_green '!!:n : n-th argument of previous command'
echo aaa bbb ccc
clr_red '!!:2 '"!!:2"

# BUG: If other hist expansions come after this stanza, they don't work!
#echo
#echo 'fc -s -1: bash builtin fc works also (see help fc)'
#echo "$test_string"
#builtin fc -s -1
