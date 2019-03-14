#!/usr/bin/env bash
# Ref: https://stackoverflow.com/q/40417695

# maintain state
# Binding to two random chars here.
bind -x '"\200": TEMP_LINE=$READLINE_LINE; TEMP_POINT=$READLINE_POINT'
bind -x '"\201": READLINE_LINE=$TEMP_LINE; READLINE_POINT=$TEMP_POINT; unset TEMP_POINT; unset TEMP_LINE'

# "cd .." use case.
bind -x '"\206": "cd .."'
bind '"\207": kill-whole-line'
bind '"\C-xh": "\200\207\206\n\201"'
