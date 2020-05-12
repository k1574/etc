#!/bin/sh

if test -d "$ETC" \
		-a -d "$ETC/lib" \
		-a -n "$LIB" \
		; then
	rm -f "$LIB"
	ln -s "$ETC/lib" "$LIB"
fi
