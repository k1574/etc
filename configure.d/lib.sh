#!/bin/sh

if test -n "$LIB"; then
	mkdir -p "$LIB"
	config="$ETC/lib"
	if test -d "$ETC" -a -d "$config" ; then
		for i in $config/* ; do
			ln="$LIB/`basename $i`"
			rm -f "$ln"
			ln -s "$i" "$ln"
		done
	fi
fi
