#!/usr/bin/env bash
# Illustrating the use of ${BASH_SOURCE[0]}

source bash_source.sh
echo Notice that greet is NOT called twice:
greet $1
