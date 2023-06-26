#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

git config --global user.email "jmyle.koretz@gmail.com"
git config --global user.name "a. perv"
sudo apt-get update
sudo apt-get upgrade -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 18 --latest-npm

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
sudo apt update
sudo apt install gh -y

echo 'deb http://download.opensuse.org/repositories/home:/archcrack/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/home:archcrack.list
curl -fsSL https://download.opensuse.org/repositories/home:archcrack/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_archcrack.gpg > /dev/null
sudo apt update -y
sudo apt install clifm

} # this ensures the entire script is downloaded #