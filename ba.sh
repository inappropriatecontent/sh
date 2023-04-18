#!/usr/bin/env bash
cd sh
# chmod a+x fd.sh gh.sh gha.sh nvm.sh xplr.sh
mod() {
	read -p "Install:" -ei "$1" reply
	if ["$reply" = "$1"]; then
	echo "chmod a+x $1.sh" /
	&& echo "$1.sh"
	elif
}
# sudo apt-get update
mod fd
mod gh
mod gha
mod nvm
mod xplr
cd ~