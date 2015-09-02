#!/usr/bin/env bash
# dialog(1) user interface demo

hash dialog 2>/dev/null || { >&2 echo "dialog must be installed" ; exit 1; }

name=$(dialog --stdout --inputbox 'Please enter your name' 0 0)
email=$(dialog --stdout --inputbox 'Please enter your email address' 0 0)
birthday=$(dialog --stdout --calendar 'Please enter your birthday' 0 0 17 08 1982)

# A `clear` after taking dialog input is always a good idea, since
# otherwise your screen stays filled with blue...
clear

echo Name: $name
echo Email: $email
echo Birthday: $birthday
