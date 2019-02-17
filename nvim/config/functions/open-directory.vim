" Open the dir of the current file
function! OpenDirectory()
  silent exec ':!open ' . expand('%:p:h')
endfunction
