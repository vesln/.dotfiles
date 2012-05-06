" Make , the leader key
let mapleader = ","

" Easy ESC in insert mode
imap jj <esc>

" Remove s and Q
nnoremap s <Nop>
nnoremap Q <Nop>

" Visual mode, marking a single line
nnoremap vv _vg_

" Toggle case
nnoremap <C-u> mzg~iw`z

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" SplitJoin
nnoremap ss :SplitjoinSplit<CR>
nnoremap sj :SplitjoinJoin<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Format the entire file
nmap <leader>fef ggVG=

" Toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle ZoomWin
nnoremap <Leader>z :ZoomWin<CR>

" Toggle NERDCommenter
map <D-/> <plug>NERDCommenterToggle<CR>

" Tabularize =
nmap <Leader>ae :Tabularize /=<CR>
vmap <Leader>ae :Tabularize /=<CR>

" Tabularize =>
nmap <Leader>ar :Tabularize /=><CR>
vmap <Leader>ar :Tabularize /=><CR>

" Tabularize :
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Tabularize |
nmap <Leader>at :Tabularize /\|<CR>
vmap <Leader>at :Tabularize /\|<CR>

" CtrlP clear cache
nnoremap <D-5> :CtrlPClearCache<CR>

" Remap command key. @logicalparadox style
nnoremap ; :

" Nexus run file
map <leader>f <Plug>NexusRunTestFile

" Nexus run lien
map <leader>d <Plug>NexusRunTestLine

" Rename the current file
map <leader>r :call RenameFile()<cr>

" Promote to let
map <leader>p :PromoteToLet<cr>

" Next buffer
map <C-o> :bn<cr>

" Previous buffer
map <C-i> :bp<cr>

" Toggle gundo
map <C-g> :GundoToggle<cr>

" Run gitx
map <C-x> :!gitx .<cr><cr>
