#!/usr/bin/env bash
# dialog(1) user interface demo.

command -v dialog >/dev/null || { >&2 echo "dialog must be installed" ; exit 1 ; }

name=$(dialog --stdout --inputbox 'Please enter your name' 0 0)
email=$(dialog --stdout --inputbox 'Please enter your email address' 0 0)
birthday=$(dialog --stdout --calendar 'Please enter your birthday' 0 0 17 08 1982)
awesome=$(dialog --stdout --yesno 'Is this awesome or what?' 0 0 && echo YES || echo NO)  # Returns exit status only.

# A `clear` after taking dialog input is always a good idea, since
# otherwise your screen stays filled with blue...
clear

echo Name: $name
echo Email: $email
echo Birthday: $birthday
echo Awesome: $awesome
