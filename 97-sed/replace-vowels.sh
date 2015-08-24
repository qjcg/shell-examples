#!/bin/bash
# Replace all vowels (upper or lower case) in /etc/passwd with three underscores ("___").
sed 's/[aeiouyAEIOUY]/___/g' /etc/passwd
