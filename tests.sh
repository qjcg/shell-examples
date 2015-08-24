#!/usr/bin/env bash
# Demonstration of the different types of tests available in bash

[[ -d /tmp ]] && echo '/tmp is indeed a directory'
[[ ! -d /tmp77 ]] && echo 'invert a test'
[[ 5000 -gt 100 ]] && echo '5000 is greater than 100'
