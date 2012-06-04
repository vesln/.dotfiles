" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Map Control-# to switch tabs
map <C-0> 0gt
imap <C-0> <Esc>0gt
map <C-1> 1gt
imap <C-1> <Esc>1gt
map <C-2> 2gt
imap <C-2> <Esc>2gt
map <C-3> 3gt
imap <C-3> <Esc>3gt
map <C-4> 4gt
imap <C-4> <Esc>4gt
map <C-5> 5gt
imap <C-5> <Esc>5gt
map <C-6> 6gt
imap <C-6> <Esc>6gt
map <C-7> 7gt
imap <C-7> <Esc>7gt
map <C-8> 8gt
imap <C-8> <Esc>8gt
map <C-9> 9gt
imap <C-9> <Esc>9gt

" Paste
map <C-\> "+p

" New tab
map <C-t> :tabe<CR>

" Toggle NERDCommenter
nmap <C-/> <plug>NERDCommenterToggle<CR>
