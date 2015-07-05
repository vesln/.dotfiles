# Commit without the quotes
gci() {
  git commit -m "$*"
}

# Push and set tracking
git-push-with-tracking() {
  git push -u origin $(git branch | grep "*" | sed "s/* //")
}

# Enable pyenv
pyenv-enable() {
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
}

# Open a document with Marked
marked() {
  open -a Marked\ 2.app $*
}

# Run tests
t() {
  if [ -f Gemfile ]; then
    bundle exec rake
  elif [ -f package.json ]; then
    npm test
  elif [ -f Makefile ]; then
    make test
  else
    echo "\e[01;31mMissing package.json, Gemfile and Makfile\e[0m" 1>&2;
  fi
}

# Update a rails project
rails-update() {
  git checkout master
  git fetch
  bundle install
  bundle exec rake db:migrate
}
