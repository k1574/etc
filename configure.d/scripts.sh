#!/bin/sh

if test -n "$SCRIPTS" -a -d "$ETC/scripts" ; then
	rm -f "$SCRIPTS"
	ln -s "$ETC/scripts" "$SCRIPTS"
fi
