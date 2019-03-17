#!/usr/bin/env bash
# dialog(1) user interface demo (form widget)

command -v dialog >/dev/null || { >&2 echo "dialog must be installed" ; exit 1; }

# user input will be stored in the form_data array
form_data=( "$(dialog --stdout --backtitle 'User Information' --title 'Info' --ok-label 'Submit' \
	--form 'Please tell us about yourself!' 0 50 0 \
	'Name' 1 1 '' 1 20 30 0 \
	'Email' 2 1 '' 2 20 30 0 \
	'Birthday' 3 1 '' 3 20 30 0 \
	'Astrological Sign' 4 1 '' 4 20 30 0 \
	)"
)

# A `clear` after taking dialog input is always a good idea, since
# otherwise your screen stays filled with blue...
clear

echo
echo Form Data:
echo "${form_data[0]}"
echo "${form_data[1]}"
echo "${form_data[2]}"
echo "${form_data[3]}"
echo
