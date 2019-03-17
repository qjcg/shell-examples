#!/usr/bin/env bash
# A filesystem movement keymap for readline.

# OFF=0; ON=1
NAVMODE=0
KEYBINDING='\C-xu'

toggle_navmode() {
	if [[ $NAVMODE -eq 1 ]]; then
		bind -r "$KEYBINDING"
		NAVMODE=0
	else
		bind -x '"\200": "cd .."'
		bind '"'$KEYBINDING'": "\200\n"'
		NAVMODE=1
	fi
}
