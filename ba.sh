#!/usr/bin/env bash
apgt() {
	sudo apt-get update -y
	sudo apt-get upgrade -y
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
	apgt $3
	fi
	else
		echo "$2 not installed"
	fi
}
cd ~/sh
mod find fd.sh
mod gh gh.sh 'fzf jq'
mod gh-auth gha.sh
mod node nvm.sh
mod xplr xplr.sh
cd ~