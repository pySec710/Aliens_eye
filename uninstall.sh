#!/bin/bash
clear
if [[ $(id -u) -ne 0 ]] ; then
	echo "you need root assess to uninstall the tool"
	echo
	echo "so please enter the password to login as root!"
	echo
	sudo bash ${0}
	exit
fi
FILE1=/usr/bin/aliens_eye
if [ -f "$FILE1" ]; then
	rm /usr/bin/aliens_eye
fi
echo
echo "uninstalled successfully!"
echo
