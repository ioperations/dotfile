#!/usr/bin/env sh
ccred="\033[0;31m"
ccgreen="\033[0;32m"
ccyellow="\033[0;33m"
ccwhite="\033[0;37m"

sudo apt install golang nodejs npm \
    python3-dev \
    libgtest-dev libgmock-dev libbenchmark-dev libpcre++-dev \
    ccls clangd clang llvm \
    build-essential

sudo npm install -g neovim
sudo pip3 install neovim
