git config --global user.email "jmyle.koretz@gmail.com"
git config --global user.name "a. perv"
sudo apt-get update \
&& sudo apt-get upgrade -y \
&& sudo apt-get install build-essential -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 18 --latest-npm

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
  
sudo apt-get install -y build-essential coreutils make w3m-img xdotool fbset

git clone dylanaraps/fff
cd fff
sudo make install

# 127.0.0.1
# npx openssl req -newkey rsa:2048 -new -nodes -x509 -days 2030 -keyout key.pem -out cert.pem
# npx http-server -d  -s -cors -S --cert --pem -o
#  http-server -S -c -k --cors --no-dotfiles -o
