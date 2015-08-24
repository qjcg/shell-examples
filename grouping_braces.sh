#!/usr/bin/env bash
# Example of grouping output from multiple commands via braces

{
	echo fuddle duddle
	uname -a
	uptime
} | tr a-z A-Z
