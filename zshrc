. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh
. ~/.zsh/vendor.zsh
. ~/.zsh/tmux/completion.zsh

## Local .zshrc
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

## rbenv
eval "$(rbenv init --no-rehash -)"
(rbenv rehash &) 2> /dev/null

## Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
