#!/bin/sh

CURR_DIR=$(basename $(pwd))

if [ "$CURR_DIR" != "oricomp" ]; then
    mkdir oricomp
    cd oricomp || exit
fi

# general repositories
git clone https://github.com/oricomp/.github.git || true
git clone https://github.com/oricomp/docs.git || true

# hardware repositories
mkdir -p hardware
git -C ./hardware clone https://github.com/oricomp/vaudeo.git || true
