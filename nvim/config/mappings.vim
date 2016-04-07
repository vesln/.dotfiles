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

" Faster movement
noremap <C-j> 8j
noremap <C-k> 8k

" Run the current test
nnoremap <Leader>f :TestFile<CR>

" Run the current test line
nnoremap <Leader>d :TestNearest<CR>

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

" Prev/next tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" CtrlP
nnoremap <silent> <Leader>y :CtrlPMRU<CR>
nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Fast vertical window resize window
nnoremap <C-W>l :vertical resize 120<CR>

" Easy visual selection
nnoremap vv _vg_

" Open Google
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nnoremap <leader>g :GitGutterToggle<CR>

" Paste in insert and command modes
inoremap <C-p> <Esc>pa
cnoremap <C-p> <C-r>"

" Enable anzu
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" Open Ag search
nnoremap <Leader>a :Ag<space>

" Open Google Search
nnoremap <Leader>s :OpenBrowserSmartSearch<space>

" Open GitX
nnoremap <Leader>e :Gitx<CR>

" Smartword
nmap w <Plug>(smartword-w)
nmap b <Plug>(smartword-b)
nmap e <Plug>(smartword-e)
nmap ge <Plug>(smartword-ge)

xmap w <Plug>(smartword-w)
xmap b <Plug>(smartword-b)
xmap e <Plug>(smartword-e)

" Rename tab
nnoremap <f1> :TabooRename<space>

" Toggle spell
nnoremap <Leader>p :set spell!<CR>

" Dash
nmap <silent> <leader>q <Plug>DashSearch
