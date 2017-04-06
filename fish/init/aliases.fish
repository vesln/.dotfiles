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
alias gfix='eval $EDITOR (git diff --name-only | uniq)'

# Ruby / Rails
alias be="bundle exec"
alias rc="env NO_RENDERER=1 bundle exec rails console"
alias rdm="bundle exec rake db:migrate"

# Vim
alias vi="nvim"
alias vim="nvim"

# tmux
alias mux="tmuxinator"

# Desk
alias d="desk"
alias d.="desk ."

# Docker
alias compose='docker-compose'
