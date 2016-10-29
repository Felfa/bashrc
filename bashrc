#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines or lines starting with space in the history. See bash(1) for more options.
HISTCONTROL=ignoreboth

# Prompt
PS1='\[\033[38;5;1m\]$? \[\033[00;01m\][\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00;01m\]]\[\033[1;36m\] %\[\033[00;00m\] '

# Some environment variables
export EDITOR=nano
export VISUAL=$EDITOR

# Some useful aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias emacs='emacs -nw'
alias rlinux='sudo QT_X11_NO_MITSHM=1 rlinux'
#alias neofetch="neofetch --image 'Ascii'"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Additional paths
PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin

# less colors, specially for man pages
export LESS_TERMCAP_mb=$'\e[1;35m'			# turn on blinking
export LESS_TERMCAP_md=$'\e[1;35m'			# turn on bold
export LESS_TERMCAP_me=$'\e[0m'				# turn off modes
export LESS_TERMCAP_so=$'\e[1;33m'			# begin standout mode
export LESS_TERMCAP_se=$'\e[0m'				# end standout mode
export LESS_TERMCAP_us=$'\e[4;38;0;34m'	# begin underline
export LESS_TERMCAP_ue=$'\e[0m'				# end underline

# shell colors cheatsheet

# 			norm	bright
# black 	0;30	1;30
# red		0;31	1;31
# green		0;32	1;32
# brown		0;33	1;33
# blue		0;34	1;34
# purple	0;35	1;35
# cyan		0;36	1;36
