" Switch on syntax highlighting
syntax on

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Indent
filetype indent on

" Colors
colors distinguished

" Don't show the current command in the lower right corner
set showcmd

" Tell vim to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" Keep some stuff in the history
set history=100

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Use vim, no vi defaults
set nocompatible

" Show line numbers
set number

" Show line and column number
set ruler

" Set default encoding to UTF-8
set encoding=utf-8

" Don't wrap lines
set nowrap

" A tab is two spaces
set tabstop=2

" An autoindent (with <<) is two spaces
set shiftwidth=2

" Use spaces, not tabs
set expandtab

" Show invisible characters
set list

" Reset the listchars
set listchars=""

" Make command line two lines high
set ch=2

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" A tab should display as "    "
set listchars=tab:\ \ 

" Show trailing spaces as dots
set listchars+=trail:.

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=extends:>

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:<

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Set ignorecase in searches
set ignorecase

" Disable swap files
set nobackup nowritebackup noswapfile

" PHP
au FileType php setl softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" NERDTree use minimal UI
let NERDTreeMinimalUI = 1

" NERDTree ignore list
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

" Show hidden files
let NERDTreeShowHidden=1
" Make , the leader key
let mapleader = ","

" Easy ESC in insert mode
imap jj <esc>

" Remove s and Q
nnoremap s <Nop>
nnoremap Q <Nop>

" Visual mode, marking a single line
nnoremap vv _vg_

" Toggle case
nnoremap <C-u> mzg~iw`z

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" SplitJoin
nnoremap bs :SplitjoinSplit<CR>
nnoremap bj :SplitjoinJoin<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Format the entire file
nmap <leader>fef ggVG=

" Toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle ZoomWin
nnoremap <Leader>z :ZoomWin<CR>

" Toggle NERDCommenter
map <D-/> <plug>NERDCommenterToggle<CR>

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
nnoremap <D-5> :CtrlPClearCache<CR>

" Remap command key. @logicalparadox style
nnoremap ; :

" http://jeetworks.org/node/89
function! s:MoveLineUp()
  call <SID>MoveLineOrVisualUp(".", "")
endfunction

function! s:MoveLineDown()
  call <SID>MoveLineOrVisualDown(".", "")
endfunction

function! s:MoveVisualUp()
  call <SID>MoveLineOrVisualUp("'<", "'<,'>")
  normal gv
endfunction

function! s:MoveVisualDown()
  call <SID>MoveLineOrVisualDown("'>", "'<,'>")
  normal gv
endfunction

function! s:MoveLineOrVisualUp(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num - v:count1 - 1 < 0
    let move_arg = "0"
  else
    let move_arg = a:line_getter." -".(v:count1 + 1)
  endif
  call <SID>MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! s:MoveLineOrVisualDown(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num + v:count1 > line("$")
    let move_arg = "$"
  else
    let move_arg = a:line_getter." +".v:count1
  endif
  call <SID>MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! s:MoveLineOrVisualUpOrDown(move_arg)
  let col_num = virtcol(".")
  execute "silent! ".a:move_arg
  execute "normal! ".col_num."|"
endfunction

" Arrow key remapping:
" Up/Dn = move line up/dn
" Left/Right = indent/unindent
function! SetArrowKeysAsTextShifters()
  " Normal mode
  nnoremap <silent> <Left>   <<
  nnoremap <silent> <Right>  >>
  nnoremap <silent> <Up>     <Esc>:call <SID>MoveLineUp()<CR>
  nnoremap <silent> <Down>   <Esc>:call <SID>MoveLineDown()<CR>

  " Visual mode
  vnoremap <silent> <Left>   <gv
  vnoremap <silent> <Right>  >gv
  vnoremap <silent> <Up>     <Esc>:call <SID>MoveVisualUp()<CR>
  vnoremap <silent> <Down>   <Esc>:call <SID>MoveVisualDown()<CR>

endfunction

call SetArrowKeysAsTextShifters()

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

map <leader>r :call RenameFile()<cr>
map <leader>f <Plug>NexusRunFile <SID>run('file')
map <leader>d <Plug>NexusRunLine <SID>run('run')
