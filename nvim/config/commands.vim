" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> if !exists('b:skip_clean_whitespaste')| :%s/\s\+$//e

au TermOpen * :nnoremap <buffer> <Leader>Q :q!<CR>

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" sudo save
command W w !sudo tee % > /dev/null

au BufEnter nerdtree unmap /
au BufLeave nerdtree map  / <Plug>(easymotion-sn)
