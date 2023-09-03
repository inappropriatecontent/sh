#! /bin/bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Tinos.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/DroidSansMono.zip
mkdir -p ~/.local/share/fonts
unzip DroidSansMono.zip -d ~/.local/share/fonts -x *.md *.txt
unzip Tinos.zip -d ~/.local/share/fonts -x *.md *.txt
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
wget https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb
sudo apt install ./bottom_0.8.0_amd64.deb
sudo apt-get install ripgrep
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
npm install --global neovim tree-sitter-cli eslint xo 
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
rm nvim-linux64.deb DroidSansMono.zip Tinos.zip lazygit.tar.gz bottom_0.8.0_amd64.deb
sudo apt-get update -y