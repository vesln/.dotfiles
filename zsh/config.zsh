# Colors
autoload colors
colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

setopt multios
setopt prompt_subst

# Case-insensitive (all) completion
autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Make search up and down work
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Completion
unsetopt flowcontrol
setopt auto_menu
setopt menu_complete
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:*:*:*' menu select

# Command history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
