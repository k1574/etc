#!/bin/sh
if test -d "$INFERNO" ; then
	usr="$INFERNO/usr/$USER"
	mkdir -p "$usr"
	rm -f "$usr/lib"
	ln -s "$rpath/inferno/lib" "$usr/lib"
fi

