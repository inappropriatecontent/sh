#! usr/bin/env bash
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
rm xplr-linux.tar.gz
alias xd='cd "$(xplr --print-pwd-as-result)"'
if [ type -p gh >/dev/null ]
then
	gh extension install sayanarijit/gh-xplr 
	gh alias set x xplr
	alias ghx='read -r -p "Clone Search?" | gh xplr "$(gh s $1)i"'
fi
