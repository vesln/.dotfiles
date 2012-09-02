" Make , the leader key
let mapleader = ","

" Easy ESC in insert mode
inoremap jj <esc>
inoremap jk <esc>

" Remove s and Q
nnoremap s <Nop>
nnoremap Q <Nop>

" Toggle case
nmap <C-u> mzg~iw`z

" Split screens
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" SplitJoin
nmap + :SplitjoinSplit<CR>
nmap _ :SplitjoinJoin<CR>

" Switch
nmap - :Switch<CR>

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
nmap <Leader>ah :Tabularize /=<CR>
vmap <Leader>ah :Tabularize /=><CR>

" Tabularize :
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Tabularize |
nmap <Leader>at :Tabularize /\|<CR>
vmap <Leader>at :Tabularize /\|<CR>

" Command T clear cache
nmap <Leader>q :CommandTFlush<CR>

" Remap command key
nnoremap ; :

" Run the current test
nmap <Leader>f <Plug>MuxRunFile

" Run the current test line
nmap <Leader>d <Plug>MuxRunLine

" Run everything from the current test type (rspec, cuke, mocha)
nmap <Leader>s <Plug>MuxRunAll

" Run the whole test case
nmap <Leader>w :call RunTests()<CR>

" Rename the current file
nmap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Powerful arrow keys
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
