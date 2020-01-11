#!/bin/sh

dot="$ETC/dot"
for i in $dot/*  ; do
	ln="$HOME/.`basename $i`"
	rm -f "$ln"
	ln -s "$i" "$ln"
done
