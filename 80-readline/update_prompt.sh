#!/usr/bin/env bash
# Update prompt without printing a newline.
#
# To use, source this script and use the defined keybinding in your current bash session.
#
# See terminfo(5)/"the string capabilities"
# Discussion: https://superuser.com/q/1354922

# Keybinding that will trigger a prompt update.
KEYBINDING='\C-xn'

save_rl_line() {
	# Make cursor invisible.
	tput civis

	# Save original line contents and cursor position.
	orig_line=$READLINE_LINE
	orig_point=$READLINE_POINT
}

set_new_prompt() {
	PS1="$RANDOM \$ "
}


reposition_cursor() {
	tput cuu 1  # Move cursor up one line.
	tput ed     # Clear to end of screen.
}

restore_rl_line() {
	# Restore original line contents and cursor position.
	READLINE_LINE=$orig_line
	READLINE_POINT=$orig_point
	unset orig_line orig_point

	# Make cursor visible again.
	tput cnorm
}


# Bind shell commands to arbitrary octal
# sequences, so that they can be used in
# combination later with the main
# keybinding.
#
# These bindings are therefore used like
# "variables" for bind/readline.
bind -x '"\200": save_rl_line ; set_new_prompt'
bind '"\201": kill-whole-line'
bind -x '"\202": reposition_cursor; restore_rl_line'

# Remove any current binding.
bind -r $KEYBINDING

# Set main keybinding.
bind '"'$KEYBINDING'": "\200\201\n\202"'

printf "\nSource this script, then use this bash/readline keybinding to change your prompt:\n\n\t$KEYBINDING\n\n"
