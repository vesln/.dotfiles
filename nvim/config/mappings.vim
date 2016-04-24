" Make "," the leader key
let mapleader = ","

" Current directory
cabbr <expr> %% expand('%:p:h')

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q" and "S"
nnoremap Q <Nop>
nnoremap S <Nop>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" The regular scroll half a page behavior does not suit me well
noremap <C-d> 15j
noremap <C-u> 15k

" Tests
nnoremap <Leader>f :TestFile<CR>
nnoremap <Leader>d :TestNearest<CR>

" Lint
nnoremap <Leader>lf :Neomake <bar> echo 'Linting file...'<CR>
nnoremap <Leader>ld :Neomake! <bar> echo 'Linting the entire project...'<CR>

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

vmap <Leader>s :sort<CR>

" FZF
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Easy visual selection
nnoremap vv <S-v>

" Open Google
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Paste in insert and command modes
inoremap <C-p> <Esc>pa
cnoremap <C-p> <C-r>"

" Open Fzf Ag search
nnoremap <Leader>ag :Ag<space>

" Open Fzf ag search
nnoremap <Leader>af :FzfAg<CR>

" Open Google Search
nnoremap <Leader>gs :OpenBrowserSmartSearch<space>

" Open GitX
nnoremap <Leader>gx :Gitx<CR>

" Fast save
nmap <Leader>w :w!<cr>

" Fast quit
nmap <Leader>q :q<cr>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Search for Git conflict
nmap <silent> <leader>x <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Toggle UndoTree
nmap <Leader>u :UndotreeToggle<CR>

" Paste mode
nmap <silent> <Leader>p :set paste!<CR>

" Tab movement
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap tr :TabooRename <space>

" Split screens movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Unlearn stuff
nnoremap gh :echoerr 'Nope! Use <CTRL>-h'<CR>
nnoremap gj :echoerr 'Nope! Use <CTRL>-j'<CR>
nnoremap gl :echoerr 'Nope! Use <CTRL>-k'<CR>
nnoremap gl :echoerr 'Nope! Use <CTRL>-l'<CR>
