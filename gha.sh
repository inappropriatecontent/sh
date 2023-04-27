#! usr/bin/env bash
gh auth login -s delete_repo
gh extension install yusukebe/gh-markdown-preview
gh extension install korosuke613/gh-user-stars
gh extension install gennaro-tedesco/gh-s
gh alias set stars gh-user-stars
gh alias set p markdown-preview
if [type -p xplr >/dev/null]
then
gh extension install sayanarijit/gh-xplr
gh alias set x xplr
alias ghx='read -r -p "Clone Search?" | gh xplr "$(gh s $1)"'
fi