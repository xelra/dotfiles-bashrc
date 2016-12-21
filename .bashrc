#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='LC_COLLATE=C ls --color=auto'
alias ll='ls -alhN' 
PS1='\[\e[0;33m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;33m\]\$\[\e[m\] '
eval `dircolors ~/.dircolors`

export GPG_TTY=$(tty)
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"
