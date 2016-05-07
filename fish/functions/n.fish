function n
  set -l neovim (jobs | grep nvim | cut -f 1)
  set -l neocount (count $neovim)

  if test $neocount -gt 0
    fg %$neovim[1]
  else
    nvim .
  end
end
