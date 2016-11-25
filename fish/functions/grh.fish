function grh
  echo 'git reset & clean...'

  if read_confirm
    git reset head --hard > /dev/null
    git clean -fd > /dev/null
  end
end
