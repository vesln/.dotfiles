# Path
set -x PATH "$HOME/.rbenv/bin" $PATH
set -x PATH "$HOME/.rbenv/shims" $PATH
set -x PATH "./node_modules/.bin" $PATH
set -x PATH "$HOME/.bin" $PATH

# cd path
set -g CDPATH . ~ ~/.config

# Ruby
set -x RUBY_GC_HEAP_INIT_SLOTS 600000
set -x RUBY_GC_HEAP_FREE_SLOTS 600000
set -x RUBY_GC_HEAP_GROWTH_FACTOR 1.25
set -x RUBY_GC_HEAP_GROWTH_MAX_SLOTS 300000
set -x DISABLE_SPRING true

# locale
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

# Editor
set -x EDITOR nvim

# go
set -x GOPATH ~/.go

# fzf
set -x FZF_DEFAULT_COMMAND 'ag -g ""'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

if test $LIGHT_COLORS
  set -x FZF_DEFAULT_OPTS "--color light"
else
  set -x FZF_DEFAULT_OPTS "--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104 --color info:183,prompt:110,spinner:107,pointer:167,marker:215"
end

# AWS credentials
set -x AWS_CREDENTIAL_FILE ~/.eb_aws_cred

# Grep
set -x GREP_OPTIONS "--color=auto"

# Node
set -x NVM_DIR ~/.nvm

# Disable the greeting message
set -U fish_greeting ""

set -x CMDLINE_SHELL "fish"
