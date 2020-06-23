# ls
alias ls="ls -G"
alias ll="ls -lahF"
alias l='ls -1A'

# Git
abbr gco "git checkout"
abbr gbd "git branch -D"

alias gl="gll -7"
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpr="git pull --rebase"
alias gb="git branch"

alias gp="git push"
alias gpu="git-push-with-tracking"
alias gpf="git push -u --force-with-lease"

alias ga="git add"
alias gaa="git add -A"

alias gc="git commit -v"
alias gca="git commit --amend --no-edit"

alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"

alias gd="git diff"
alias gdc="git diff --cached"

alias gst="git status --short"

alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'

alias master="git checkout master"

# Ruby / Rails
alias b="bundle"
alias be="bundle exec"
alias rc="env NO_RENDERER=1 bundle exec rails console"
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:rollback"
alias rdf="bundle exec rake database:fetch"
alias rdi="bundle exec rake database:import"
alias rdtp="bundle exec rake db:test:prepare "

alias rgm="bundle exec rails g migration"

# Vim
alias vi="nvim"
alias vim="nvim"

# tmux
alias mux="tmuxinator"

# Docker
alias compose='docker-compose'

# Search for todos
alias todos='ag "TODO\(vesln\)"'
