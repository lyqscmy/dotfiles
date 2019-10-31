#!/bin/bash

# wsl
ln -sf /mnt/c/git/ ~/git
ln -sf /mnt/c/work/ ~/work
ln -sf /mnt/c/note/ ~/note

# bash
ln -sf `pwd`/bashrc.sh $HOME/.bashrc
ln -sf `pwd`/profile.sh $HOME/.profile

# neovim
ln -sf `pwd`/plug.vim ~/.local/share/nvim/site/autoload/plug.vim
ln -sf `pwd`/init.vim ~/.config/nvim/init.vim

# git
ln -sf `pwd`/gitconfig.ini $HOME/.gitconfig

# mycli
ln -sf `pwd`/myclirc $HOME/.myclirc