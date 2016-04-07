" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> if !exists('b:skip_clean_whitespaste')| :%s/\s\+$//e

" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" Display line numbers in the terminal window
au TermOpen * :set number

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
