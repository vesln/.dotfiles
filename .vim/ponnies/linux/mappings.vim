" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Map Control-# to switch tabs
map <F1> :tabnext 1<CR>
map <F2> :tabnext 2<CR>
map <F3> :tabnext 3<CR>
map <F4> :tabnext 4<CR>
map <F5> :tabnext 5<CR>
map <F6> :tabnext 6<CR>
map <F7> :tabnext 7<CR>
map <F8> :tabnext 8<CR>
map <F9> :tabnext 9<CR>

" Paste
map <C-\> "+p

" New tab
map <C-t> :tabe<CR>

" Toggle NERDCommenter
nmap <C-/> <plug>NERDCommenterToggle<CR>
