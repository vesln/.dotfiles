" Make "," the leader key
let mapleader = ","

" Convenient ESC in insert mode
inoremap jk <esc>

" Remove "Q"
nnoremap Q <Nop>

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Meaningful arrow keys
call SetArrowKeysAsTextShifters()

" Fast movement
noremap <C-j> 8j
noremap <C-k> 8k

" Run the current test
nmap <Leader>f <Plug>MuxRunFile

" Run the current test line
nmap <Leader>d <Plug>MuxRunLine

" Run the whole test case
nnoremap <Leader>w :call RunTests()<CR>

" Send ctrl-c
nnoremap <Leader>x :MuxSend C-c<CR>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Tabularize =
nnoremap <Leader>ae :Tabularize /=<CR>
vnoremap <Leader>ae :Tabularize /=<CR>

" Tabularize |
nnoremap <Leader>at :Tabularize /\|<CR>
vnoremap <Leader>at :Tabularize /\|<CR>

" Command-T clear cache
nnoremap <Leader>q :CommandTFlush<CR>

" Toggle comment
map <Leader><Leader> <plug>NERDCommenterToggle<CR>
