" leader key
let mapleader = ","

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q" and "S"
nnoremap Q <Nop>
nnoremap S <Nop>

" Clear search results
nnoremap <silent> <space> :nohlsearch<CR>

" Tests
nnoremap <Leader>f :TestFile<CR>
nnoremap <Leader>d :TestNearest<CR>

" Toggle comment
map <Leader>; <plug>NERDCommenterToggle<CR>

" Swtich to prev buffer
nnoremap <leader><leader> <c-^>

" Copy
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" Sort
vmap <Leader>s :sort<CR>

" More reasonable scroll
nmap <C-d> 20j
nmap <C-u> 20k

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Easy visual selection
nnoremap vv <S-v>

" Search
nnoremap <Leader>ag :Ag<space>
nnoremap <Leader>af :FzfAg<CR>
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Fast save & quit
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>

" File/dir manupulation
nmap <silent> <leader>md :silent !mkdir -p %:p:h<CR>
nnoremap <Leader>r :call RenameFile()<cr>

" Search for Git conflict
nmap <silent> <leader>x <ESC>/\v^[<=>]{7}( .*\|$)<CR>

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

inoremap <C-f> <C-o>l
inoremap <C-b> <C-o>h
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
inoremap <C-k> <C-o>C

" Easy motion
nmap s <Plug>(easymotion-bd-f)
omap t <Plug>(easymotion-tl)

" Edit file in current files' directory
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
