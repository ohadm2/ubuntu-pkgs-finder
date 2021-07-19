#!/bin/bash

# we will check if the given param is not empty only for the 1st param so that we won't get an error about too many params when a list is given
if ! [ "$1" == "" ]; then
	PKGS_NAMES=$@

 	for i in $PKGS_NAMES; do
		echo "======================================"
		echo "Results for '$i':"
		echo "======================================"
		echo

		apt-cache search $i

		echo
		echo
	done
else
	echo "Error! Wrong usage."
	echo "Only give a name of a single pkg to install e.g. open-vm-tools"
fi

