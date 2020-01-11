#!/bin/sh
if test -d "$INFERNO" ; then
	mkdir -p "$INFERNO/usr/"
	rm -f "$INFERNO/usr/$USER"
	ln -s "$HOME" "$INFERNO/usr/$USER"
fi

