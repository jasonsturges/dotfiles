eval "$(rbenv init - zsh)"
eval "$(fzf --zsh)"

export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

alias idea="open -na \"IntelliJ IDEA.app\" --args \"$@\""

source /Users/jasonsturges/.docker/init-zsh.sh || true # Added by Docker Desktop
