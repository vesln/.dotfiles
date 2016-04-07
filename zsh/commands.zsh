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
