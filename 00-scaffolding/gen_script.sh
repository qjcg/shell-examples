#!/bin/bash
# Generate a new shell script with shebang, comment, and copyright info.

script_name=${1:?You need to give your script a name.}
shift
comment=$*
author='Jerry Q. Hacker'

cat <<!
#!/usr/bin/env bash
# $comment
# © $author $(date +%Y)

!
