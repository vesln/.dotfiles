" Switch on syntax highlighting
syntax on

" Lazy redraw
set lazyredraw

" Indent
filetype indent on

" Enable mouse
set mouse=a

" Don't show the current command in the lower right corner
set showcmd

" Tell vim to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" When a bracket is inserted, briefly jump to the matching one
set showmatch

" showmatch time
set matchtime=1

" Keep some stuff in the history
set history=1000

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

" Show relative numbers
"set relativenumber
set number

" Set default encoding to UTF-8
set encoding=utf-8

" Do not wrap lines
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

" Use fish
set shell=fish

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Number of lines to scroll with CTRL-U and CTRL-D commands
set scroll=1

" Show trailing spaces as dots
set listchars+=trail:.

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=extends:>

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:<

" Ignore list
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.pyc
set wildignore+=bundle,coverage
set wildignore+=*.swp,*~,._*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.bmp

" Set ignorecase in searches
set ignorecase

" Set smartcase
set smartcase

" Case is ignored when completing file names and directories
set wildignorecase

" Disable swap files
set nobackup nowritebackup noswapfile

" Complete options
set complete=.,w,b,u
set completeopt=menu,preview
set formatoptions=croqn

" Disable inserting two spaces
set nojoinspaces

" Put the new split below the current one
set splitbelow

" Put the new split right of the current one
set splitright

" Use wild menu
set wildmenu

" Add a bit extra margin to the left
"set foldcolumn=1
set foldmethod=manual

" Extra extensions for "gf"
set suffixesadd+=.js

" List all matches, complete till longest common string
set wildmode=longest,list

" Disable visual error flash and error beeps
set visualbell t_vb=

" Disable folding
set nofoldenable

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Undo
set undodir=~/.vimundo
set undofile

" Minimalistic statusline
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=

" Use the block cursor
set guicursor=a:block-blinkon0
