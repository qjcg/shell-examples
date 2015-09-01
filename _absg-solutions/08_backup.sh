#!/usr/bin/env bash
# Archive all files in $HOME modified in the last 24h.
find ~ -mtime -1 | tar -T - -czvf $USER-homedir-24hmodified.tar.gz
