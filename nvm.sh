#! usr/bin/env bash
cd ~
git clone https://github.com/nvm-sh/nvm .nvm >/dev/null
cd ~/.nvm
git checkout v0.39.3
. ./install.sh >/dev/null
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18
npm add --global http-server hget shfmt
