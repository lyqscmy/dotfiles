#!/bin/bash

# wsl
ln -sf /mnt/c/git/ ~/git
ln -sf /mnt/c/work/ ~/work
ln -sf /mnt/c/note/ ~/note

# bash
ln -sf `pwd`/bashrc.sh $HOME/.bashrc
ln -sf `pwd`/profile.sh $HOME/.profile
ln -sf `pwd`/z.sh $HOME/.z.sh

# neovim
[ -d ~/.local/share/nvim/site/autoload/ ] || mkdir -p ~/.local/share/nvim/site/autoload/
ln -sf `pwd`/plug.vim ~/.local/share/nvim/site/autoload/
[ -d ~/.config/nvim/ ] || mkdir ~/.config/nvim/
ln -sf `pwd`/init.vim ~/.config/nvim/

# pip
[ -d ~/.config/pip/ ] || mkdir ~/.config/pip/
ln -sf `pwd`/pip.conf ~/.config/pip/

# git
ln -sf `pwd`/gitconfig.ini $HOME/.gitconfig

# mycli
ln -sf `pwd`/myclirc $HOME/.myclirc
