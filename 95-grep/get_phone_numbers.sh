#!/bin/bash
# Basic usage of grep with a regular expression.

# Valid phone number syntaxes (anything else, or other characters on the line
# are INVALID:
#  (905) 123 4567
#  905 123 4567
#  900-123-4567

grep -E '^\(?[0-9]{3}\)?( |-).*[0-9]$' data.txt
