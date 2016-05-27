" leader key
let mapleader = ","
nmap <space> ,

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q" and "S"
nnoremap Q <Nop>
nnoremap S <Nop>

" Clear search results
nnoremap <silent> <leader><cr> :nohlsearch<CR>

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
nnoremap <Leader>nt :NERDTreeToggle<CR>

" Toggle comment
map <Leader>, <plug>NERDCommenterToggle<CR>

" Copy
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" Sort
vmap <Leader>s :sort<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Easy visual selection
nnoremap vv <S-v>

" Search
nnoremap <Leader>ag :Ag<space>
nnoremap <Leader>af :FzfAg<CR>
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>

" Open GitX
nnoremap <Leader>gx :Gitx<CR>

" Fast save & quit
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>

" File/dir manupulation
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>
nnoremap <Leader>r :call RenameFile()<cr>

" Search for Git conflict
nmap <silent> <leader>x <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Tab movement
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

" Split screens movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Supertab with ctrl-f
inoremap <C-f> <C-n>

" Easy motion
nmap s <Plug>(easymotion-overwin-f2)
