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

export CUCUMBER_FORMAT="progress"
