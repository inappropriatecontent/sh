#!/usr/bin/env bash
mod() {
read -p "Get $($1)? No to quit." -n 1 -ei Y resp
if ["$resp" = [Yy]*]; then
	bash "~/$($2).sh"
elif ["$resp" = "no"]; then
	exit
else
	sudo apt-get upgrade -y
fi	
}

cd ~
sudo apt-get update
mod 'FD-Find' 'fd'

