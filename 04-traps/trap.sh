#!/usr/bin/env bash
# Example of using the trap builtin command to intercept signals and act on them.
# © John Gosset 2019
# SPDX-License-Identifier: GPL-3.0-or-later
# Refs: "help trap".

cat <<!

TRAPPED CATS

The cat command will wait for input
indefinitely, never terminating on it's
own.

SIGINT (^C) is trapped. Type ^C^C^C to
terminate 3 cat commands below and then
exit.

Notice that a command of our choice is
run on SIGINT because of the trap.

!

trap "echo SIGINT received!" INT
cat
cat
cat
