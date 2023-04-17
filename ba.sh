#!/usr/bin/env bash
mod() {
	read -p "Get $($1)?" -n 1 -ei Y r
	if ["$r" = [Yy]*]; then
	cat "$1.sh" | bash
}

cd ~
sudo apt-get update
mod fd