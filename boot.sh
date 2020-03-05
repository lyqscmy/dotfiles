#!/bin/bash

# zsh
ln -sf `pwd`/zshrc.zsh $HOME/.zshrc

# neovim
[ -d ~/.local/share/nvim/site/autoload/ ] || mkdir -p ~/.local/share/nvim/site/autoload/
ln -sf `pwd`/plug.vim ~/.local/share/nvim/site/autoload/
[ -d ~/.config/nvim/ ] || mkdir -p ~/.config/nvim/
ln -sf `pwd`/init.vim ~/.config/nvim/

# pip
[ -d ~/.config/pip/ ] || mkdir -p ~/.config/pip/
ln -sf `pwd`/pip.conf ~/.config/pip/

# git
ln -sf `pwd`/gitconfig.global $HOME/.gitconfig
