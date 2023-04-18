#!/usr/bin/env bash
cd sh
chmod a+x fd.sh gh.sh gha.sh nvm.sh xplr.sh
mod() {
	local fn = $1,
	st = "$1" | sed 's/.sh$//'
	read -p "Install:" -ei "$st" reply
	if ["$reply" = "$2"]; then
	bash $fn
}

cd ~
sudo apt-get update
mod fd.sh
mod gh.sh
mod gha.sh
mod nvm.sh
mod xplr.sh