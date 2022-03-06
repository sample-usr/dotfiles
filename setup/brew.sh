#!/bin/zsh

if [[ $(command -v brew) == "" ]]; then
  echo "!! Homebrew is not installed"    
  echo "=> Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating Homebrew"
  brew update
fi

brew bundle --file=~/.dotfiles/setup/Brewfile --zap -v
