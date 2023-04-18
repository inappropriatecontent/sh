#!/usr/bin/env bash
cd ~./sh
mod() {
	read -n 1 -r -p "Install $1?"
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		chmod a+x $2
		bash $2 -s
		rm $2
	else 
		echo "$2 not installed"
	fi
}
sudo apt-get update
mod fd fd.sh
mod gh gh.sh
mod gh-auth gha.sh
mod nvm nvm.sh
mod xplr xplr.sh
cd ~
