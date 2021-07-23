#!/usr/bin/env sh
ccred="\033[0;31m"
ccgreen="\033[0;32m"
ccyellow="\033[0;33m"
ccwhite="\033[0;37m"

curdir=$(cd `dirname $0` && pwd )

sudo apt install -y hsetroot xsettingsd compton rofi mpc mpv alsa-utils rofi i3-wm  xrandr fcitx dunst  picom -y

if command -v cargo ;then
    /usr/bin/true
else
    source $curdir/rust-tool-chain.sh
fi

git clone https://github.com/greshake/i3status-rust.git z
cd z
cargo install --path .
./install.sh
