#!/usr/bin/env bash
# Safely delete files

FILES=$*
TRASHDIR=~/TRASH
[[ -d $TRASHDIR ]] || mkdir $TRASHDIR

# Archive a single file to the $TRASHDIR, gzipping if necessary
archive_file() {
	myfile=$1
	mimetype=$(file $myfile | awk '{print $2}')
	if [[ "$mimetype" != "application/x-gzip" ]]; then
		gzip -c $myfile > $TRASHDIR/$(basename $myfile).gz
		rm -r $myfile
	else
		mv $myfile $TRASHDIR
	fi
}

# Delete files older than 48h
delete_old_files() {
	find $TRASHDIR -mtime +2 -exec rm -vf '{}' \;
}

# for each argument passed as input,
# test if it's a file or directory, and if 
# so, archive
for arg in $FILES; do
	# handle directories by creating a tar archive first,
	# so we can operate on it as a single file
	if [[ -d "$arg" ]]; then
		tar -zcvf "$arg".tgz "$arg"
		archive_file "$arg".tgz
	elif [[ -f "$arg" ]]; then
		archive_file "$arg"
	else
		echo $arg is not a file
	fi
done

delete_old_files
