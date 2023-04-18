#!/usr/bin/env bash
cd ~./sh
apt() {
	sudo apt-get update -y >/dev/null
	sudo apt-get upgrade -y >/dev/null
	if [[$1 != '']]
	sudo apt-get install -y $1
	fi
}
mod() {
	read -n 1 -r -p "Install $1?"
	if [[$REPLY =~ ^[Yy]$]]
	then
	chmod a+x $2
	bash $2 -s
	rm $2
	if [[$3 != '']]
	then
	apt $3
	fi
	else
		echo "$2 not installed"
	fi
}
mod fd fd.sh
mod gh gh.sh 'fzf jq'
mod gh-auth gha.sh
mod nvm nvm.sh
mod xplr xplr.sh
cd ~