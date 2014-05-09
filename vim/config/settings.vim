" Switch on syntax highlighting
syntax on

" Indent
filetype indent on

" Don't show the current command in the lower right corner
set showcmd

" Tell vim to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" When a bracket is inserted, briefly jump to the matching one
set showmatch

" Keep some stuff in the history
set history=1000

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

" Show line and column numbers
set ruler

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

" This makes RVM work
set shell=bash

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Show trailing spaces as dots
set listchars+=trail:.

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=extends:>

" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:<

" Ignore output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.pyc

" Ignore node & component related stuff
set wildignore+=node_modules,components,bundle,coverage

" Ignore temp and backup files
set wildignore+=*.swp,*~,._*

" Ignore images
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.bmp

" Set ignorecase in searches
set ignorecase

" Set smartcase
set smartcase

" Disable swap files
set nobackup nowritebackup noswapfile

" Use the popup only when needed
set completeopt=menu

" Complete options. See complete-items.
set complete=.,w

" Disable inserting two spaces
set nojoinspaces

" Put the new split below the current one
set splitbelow

" Put the new split right of the current one
set splitright

" Use wild menu
set wildmenu

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

" Terminal options
set t_Co=256

" Status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Jellybeans background: black
let g:jellybeans_background_color_256=16

" Colors
colors jellybeans
