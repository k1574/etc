#!/bin/sh

alias="$ETC/alias"
for i in $alias/* ; do
	ln="$BIN/`basename $i`"
	rm -f "$ln"
	ln -s $arg "$i" "$ln"
done
