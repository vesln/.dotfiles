# Correction for commands
setopt correct_all

# Colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Auto cd
setopt auto_cd
setopt multios
setopt cdablevarS
setopt prompt_subst

# Case-insensitive (all) completion
autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Make search up and down work
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Completion
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:*:*:*' menu select
