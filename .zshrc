export ZSH="/home/david/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  command-not-found
  git
  ripgrep
  ubuntu
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias ls='/usr/local/bin/exa'

alias find='/usr/bin/fd'

alias cat='/usr/bin/bat -p'

autoload -U compinit && compinit

# [[ $- != *i* ]] && return
# [[ -z ${TMUX} ]] && exec tmux attach

# OPAM configuration
. /home/david/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
