#!/bin/bash
# Demonstrate the use of associative arrays.

declare -A websites
websites[google]='http://google.com'
websites[vigilant]='http://vigilant.com'
websites[gossetx]='http://gossetx.com'

echo print the length of the array
echo ${#websites[*]}

echo print a specific value
echo ${websites[google]}

echo 'iterating over KEYS of an associative array (note the exclamation mark)'
for k in ${!websites[*]}; do
	echo $k
done

echo iterating over VALUES of an associative array
for v in ${websites[*]}; do
	echo $v
done
