#!/usr/bin/env bash
cd sh
# chmod a+x fd.sh gh.sh gha.sh nvm.sh xplr.sh
mod() {
	read -p "Install:" -ei "$1" reply
	if ["$reply" = "$1"]; then
	echo "chmod a+x $1.sh"
	echo "$1.sh"
}

cd ~
sudo apt-get update
mod fd.sh
mod gh.sh
mod gha.sh
mod nvm.sh
mod xplr.sh