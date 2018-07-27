export ZSH="/home/david/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-completions)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

autoload -U compinit && compinit

