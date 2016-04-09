" Make "," the leader key
let mapleader = ","

" Current directory
cabbr <expr> %% expand('%:p:h')

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q" and "S"
nnoremap Q <Nop>
nnoremap S <Nop>

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" Scrolling half a page is a little bit too much for me
noremap <C-j> 11j
noremap <C-k> 11k

" Run the current test
nnoremap <Leader>f :TestFile<CR>

" Run the current test line
nnoremap <Leader>d :TestNearest<CR>

" Lint
nnoremap <Leader>l :Neomake<CR>

" Open the location list
nnoremap <Leader>o :lopen<CR>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle comment
map <Leader><Leader> <plug>NERDCommenterToggle<CR>

" Copy
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" FZF
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Fast vertical window resize window
nnoremap <C-W>l :vertical resize 120<CR>

" Easy visual selection
nnoremap vv <S-v>

" Open Google
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nnoremap <leader>g :GitGutterToggle<CR>

" Paste in insert and command modes
inoremap <C-p> <Esc>pa
cnoremap <C-p> <C-r>"

" Open Ag search
nnoremap <Leader>a :Ag<space>

" Open Google Search
nnoremap <Leader>s :OpenBrowserSmartSearch<space>

" Open GitX
nnoremap <Leader>e :Gitx<CR>


" Rename tab
nnoremap <f1> :TabooRename<space>

" Toggle spell
nnoremap <Leader>p :set spell!<CR>

" Dash
nmap <silent> <leader>q <Plug>DashSearch
