#!/bin/bash 
sudo apt-get update -y
sudo apt-get full-upgrade -y
curl -JL --output code.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install ./code.deb -y
rm code.deb
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -