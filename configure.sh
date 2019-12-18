#!/bin/sh
# Automatic user configuration installation and updating script.

rpath="$(dirname `readlink -f $0`)"
configure="$rpath/configure.d"
arg="$@"

if [ -d $configure ] ; then
	for i in $configure/*.sh ; do
		if [ -r $i ]; then
			. $i
		fi
	done
	unset i
fi

#rm -f "$HOME/lib"
# Plan9 stuff.
#ln -s $arg "$ETC/lib" "$LIB"
