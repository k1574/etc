#!/bin/sh

dot="$ETC/dot"
for i in $dot/*  ; do
	into="$HOME/.`basename $i`"
	rm -f "$lnto"
	ln -s $arg "$i" "$into"
done
