#!/usr/bin/env bash
# kdialog user interface demo (for use with KDE)

exec 2> /dev/null

# see kdialog --help for options

kdialog --yesno 'Are you sure?'
kdialog --yesnocancel 'Are you really sure? Cause you can cancel now...'
kdialog --warningyesno 'Warning message box with yes/no buttons'
kdialog --warningcontinuecancel 'I wanna know, are you thinking of me?'
kdialog --warningyesnocancel 'I wanna know, do you really love me?'
kdialog --sorry "But you're a straight up loser..."
kdialog --error 'You left the keys on the table!'
kdialog --msgbox 'Why hello there!'
kdialog --inputbox 'Tell me something good:'
kdialog --password 'Type your password in this box. You trust me, right?'
kdialog --textbox 'Blah blah blah'
kdialog --textinputbox 'Blah blah blah blah'
kdialog --combobox 'blah blah blah blah blah'
kdialog --menu "Here's a little menu for ya"
kdialog --checklist 'List of useless shit:'
kdialog --radiolist 'Next up on Hot 97.7...'
kdialog --passivepopup 'A little popup!'
kdialog --passivepopup 'Another little popup!'
kdialog --getopenfilename '/tmp/'
kdialog --getsavefilename '/tmp/'
kdialog --getexistingdirectory '/tmp/'
kdialog --getopenurl '/tmp/'
kdialog --getsaveurl '/tmp/'
#kdialog --geticon [group]
kdialog --progressbar 'Number of hours wasted:' 10
kdialog --getcolor
kdialog --title 'A great little title'
kdialog --default 'Blah blah blah'
#kdialog --multiple Allows
#kdialog --separate-output Return
#kdialog --print-winid Outputs
#kdialog --dontagain <file:entry>
kdialog --slider 'Blah blah blah'
kdialog --calendar "When's your birthday? I really wanna know."
#kdialog --attach <winid>
