# ~/.profile: executed by Bourne-compatible login shells.

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
PATH="$PATH:/usr/local/go/bin"

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

source $HOME/dotfiles/bash/z.sh

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias vi="nvim"
alias grep="grep --color=always"

alias mongo="mongo mongodb://admin:leanwork2019@120.25.233.50:32006/admin"

PS1='\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\H\e[m:\e[4m$(pwd)\e[m\e[1;37m]\e[m\e[1;36m\e[m\n\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

mesg n || true
