#!/bin/bash
# Demonstrates the use of command expansion

TIMESTAMP=$(date +%d-%m-%y_%H-%M-%S)
touch /tmp/file-${TIMESTAMP}
