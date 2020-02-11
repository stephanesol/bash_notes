#!/bin/bash

#https://linuxize.com/post/bash-append-to-file/
#https://linuxize.com/post/bash-functions/#passing-arguments-to-bash-functions



function n() {
   gfile=$(_get_file)
   local dt=$(date '+%d/%m/%Y %H:%M:%S')
   note_text=$1
   echo "$dt | $note_text" >> $gfile
}

function _get_file() {

	if [ -z "$BASH_NOTES_PATH" ]
	then
	      echo "\$BASH_NOTES_PATH is empty. Set it to record notes."
	else
		if test -f "$BASH_NOTES_PATH"; then
	    	echo "$BASH_NOTES_PATH"
		else
			echo "Bash Notes Path Doesn't exist"
			echo $BASH_NOTES_PATH	
			exit 1
		fi
	fi

}

