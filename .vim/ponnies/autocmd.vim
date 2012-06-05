" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" PHP
au FileType php setl softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" CakePHP's template files
au BufEnter *.ctp set filetype=php

" JSON -> JavaScript
au BufEnter *.json set filetype=javascript
