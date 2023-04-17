#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y fdfind
sudo mv /usr/bin/fdfind /usr/bin/fd
sudo apt-get upgrade -y
read -p "Do you want to continue? (yes/no) " answer
if [ "$answer" = "yes" ]; then
  echo "OK, let's go on"
elif [ "$answer" = "no" ]; then
  echo "Bye"
  exit
else
  echo "Invalid input"
fi