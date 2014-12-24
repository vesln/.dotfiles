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

# Run tests
t() {
  if [ -f Gemfile ]; then
    rake
  elif [ -f package.json ]; then
    npm test
  elif [ -f Makefile ]; then
    make test
  else
    echo "\e[01;31mMissing package.json, Gemfile and Makfile\e[0m" 1>&2;
  fi
}
