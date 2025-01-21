#!/bin/sh

CURR_DIR=$(basename $(pwd))

if [ "$CURR_DIR" != "oricomp" ]; then
    mkdir oricomp
    cd oricomp || exit
fi

git clone git@github.com:oricomp/.github.git || true
git clone git@github.com:oricomp/docs.git || true
