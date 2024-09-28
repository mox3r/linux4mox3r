#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

#Define variables
export EDITOR=nvim
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups

##########################################################
# ALIASES
# #########################################################

alias c='clear'
alias nf='neofetch'
alias ff='clear && neofetch'
alias wttr='$HOME/l4m-dotfiles/scripts/weather.sh'

#git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"

#eza
alias ls='eza --icons'
alias ll='eza -agl --icons'
alias lt='eza -a --tree --level=1 --icons'
alias lsd='eza -glD --icons'
alias lsf='eza -glf --color=always --icons'
alias lh='eza -dgl .* --icons'

alias v='$EDITOR'
alias vim='$EDITOR'

alias grep='grep --color=always'
alias cleanup='$HOME/l4m-dotfiles/scripts/cleanup.sh'


eval "$(starship init bash)"

#cat $HOME/.cache/wal/sequences

if [[ $(tty) != *i* ]] ; then
	neofetch
fi
