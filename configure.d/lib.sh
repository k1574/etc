#!/bin/sh

if test -d "$ETC" \
		-a -d "$ETC/config" \
		-a -n "$LIB" \
		; then
	rm -f "$LIB"
	ln -s "$ETC/config" "$LIB"
fi
