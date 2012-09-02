" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" PHP - 4 spaces
au FileType php setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" Python
au FileType python set sw=4 sts=4 et

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" CakePHP -> PHP
au BufEnter *.ctp set filetype=php

" JSON -> JavaScript
au BufEnter *.json set filetype=javascript

" Cucumber - open step in a vertical split
au FileType cucumber nmap <C-p> <C-W>]<C-W>L
