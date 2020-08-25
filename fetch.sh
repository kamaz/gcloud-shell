#!/bin/bash
mkdir -p .config/nvim/
mkdir -p .config/coc/ultisnips

cp $HOME/.config/nvim/*.vim .config/nvim/
cp $HOME/.config/nvim/coc-settings.json .config/nvim/coc-settings.json
cp -r $HOME/.config/nvim/snippets .config/nvim/snippets
cp -r $HOME/.config/coc/ultisnips .config/coc/ultisnips

cp $HOME/.gitconfig .
cp $HOME/.tmux.conf .
cp $HOME/.customize_environment  .
cp $HOME/.bash_aliases  .

