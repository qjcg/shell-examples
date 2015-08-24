#!/bin/bash
# A little dictionary.

lookup_key=$1

if [[ ! $1 ]]; then
	echo Please pass a potential key as input.
	exit 1
fi

declare -A en_fr
en_fr[dog]=chien
en_fr[cat]=chat
en_fr[horse]=cheval

if [[ ${en_fr["${lookup_key}"]} ]]; then
	echo ${en_fr["${lookup_key}"]}
else
	echo "Key not found: $lookup_key"
fi
