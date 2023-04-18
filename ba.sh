#!/usr/bin/env bash
cd sh
chmod a+x fd.sh gh.sh gha.sh nvm.sh xplr.sh
mod() {
	2 = echo "$1" | sed 's/.sh$//'
	read -p "Install?" -ei "$2" reply
	if ["$reply" = "$2"]; then
	echo "./$1"
}

cd ~
sudo apt-get update
mod fd