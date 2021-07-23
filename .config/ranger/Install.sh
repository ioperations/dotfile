#!/bin/sh

case `uname -s` in
	Linux)

		if cat /etc/os-release | grep debian ;then
			sudo apt install -y atool unrar-free p7zip \
				poppler-utils \
				mupdf-tools exiftool transmission-gtk \
				odt2txt w3m w3m-img ffmpegthumbnailer \
				graphicsmagick-imagemagick-compat \
				unzip highlight exiftool mediainfo \
				libxext-dev feh mpv
			sudo pip3 install ueberzug
		else
			echo "not debian"
		fi
		break
		;;
	*)
		echo "not a linux distribution"
esac
