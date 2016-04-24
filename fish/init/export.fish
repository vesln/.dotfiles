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

# AWS credentials
set -x AWS_CREDENTIAL_FILE ~/.eb_aws_cred

# Grep
set -x GREP_OPTIONS "--color=auto"

# Node
set -x NVM_DIR ~/.nvm

# Disable the greeting message
set -U fish_greeting ""
