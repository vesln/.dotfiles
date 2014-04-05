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
alias gcm="git commit -m"

alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"

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
alias rdm="rake db:migrate"
alias rdmr="rake db:migrate:reset"
alias rdtp="rake db:test:prepare"

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
