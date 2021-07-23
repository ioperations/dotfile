#!/usr/bin/env sh
ccred="\033[0;31m"
ccgreen="\033[0;32m"
ccyellow="\033[0;33m"
ccwhite="\033[0;37m"

SRC=".."

if [ command -v cargo ] ; then

else
    if [ -f $SRC/rust-tool-chain.sh ];then
        . $SRC/rust-tool-chain.sh
    fi
fi

## install lsd to default rust user install dir
cargo install --git https://github.com/Peltoche/lsd.git --branch master
