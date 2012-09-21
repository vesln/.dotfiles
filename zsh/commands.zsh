# Commit without the quotes
gci() {
  git commit -m "$*"
}

# Kill Spork
kill-spork() {
  ps ax | grep spork | awk '{print $1}' | xargs kill > /dev/null 2>&1
}

# Kill Spork, run the migrations and prepare
rails-db-migrate() {
  kill-spork
  rake db:migrate
  rake db:test:prepare
}

# Kill Spork, run the migrations with reset and prepare
rails-db-migrate-reset() {
  kill-spork
  rake db:migrate:reset
  rake db:test:prepare
}

# Push and set tracking
git-push-with-tracking() {
  git push -u origin $(git branch | grep "*" | sed "s/* //")
}
