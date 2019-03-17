#!/usr/bin/env bash
# Print 256 colors (on supporting terminals).
# See https://en.wikipedia.org/wiki/ANSI_escape_code#Colors

print_256_colors() { 
	# colors per row
	local ncpr=${1:-12}
	local testchar=${2:-▮}
	local col_idx=0
	local fmtstr="\033[38;05;%dm%3d%s\033[m "
	for i in {0..255}; do
		# wrap row at $ncpr
		[[ $col_idx -eq $ncpr ]] && echo && col_idx=0
		printf "$fmtstr" "$i" "$i" "$testchar"
		(( col_idx++ ))
	done
	echo
}

return 2>/dev/null

print_256_colors "$@"
