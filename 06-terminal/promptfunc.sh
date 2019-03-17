#!/usr/bin/env bash
# Update prompt periodically without printing a newline.
# © John Gosset 2019
# SPDX-License-Identifier: GPL-3.0-or-later
# Refs: 
#  - terminfo(5)/"the string capabilities"
#  - https://superuser.com/q/1354922

# Keybinding that will trigger a prompt update.
KEYBINDING='\C-xn'

update_prompt() {
	# Make cursor invisible.
	tput civis

	# Save original line contents and cursor position.
	orig_line=$READLINE_LINE
	orig_point=$READLINE_POINT

	# Set prompt to display random value.
	PS1="$RANDOM \$ "

	printf "$*"

	tput cuu 1  # Move cursor up one line.
	tput ed     # Clear to end of screen.

	# Restore original line contents and cursor position.
	READLINE_LINE=$orig_line
	READLINE_POINT=$orig_point
	unset orig_line orig_point

	# Make cursor visible again.
	tput cnorm
}

# Set main keybinding (and remove existing first).
bind -r $KEYBINDING
bind -x '"'$KEYBINDING'": update_prompt "\n"'

printf "\nSource this script, then use this bash/readline keybinding to change your prompt:\n\n\t$KEYBINDING\n\n"
