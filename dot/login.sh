#!/bin/sh

if [ "$TERM" = linux ] ; then
	# Running from Linux virtual console.
	
	# Virtual console colors.
	echo -en "\e]P0000000" # Black.
	echo -en "\e]P8666666" # Darkgrey.
	echo -en "\e]P1DD2222" # Darkred.
	echo -en "\e]P9FF0000" # Red.
	echo -en "\e]P267E300" # Darkgreen.
	echo -en "\e]PAA9F16C" # Green.
	echo -en "\e]P3F7FF00" # Brown.
	echo -en "\e]PBEBF22C" # Yellow..
	echo -en "\e]P45190D0" # Darkblue.
	echo -en "\e]PC346AA1" # Blue.
	echo -en "\e]P5FF6E00" # Darkmagenta.
	echo -en "\e]PDDE6000" # Magenta.
	echo -en "\e]P600CFCF" # Darkcyan.
	echo -en "\e]PE00FFFF" # Cyan.
	echo -en "\e]P7DDDDDD" # Lightgrey.
	echo -en "\e]PFFFFFFF" # White.
	#clear # For background artifacting.
fi
