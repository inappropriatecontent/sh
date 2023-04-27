#!/usr/bin/env bash
cd "$HOME" || return
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
rm xplr-linux.tar.gz
alias xd='cd "$(xplr --print-pwd-as-result)"'
if [ "$(type -p gh >/dev/null)" != "" ]; then
    gh extension install sayanarijit/gh-xplr
    gh alias set x xplr
    alias ghx='gh xplr "$(gh s)"'
fi
cd sh || exit
