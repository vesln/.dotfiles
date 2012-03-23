# Pretty git log.
alias gl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"

# Allows you to skip the quotes after git commit -m.
# Thanks to @skanev
function gci () {
  git commit -m "$*"
}
