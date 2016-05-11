# ls
alias ls="ls -G"
alias ll="ls -lahF"
alias l='ls -1A'

# Git
abbr -a gco git checkout
abbr -a gbd git branch -D

alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpr="git pull --rebase"
alias gb="git branch"

alias gp="git push"
alias gpu="git-push-with-tracking"
alias gpf="git push --force-with-lease"

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
