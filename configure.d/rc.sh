#!/bin/sh

rc="$ETC/rc"
for i in $rc/*  ; do
	lnto="$HOME/.`basename $i`"
	rm -f "$lnto"
	ln -s $arg "$i" "$lnto"
done
