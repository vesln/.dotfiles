# Commit without the quotes
gci() {
  git commit -m "$*"
}

# Kill Spork
kill-spork() {
  ps ax | grep spork | awk '{print $1}' | xargs kill > /dev/null 2>&1
}

# Kill Spork, run the migrations and prepare
mig() {
  kill-spork
  rake db:migrate
  rake db:test:prepare
}

# Kill Spork, run the migrations with reset and prepare
migr() {
  kill-spork
  rake db:migrate:reset
  rake db:test:prepare
}
