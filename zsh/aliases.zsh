# ls

alias ls="ls -G"
alias l="ls -lahF"

# Git

alias gbd="git branch -D"

alias gl="git log-pretty"
alias gpr="git pull --rebase"

alias gp="git push"
alias gpu="git-push-with-tracking"

alias ga="git add"
alias gap="git add -p"
alias gaa="git add -A"

alias gc="git commit -v"
alias gcam="git commit -v --amend"
alias gcm="git commit -m"

alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"

alias grs="git reset HEAD\^ --soft"

alias gsh="git stash"
alias gshp="git stash pop"

alias gd="git diff"
alias gdc="git diff --cached"

alias gst="git status --short"
alias gco="git checkout"

alias gsf="git submodule foreach git pull origin master"

alias gdm="git delete-merged"

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

# Ruby / Rails

alias be="bundle exec"
alias rdm="bundle exec rake db:migrate"
alias rdmr="bundle exec rake db:migrate:reset"
alias rdtp="bundle exec rake db:test:prepare"

alias cuke="be cucumber --drb"
alias spec="be rspec spec/ --drb"

alias spr="be spork rspec"
alias spc="be spork cucumber"

# Node

alias node='node --harmony'

# Vim

alias vi="vim"

# Titanium

alias tios='titanium build --platform ios --device-family iphone'
alias tipad='titanium build --platform ios --device-family ipad'

# tmux

alias cmux="tmux new -n mux -s "
alias kmux="tmux kill-session"

# node-webkit

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
