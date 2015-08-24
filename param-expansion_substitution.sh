#!/bin/bash
# Demonstrate the use of parameter expansion substitution.
FILE=test.txt

# left = "find"
# right = "replace"
echo ${FILE/txt/jpg}
