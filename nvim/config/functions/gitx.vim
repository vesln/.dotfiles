function! s:Gitx()
  exec ':silent !gitx .'
endfunction

command! Gitx :call <SID>Gitx()
