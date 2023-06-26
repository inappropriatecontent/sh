#!/usr/bin/env bash
gh auth login -s delete_repo
gh extension install yusukebe/gh-markdown-preview >/dev/null
gh extension install korosuke613/gh-user-stars >/dev/null
gh extension install gennaro-tedesco/gh-s >/dev/null
gh alias set stars gh-user-stars
gh alias set p markdown-preview
if [ "$(type -p xplr >/dev/null)" != "" ]; then
    gh extension install sayanarijit/gh-xplr >/dev/null
    gh alias set x xplr
    alias ghx='gh xplr "$(gh s)"'
fi
