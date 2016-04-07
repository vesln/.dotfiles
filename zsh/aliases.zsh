# ls
alias ls="ls -G"
alias l="ls -lahF"

# Git
alias gb="git branch"
alias gbd="git branch -D"

alias gl="git log-pretty"
alias gpr="git pull --rebase"

alias gp="git push"
alias gpu="git-push-with-tracking"

alias ga="git add"
alias gaa="git add -A"

alias gc="git commit -v"
alias gca="git commit -v --amend"

alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"

alias gd="git diff"
alias gdc="git diff --cached"

alias gst="git status --short"
alias gco="git checkout"
alias gcot="git checkout -t"

alias gsf="git submodule foreach git pull origin master"

alias gdm="git delete-merged"

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

# Ruby / Rails
alias be="bundle exec"
alias rdm="bundle exec rake db:migrate"
alias rdmr="bundle exec rake db:migrate:reset"
alias rdmrs="bundle exec rake db:migrate:reset db:seed"
alias rc="bundle exec rails console"

# Node.js
alias nr="npm run"

# Vim
alias vi="nvim"
alias vim="nvim"

# Titanium
alias tios='titanium build --platform ios --device-family iphone'
alias tipad='titanium build --platform ios --device-family ipad'

# tmux
alias cmux="tmux new -n mux -s "

# Python
alias pyclean="find . -name '*.pyc' -delete"

# What is my IP address
alias myip="curl ipecho.net/plain ; echo"

# Generate a random password
alias randpass="ruby -e \"require 'securerandom'; puts SecureRandom.base64(rand(30..50))\""

# Desk
alias d="desk"
alias d.="desk ."

# Docker
alias compose='eval $(docker-machine env); docker-compose'
