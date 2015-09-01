#!/usr/bin/env bash
# Generate a "unique" 6-digit hexadecimal identifier.
uuidgen -r | cut -c -6
