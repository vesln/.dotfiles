" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" PHP
au FileType php setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" CakePHP's template files
au BufEnter *.ctp set filetype=php

" JSON -> JavaScript
au BufEnter *.json set filetype=javascript

" Cucumber - open step in a vertical split
au FileType cucumber nmap <silent> <C-[> <C-W>]<C-W>L
