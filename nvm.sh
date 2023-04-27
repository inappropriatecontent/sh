#!/usr/bin/env bash
cd "$HOME" || return
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 18
npm add --global http-server hget
cd sh || exit
