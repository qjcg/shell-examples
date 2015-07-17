#!/bin/bash
# Create user accounts for names passed as arguments

NAMES="$@" 		# accounts to create
PWLIST=secret.txt	# where usernames/passwords will be stored
LOG=/tmp/change-user.log

if [[ ! $UID -eq 0 ]]; then
	echo Must be root
	exit 1
fi

# add the bluadmin group if it doesn't already exist
grep bluadmin /etc/group &>> $LOG || groupadd bluadmin

for name in $NAMES; do
	password=$(pwgen 16 1)
	echo Adding user $name
	useradd -m -g bluadmin $name
	# chpasswd needs it's input from stdin
	echo $name:"$password" | chpasswd

	# probably a good idea to save username:password pairs somewhere!
	echo $name:"$password" >> $PWLIST
done

# make sure our PWLIST has secure permissions
chown root:root $PWLIST
chmod 600 $PWLIST
