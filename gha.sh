#! usr/bin/env bash
www-browser -u github.com/login/device
gh auth login -s delete_repo 
sudo apt-get install fzf jq -y
gh extension install yusukebe/gh-markdown-preview
gh extension install korosuke613/gh-user-stars
gh extension install gennaro-tedesco/gh-s
gh alias set stars gh-user-stars
gh alias set p markdown-preview