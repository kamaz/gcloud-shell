#!/bin/bash

# how do we configure that for linux
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo "OS: ${machine}"
if [ "${machine}" = "Mac" ]; then 
  brew tap homebrew/cask-fonts
  brew cask install font-hack-nerd-font
  brew install hashicorp/tap/terraform-ls
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -r .config $HOME
cp .gitconfig $HOME
cp .tmux.conf $HOME

mkdir ~/.local/share/nvim/backup
