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

#eza
alias ls='eza --icons'
alias ll='eza -agl --icons'
alias lt='eza -a --tree --level=1 --icons'
alias ld='eza -glD --icons'
alias lf='eza -glf --color=always --icons'
alias lh='eza -dgl .* --icons'

alias pacman='sudo pacman --color=auto'

alias v='$EDITOR'
alias vim='$EDITOR'

alias grep='grep --color=always'
alias cleanup='$HOME/l4m-dotfiles/scripts/cleanup.sh'


eval "$(starship init bash)"

if [[ $(tty) != *i* ]] ; then
	neofetch
fi
