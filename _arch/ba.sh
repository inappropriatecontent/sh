#!/usr/bin/env bash
apup() {
	echo "Updating apt..."
	sudo apt-get update -y >/dev/null
	sudo apt-get upgrade -y >/dev/null
	sudo apt autoremove -y >/dev/null
	echo "Up to date."
	echo #
}
apgt() {
	sudo apt-get install -y $1 >/dev/null
	echo "$1 added."
	echo #
}
mod() {
	read -n 1 -r -p "Do $1?"
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		if [[ $3 != '' ]]; then
			apgt $3
		fi
		chmod a+x $2
		bash $2 -s
		rm $2
		echo "Done"
	else
		echo "$2 not done"!
	fi
	echo #
}
apup
mod find fd.sh 'neovim'
mod gh-cli gh.sh 'fzf'
mod gh-auth gha.sh 'jq'
mod node nvm.sh
mod xplr xplr.sh
