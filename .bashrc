#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='LC_COLLATE=C ls --color=auto'
alias ll='ls -alhN' 
eval `dircolors ~/.dircolors`

if [ $USER = root ]; then
	PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$\[\e[m\] '
fi

if [ $USER = user ]; then
	PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;32m\]\$\[\e[m\] '
fi

if [ $USER = dev ]; then
	PS1='\[\e[0;33m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;33m\]\$\[\e[m\] '
	export GPG_TTY=$(tty)
	export GOPATH=~/go
	export PATH="$PATH:$GOPATH/bin"
fi
