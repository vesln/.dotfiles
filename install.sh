#!/usr/bin/env bash

IGNORE=(Readme.md install.sh)

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"

ignored() {
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

for file in $(ls); do
  ignored $file "${IGNORE[@]}"

  if [ $? -eq 0 ]; then
    continue
  fi

  ln -s $DIR$file ~/.$file
done
