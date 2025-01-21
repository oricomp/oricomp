#!/bin/sh

CURR_DIR=$(basename $(pwd))

if [ "$CURR_DIR" != "oricomp" ]; then
    mkdir oricomp
    cd oricomp || exit
fi

git clone https://github.com/oricomp/.github.git || true
