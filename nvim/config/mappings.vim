" leader key
let mapleader = ","

" Essential
map ; :

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q"
nnoremap Q <Nop>

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

" Sort imports
nnoremap <Leader>s :Switch<CR>
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
nnoremap <Leader>ad :call fzf#run(fzf#wrap({ 'source': 'find . -type d -not -path "./node_modules/*" -not -path ".git/*"' }))<CR>
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>
nnoremap <silent> <Leader>c :FzfCommands<CR>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Strip trailing whitespace
nnoremap <leader><space> :call StripTrailingWhitespace()<CR>

" Fast save & quit
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>
nmap <Leader>` :qa!<cr>

" Format
nnoremap <silent> <Leader>n :Neoformat<CR>:w!<CR>

" File/dir manupulation
nmap <silent> <leader>md :silent !mkdir -p %:p:h<CR>
nnoremap <Leader>r :call RenameFile()<cr>
nnoremap <Leader>o :call OpenDirectory()<cr><cr>

" Search for Git conflict
nmap <silent> <leader>x <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Tab movement
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap t1 1gt<CR>
nnoremap t2 2gt<CR>
nnoremap t3 3gt<CR>
nnoremap t4 4gt<CR>
nnoremap t5 5gt<CR>
nnoremap t6 6gt<CR>
nnoremap t7 7gt<CR>
nnoremap t8 8gt<CR>
nnoremap t9 9gt<CR>

nnoremap <F1> 1gt<CR>
nnoremap <F2> 2gt<CR>
nnoremap <F3> 3gt<CR>
nnoremap <F4> 4gt<CR>
nnoremap <F5> 5gt<CR>
nnoremap <F6> 6gt<CR>
nnoremap <F7> 7gt<CR>
nnoremap <F8> 8gt<CR>
nnoremap <F9> 9gt<CR>
nnoremap <F12> :tabnew<CR>

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

" CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Mimic Emacs in insert mode
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa

" Autocomplete line from the entire project
inoremap <expr> <c-x><c-l> fzf#complete({ 'prefix': '^.*$', 'source': 'ag . --nogroup --nofilename' })
