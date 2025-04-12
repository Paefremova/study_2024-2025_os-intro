#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi
MAN_PAGE="/usr/share/man/man1/$1.1.gz"
if [ -f "$MAN_PAGE" ]; then
    zcat "$MAN_PAGE" | less
else
    echo "No manual entry for $1"
fi