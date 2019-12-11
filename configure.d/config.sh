#!/bin/sh

mkdir -p "$XDG_CONFIG_HOME"
config="$ETC/config"
for i in $config/* ; do
	lnto="$XDG_CONFIG_HOME/`basename $i`"
	rm -f "$ln"
	ln -s $arg "$i" "$lnto"
done
