#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -r .config $HOME
cp .gitconfig $HOME
cp .tmux.conf $HOME

mkdir ~/.local/share/nvim/backup