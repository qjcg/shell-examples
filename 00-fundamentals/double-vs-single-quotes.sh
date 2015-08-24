#!/bin/bash
# Illustrates the difference between double and single quotes.

USERNAME='Jerry Q. Hacker'

echo Variable expansion occurs within double quotes:
echo "$USERNAME"
echo
echo Everything in single quotes is interpreted as a LITERAL STRING:
echo '$USERNAME'
