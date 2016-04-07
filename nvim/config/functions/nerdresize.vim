function! s:Nerdresize()
  exec ':NERDTree'
  exec ':vertical resize ' . g:NERDTreeWinSize
endfunction

command! Nerdresize :call <SID>Nerdresize()
