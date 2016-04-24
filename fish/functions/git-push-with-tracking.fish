function git-push-with-tracking
  git push -u origin (git branch | grep "*" | sed "s/* //")
end
