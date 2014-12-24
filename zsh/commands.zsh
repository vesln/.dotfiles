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
  # Gemfile is with higher priority
  if [ -f Gemfile ]; then
    spec
  elif [ -f package.json ]; then
    npm test
  else
    echo "\e[01;31mMissing package.json and Gemfile\e[0m" 1>&2;
  fi
}
