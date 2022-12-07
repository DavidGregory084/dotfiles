if test -f /usr/local/bin/brew
  eval "$(/usr/local/bin/brew shellenv)"
else if test -f /opt/homebrew/bin/brew
  eval "$(/opt/homebrew/bin/brew shellenv)"
end

if status is-interactive
  starship init fish | source
end

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less -R
set -gx JAVA_HOME $(/usr/libexec/java_home -v 17)

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.cabal/bin
fish_add_path $HOME/.ghcup/bin

alias vi="nvim"
alias vim="nvim"
alias ls="exa --long --git"
alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"

if string match -q "$TERM_PROGRAM" "vscode"
  . (code --locate-shell-integration-path fish)
end
