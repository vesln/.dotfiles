# Commit without the quotes

gci() {
  git commit -m "$*"
}

# Push and set tracking

git-push-with-tracking() {
  git push -u origin $(git branch | grep "*" | sed "s/* //")
}
