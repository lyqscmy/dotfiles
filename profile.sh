# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
# alias vi="nvim"
# alias e='emacsclient -t'
alias grep="grep --color=always"

alias mongo-test="mongo mongodb://admin:leanwork2019@192.168.60.237:32010"
alias mongo-dev="mongo mongodb://admin:leanwork2019@192.168.60.237:32009"

PS1='\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\H\e[m:\e[4m$(pwd)\e[m\e[1;37m]\e[m\e[1;36m\e[m\n\$ '

PATH=/usr/local/go/bin:$PATH
PATH=/usr/local/protoc/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/go/bin:$PATH
# PATH=/usr/local/openresty/nginx/sbin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.z.sh ] && source ~/.z.sh

mesg n || true
