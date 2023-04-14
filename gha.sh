#!/usr/bin/env bash
read -p "Login?" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	gh auth login -s delete_repo 
	read -p "Extend?" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install fzf jq -y
		gh extension install yusukebe/gh-markdown-preview
		gh extension install korosuke613/gh-user-stars
		gh extension install gennaro-tedesco/gh-s
		gh alias set stars gh-user-stars
		gh alias set p markdown-preview
	fi
fi
