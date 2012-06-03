. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/plugins/git.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh

if [[ $(uname) == 'Linux' ]]; then
  . ~/.zsh/linux/aliases.zsh
else
  . ~/.zsh/mac/aliases.zsh
fi
