#!/bin/zsh

# zsh
# ln -sf `pwd`/zshrc.zsh $HOME/.zshrc
if [[ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]]; then
	git clone --recursive https://github.com/lyqscmy/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

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
