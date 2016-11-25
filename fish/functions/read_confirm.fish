function read_confirm --description 'Ask the user for confirmation' --argument prompt
  if test -z "$prompt"
    set prompt "Continue?"
  end

  while true
    read -p 'echo "Confirm? (y/n):"' -l confirm

    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end
