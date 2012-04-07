. ~/.zsh/aliases
. ~/.zsh/env
. ~/.zsh/config

# Paths
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Node.js verison
nvm use 0.6.10 > /dev/null

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

PATH=$PATH:$HOME/.rvm/bin
