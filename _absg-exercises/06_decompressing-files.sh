#!/usr/bin/env bash
# Decompress a file with the appropriate tool based on it's type.

decompress_by_filetype() {
	local mimetype=$(file -b --mime-type "$1")
	case "$mimetype" in
	application/x-gzip) gunzip "$1" ;;
	application/x-bzip2) bunzip2 "$1" ;;
	application/x-xz) xz -d "$1" ;;
	application/zip) unzip "$1" ;;
	*) echo 'Not a recognized compression type.' ;;
	esac
}

for file in "$@"; do
	decompress_by_filetype "$file"
done
