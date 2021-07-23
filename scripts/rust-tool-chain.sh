#!/usr/bin/env sh
ccred="\033[0;31m"
ccgreen="\033[0;32m"
ccyellow="\033[0;33m"
ccwhite="\033[0;37m"

if  command -v cargo ;then
    echo "ok" ;
else 
    (curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)
fi
