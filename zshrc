. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh
. ~/.zsh/tmux/completion.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
