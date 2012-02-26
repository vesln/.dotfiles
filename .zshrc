# Path to oh-my-zsh.
ZSH=$HOME/.oh-my-zsh

# Theme.
ZSH_THEME="sunrise"

# Plugins.
plugins=(git)

# oh-my-zsh source.
source $ZSH/oh-my-zsh.sh

# Paths.
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# Node.js verison.
nvm use 0.6.10 > /dev/null
