#!/usr/bin/env bash
# zenity(1) user interface demo

# ignore stderr
exec 2>/dev/null

# assign user input to variables like this:
color=$(zenity --color-selection)
password=$(zenity --password)

zenity --question --title "Alert" --text "Do you really want to run this script? I won't listen to you anyway..."
zenity --entry
zenity --calendar

# This seems to hang.
#zenity --notification --text "This is a notification."

zenity --error
zenity --info
zenity --list --text "Here's some dialogue text" --checklist --column "This is a header" --column "Another header"
zenity --progress --text 'Doing something important...' < <(for i in {1..100}; do echo $i; sleep .1; done)
zenity --text-info < /etc/passwd
zenity --warning
zenity --scale
zenity --file-selection --title "A really great title" --text "What is this???"

# redirect stderr of all this to /dev/null to avoid irrelevant error messages
