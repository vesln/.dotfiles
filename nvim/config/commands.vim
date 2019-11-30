" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" Run neomake on save
autocmd! BufWritePost * Neomake

" Always show the sign column
function! AddDummySign()
  if !exists('b:dummy_sign')
    execute "sign define dummy"
    execute "sign place 9999 line=1 name=dummy buffer=" . bufnr('')
    let b:dummy_sign = 1
  endif
endfunction

au BufEnter * :call AddDummySign()

" Disable numbers in terminal
au TermOpen * setlocal nonumber norelativenumber

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <buffer> i <Nop>
  nnoremap <buffer> s <Nop>
  nnoremap <buffer> r <Nop>
  nnoremap <buffer> a <Nop>
  nnoremap <buffer> t <Nop>
  nnoremap <buffer> tl :tabnext<CR>
endfunction
