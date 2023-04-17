#!/usr/bin/env bash
cd ~
sudo apt-get update
read -p "Start with fdFind? No to quit." -n 1 -ei Y resp
if ["$resp" = [Yy]*]; then
	sudo apt-get install -y fdfind
	sudo mv /usr/bin/fdfind /usr/bin/fd
	sudo apt-get upgrade -y
elif ["$resp" = "no"]; then
	cd ~
	exit
else
	sudo apt-get upgrade -y
fi
