sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
sudo apt-get update -y
sudo apt-get install -y wget tar vim less micro
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar -xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18 --latest-npm
cd masta
npm i -y http-server
npm i -y @unibeautify/beautifier-eslint 
npm i -y @unibeautify/beautifier-js-beautify 
npm i -y @unibeautify/beautifier-prettydiff 
npm i -y @unibeautify/beautifier-prettier 
npm i -y @unibeautify/cli
npm up -g
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install -y jq fzf
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
sudo apt update \
sudo apt install gh -y
gh auth login -s delete_repo
echo alias xd='cd "$(xplr --print-pwd-as-result)"' | tee -a 
alias xn='nvim "$(xplr)"'
gh auth login -s delete_repo

gh extension install yusukebe/gh-markdown-preview
gh extension install sayanarijit/gh-xplr
gh extension install korosuke613/gh-user-stars
gh extension install gennaro-tedesco/gh-s
gh alias set p markdown-preview
gh alias set x xplr
gh alias set us gh-user-stars


npm i -y http-server
npm i -y @unibeautify/beautifier-eslint 
npm i -y @unibeautify/beautifier-js-beautify 
npm i -y @unibeautify/beautifier-prettydiff 
npm i -y @unibeautify/beautifier-prettier 
npm i -y @unibeautify/cli
npm up -g
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install -y jq fzf

# 127.0.0.1
# openssl req -newkey rsa:2048 -new -nodes -x509 -days 2030 -keyout key.pem -out cert.pem && npx http-server -S -c -k --cors --no-dotfiles -o