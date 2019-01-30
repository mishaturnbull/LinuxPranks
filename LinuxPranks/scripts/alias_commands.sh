#!/bin/bash

if [[ -z "$1" ]]; then
	echo "Enter a level of evilness:"
	echo "  1 Warning (h/d=1/1)"
	echo "  2 Annoyance (h/d=3/0)"
	echo "  3 Evil (h/d=6/1)  [the classic editor swap]"
	echo "  4 EVIL (h/d=8/3)"
	echo "    (WARNING!  THIS IS POTENTIALLY HARMFUL!)"
	echo "  5 Chaotic Neutral (h/d=8/1)"
	read input
else
	input=$1
fi

if [[ "$input" == "1" ]]; then
	echo "alias ls='echo \"You should learn to log out...\"'" >> ~/.bashrc
	echo "alias cd='echo \"You should learn to log out...\"'" >> ~/.bashrc
elif [[ "$input" == "2" ]]; then
	echo "alias cd='eject -t; cd'" >> ~/.bashrc
	echo "alias ls='echo \"Segmentation fault\"'" >> ~/.bashrc
elif [[ "$input" == "3" ]]; then
	echo "alias vi=nano" >> ~/.bashrc
	echo "alias vim=nano" >> ~/.bashrc
	echo "alias nano=emacs" >> ~/.bashrc
	echo "alias emacs=vim" >> ~/.bashrc
elif [[ "$input" == "4" ]]; then
	echo "alias 'cd=\"rm -ri\"'" >> ~/.bashrc
	echo "alias 'ls=\"shutdown now\"'" >> ~/.bashrc
elif [[ "$input" == "5" ]]; then
	echo "alias --='-'" >> ~/.bashrc
	echo "alias cat='perl -l'" >> ~/.bashrc
	echo "alias cd='cd .'" >> ~/.bashrc
	echo "alias cp='echo cp'" >> ~/.bashrc
	echo "alias exec='echo cannot fork '" >> ~/.bashrc
	echo "alias exit=echo Are you sure?" >> ~/.bashrc
	echo "alias kill=echo all dead" >> ~/.bashrc
	echo "alias less='more ---x'" >> ~/.bashrc
	echo "alias mv='echo stay'" >> ~/.bashrc
	echo "alias pwd='echo You are here'" >> ~/.bashrc
	echo "alias touch='echo please don\'t touch'" >> ~/.bashrc
	echo "alias who='echo what?'" >> ~/.bashrc
fi

echo "Done!"
