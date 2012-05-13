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
nmap <leader>ef ggVG=

" Toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle ZoomWin
nnoremap <Leader>z :ZoomWin<CR>

" Toggle NERDCommenter
nnoremap <D-/> <plug>NERDCommenterToggle<CR>

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
nnoremap <Leader>f <Plug>NexusRunTestFile

" Nexus run lien
nnoremap <Leader>d <Plug>NexusRunTestLine

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :PromoteToLet<cr>

" Previous buffer
nnoremap <silent> [b :bprevious<CR>

" Next buffer
nnoremap <silent> ]b :bnext<CR>

" First buffer
nnoremap <silent> [B :bfirst<CR>

" Last buffer
nnoremap <silent> ]B :blast<CR>

" Toggle gundo
nnoremap <C-g> :GundoToggle<cr>

" Magic
call SetArrowKeysAsTextShifters()

" Fast movement
nmap <C-j> 4j
nmap <C-k> 4k
nmap <C-l> 4l
nmap <C-h> 4h
