" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

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

function! s:rmdir()
  let b = &ft ==? 'dirvish' ? getline('.') : fnamemodify(bufname(''),':p').getline('.')
  if input('delete '.b.' ? (y/n)') ==# 'y'
    if !delete(b,'rf')
      let a = getpos('.')
      if &ft ==? 'dirvish'
        e
        call setpos('.',a)
      elseif &ft ==? 'netrw'
        if search('^\.\/$','Wb')
          exe "norm \<cr>"
          call setpos('.',a)
        endif
      endif
    endif
  endif
endfunction
command! Rmnetrw call <SID>rmdir()
