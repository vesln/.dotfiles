# Commit without the quotes
function gci () {
  git commit -m "$*"
}

# Kill Spork
function kill-spork() {
  ps ax | grep spork | awk '{print $1}' | xargs kill > /dev/null 2>&1
}

# Kill Spork, run the migrations and prepare
function mig() {
  kill-spork
  rake db:migrate
  rake db:test:prepare
}

# Kill Spork, run the migrations with reset and prepare
function migr() {
  kill-spork
  rake db:migrate:reset
  rake db:test:prepare
}
