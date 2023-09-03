#!/usr/bin/env bash
git config --global user.email "jmyle.koretz@gmail.com"
git config --global user.name "a. perv"
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18 --latest-npm

sudo apt-get upgrade -y

type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
sudo apt update \
sudo apt install gh -y

gh extension install gennaro-tedesco/gh-s
gh extension install yusukebe/gh-markdown-preview
gh alias set p markdown-preview 
gh auth login -s delete_repo