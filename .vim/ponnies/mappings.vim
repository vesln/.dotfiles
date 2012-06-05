" Make , the leader key
let mapleader = ","

" Easy ESC in insert mode
imap jj <esc>

" Remove s and Q
nnoremap s <Nop>
nnoremap Q <Nop>

" Visual mode, marking a single line
nmap vv _vg_

" Toggle case
nmap <C-u> mzg~iw`z

" Split screens
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" SplitJoin
nmap ss :SplitjoinSplit<CR>
nmap sj :SplitjoinJoin<CR>

" Clear search results when hitting space
nmap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Format the entire file
nmap <leader>ef ggVG=

" Toggle NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

" Toggle ZoomWin
nmap <Leader>z :ZoomWin<CR>

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
nmap <C-q> :CtrlPClearCache<CR>

" Remap command key. @logicalparadox style
nnoremap ; :

" Nexus run file
nmap <Leader>f <Plug>NexusRunTestFile

" Nexus run line
nmap <Leader>d <Plug>NexusRunTestLine

" Rename the current file
nmap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :PromoteToLet<cr>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Toggle gundo
nmap <C-g> :GundoToggle<cr>

" Magic
call SetArrowKeysAsTextShifters()

" Fast movement
nmap <C-j> 4j
nmap <C-k> 4k
nmap <C-l> 4l
nmap <C-h> 4h

" Rails alternate. Example: model -> spec
map [f :A<CR>

" Rails related. Example: action -> view
map ]f :R<CR>
