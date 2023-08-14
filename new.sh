#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get full-upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt-get install gnome-keyring gh -y
curl -JL --output code.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install ./code.deb -y
rm code.deb
gh auth login -s