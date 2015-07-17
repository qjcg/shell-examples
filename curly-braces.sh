#!/usr/bin/env bash
# Example of redirecting output for multiple commands via curly-braces

{
	echo hello
	echo more text
	df -h
	uname -a
	ls
} | tr a-z A-Z
