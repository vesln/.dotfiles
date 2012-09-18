" Make `,` the leader key
let mapleader = ","

" Easy ESC in insert mode
inoremap jj <esc>
inoremap jk <esc>

" Remove `Q`
nnoremap Q <Nop>

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Remap command key
nnoremap ; :
nnoremap s ;

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Powerful arrow keys
call SetArrowKeysAsTextShifters()

" Fast movement
nnoremap <C-j> 4j
nnoremap <C-k> 4k
nnoremap <C-l> 4l
nnoremap <C-h> 4h

" Insert a hash rocket
inoremap <C-l> <space>=><space>

" Run the current test
nmap <Leader>f <Plug>MuxRunFile

" Run the current test line
nmap <Leader>d <Plug>MuxRunLine

" Run everything from the current test type
nmap <Leader>s <Plug>MuxRunAll

" Run the whole test case
nnoremap <Leader>w :call RunTests()<CR>

" SplitJoin
nnoremap + :SplitjoinSplit<CR>
nnoremap _ :SplitjoinJoin<CR>

" Switch
nnoremap - :Switch<CR>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Tabularize =
nnoremap <Leader>ae :Tabularize /=<CR>
vnoremap <Leader>ae :Tabularize /=<CR>

" Tabularize =>
nnoremap <Leader>ah :Tabularize /=<CR>
vnoremap <Leader>ah :Tabularize /=><CR>

" Tabularize :
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>

" Tabularize |
nnoremap <Leader>at :Tabularize /\|<CR>
vnoremap <Leader>at :Tabularize /\|<CR>

" Toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle ZoomWin
nnoremap <Leader>z :ZoomWin<CR>

" Command-T clear cache
nnoremap <Leader>q :CommandTFlush<CR>
