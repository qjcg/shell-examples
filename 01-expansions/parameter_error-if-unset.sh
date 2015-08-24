#!/bin/bash
# Demonstrate the use of "Error if Null/Unset" expansion.

NAME=${1:?You need to enter a name!}
echo "Name: ${NAME}"
