#!/bin/bash
# Print out 5 (pseudo)random lottery numbers
echo {1..50} | tr ' ' '\n' | shuf | head -5 | tr '\n' ' '
echo
