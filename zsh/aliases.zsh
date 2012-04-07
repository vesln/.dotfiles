## ls
alias ls="ls -G"
alias l="ls -lahF"

## Git
alias g="git"

alias gb="git branch"
alias gbd="git branch -D"

alias gl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"

alias gpr="git pull --rebase"

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

alias gst="git status"

alias gs="git stash"
alias gsp="git stash pop"

## Ruby
alias ree="RUBY_HEAP_MIN_SLOTS=1000000 RUBY_HEAP_SLOTS_INCREMENT=1000000 RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 RUBY_GC_MALLOC_LIMIT=1000000000 RUBY_HEAP_FREE_MIN=500000"

alias b="bundle"
alias be="bundle exec"

alias cuke="clear && ree be cucumber --drb"
alias spec="clear && ree be rspec --drb"

alias spj="ree be specjour --workers 2"

alias rdm="rake db:migrate"
alias rdmr="rake db:migrate:reset"
alias rdtp="rake db:test:prepare"

alias rgm="rails g migration"

alias spr="ree be spork rspec"
alias spc="ree be spork cucumber"

function gci () {
  git commit -m "$*"
}

## Projects
alias lookk="cd ~/Projects/garmz/"
alias garmz="cd ~/Projects/garmz/"
