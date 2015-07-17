#!/usr/bin/env bash
# Demonstration of the different types of tests available in bash


if [[ -d /tmp ]]; then
	echo '/tmp is indeed a directory'
fi

if [[ ! -d /tmp77 ]]; then
	echo 'invert a test'
fi

if [[ 5000 -gt 100 ]]; then
	echo 'In the case of arithmetic comparison, 5000 is greater than 100'
fi
