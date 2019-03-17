#!/usr/bin/env bash
# Replace all vowels (upper or lower case) in /etc/passwd with "X".
sed 's/[aeiouyAEIOUY]/X/g' /etc/passwd
