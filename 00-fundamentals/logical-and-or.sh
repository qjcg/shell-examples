#!/usr/bin/env bash
# Example of boolean AND (&&) and OR (||) usage

[[ -d /tmp ]] && echo 'Looks like /tmp exists!'
[[ -d /tmp666 ]] && echo 'Looks like /tmp666 exists!' || echo 'Looks like /tmp666 does NOT exist!'
