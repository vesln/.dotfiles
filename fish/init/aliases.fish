# ls
alias ls="ls -G"
alias ll="ls -lahF"
alias l='ls -1A'

# Git
set -U fish_user_abbreviations 'gbd=git branch -D'
set -U fish_user_abbreviations 'gco=git checkout'

alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpr="git pull --rebase"
alias gb="git branch"

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
alias gdm="git delete-merged-branches"

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

# Ruby / Rails
alias be="bundle exec"
alias rc="bundle exec rails console"
alias rdm="bundle exec rake db:migrate"

# Vim
alias vi="nvim"
alias vim="nvim"

# tmux
alias cmux="tmux new -n mux -s "
alias mux="tmuxinator"

# Desk
alias d="desk"
alias d.="desk ."

# Docker
alias compose='eval (docker-machine env); docker-compose'
