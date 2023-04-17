#! usr/bin/env bash
cd ~
git clone https://github.com/nvm-sh/nvm .nvm
cd ~/.nvm
git checkout v0.39.3
. ./install.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
npm install --global http-server hget