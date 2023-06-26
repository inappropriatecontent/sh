#!/usr/bin/env bash
git config --global user.email "arthur.sendack@fake.com"
git config --global user.name "a. perv"
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y

wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
mkdir -p ~/.config/xplr
version="$(xplr --version | awk '{print $2}')"
echo "version = '${version:?}'" > ~/.config/xplr/init.lua
rm xplr-linux.tar.gz
  

$alias xd='cd "$(xplr --print-pwd-as-result)"' | tee -a

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

gh auth login -s delete_repo
gh extension install gennaro-tedesco/gh-s
gh extension install yusukebe/gh-markdown-preview
gh alias set p markdown-preview 
gh extension install sayanarijit/gh-xplr
gh alias set x xplr 

#! /bin/bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Tinos.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/DroidSansMono.zip
mkdir -p ~/.local/share/fonts
unzip DroidSansMono.zip -d ~/.local/share/fonts -x *.md *.txt
unzip Tinos.zip -d ~/.local/share/fonts -x *.md *.txt
curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | wget "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_$(grep -Po '"tag_name": "v\K[^"]*')_Linux_x86_64.tar.gz"
tar xf lazygit_0.37.0_Linux_x86_64.tar.gz lazygit
sudo mv lazygit /usr/local/bin
wget https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb
sudo apt install ./bottom_0.8.0_amd64.deb
sudo apt-get install ripgrep
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
npm install --global neovim tree-sitter-cli eslint xo core-d eslint-d
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
rm nvim-linux64.deb DroidSansMono.zip Tinos.zip lazygit_0.37.0_Linux_x86_64.tar.gz bottom_0.8.0_amd64.deb
export alias xn='nvim "$(xplr)"'
nvim 