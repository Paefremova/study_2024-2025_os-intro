#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "No arguments provided."
else
    i=1
    for arg in "$@"; do
        echo "Argument $i: $arg"
        ((i++))
    done
fi
