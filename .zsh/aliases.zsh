# ls
alias l="ls -lahF"

# Git
alias g="git"

alias gb="git branch"
alias gbd="git branch -D"

alias gl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias gpr="git pull --rebase"

alias gp="git push"
alias gpu="git-push-with-tracking"

alias ga="git add"
alias gaa="git add -A"

alias gc="git commit"
alias gcm="git commit -m"

alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"

alias grh="git reset HEAD --hard"
alias grs="git reset HEAD\^ --soft"

alias gcf="git clean -f"
alias gcd="git clean -d"

alias gs="git stash"
alias gsp="git stash pop"

alias gd="git diff"
alias gdc="git diff --cached"

alias gst="git status"
alias gco="git checkout"

alias gsf="git submodule foreach git pull origin master"

# Rails
alias b="bundle"
alias be="bundle exec"

alias cuke="be cucumber --drb"
alias spec="be rspec . --drb"

alias rdm="rails-db-migrate"
alias rdmr="rails-db-migrate-reset"
alias rgm="rails g migration"

alias spr="be spork rspec"
alias spc="be spork cucumber"

# Node.js
alias t="make test"

# Redis
alias redis-start='redis-server /usr/local/etc/redis.conf > /dev/null &'
alias redis-stop='killall redis-server'

# tmuxinator
alias tor='tmuxinator'
