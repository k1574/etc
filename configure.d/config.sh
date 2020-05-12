#!/bin/sh

if test -n "$XDG_CONFIG_HOME"; then
	mkdir -p "$XDG_CONFIG_HOME"
	config="$ETC/lib"
	if test -d "$ETC" -a -d "$config" ; then
		for i in $config/* ; do
			ln="$XDG_CONFIG_HOME/`basename $i`"
			rm -f "$ln"
			ln -s "$i" "$ln"
		done
	fi
fi
