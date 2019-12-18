#!/bin/sh

dot="$ETC/dot"
for i in $dot/*  ; do
	lnto="$HOME/.`basename $i`"
	rm -f "$lnto"
	ln -s $arg "$i" "$lnto"
done
