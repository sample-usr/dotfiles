#!/bin/zsh

echo "Before running make sure that you have ran the brew profile"

if [[ -e ~/.ssh/id_ed25519.pub ]];then
  echo "SSH Key exists already."
  echo " "
else
  echo "Generating new SSH key"
  ssh-keygen -t ed25519 -C "alice@bob.com"
fi

echo " "
echo "Adding fish as the default shell"
echo $(which fish) >> /etc/shells
