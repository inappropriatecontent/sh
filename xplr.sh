#! usr/bin/env bash
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
rm xplr-linux.tar.gz
alias xd='cd "$(xplr --print-pwd-as-result)"'
