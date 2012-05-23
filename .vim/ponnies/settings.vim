" Switch on syntax highlighting
syntax on

" Indent
filetype indent on

" Colors
colors distinguished

" Don't show the current command in the lower right corner
set showcmd

" Tell vim to always put a status line in, even if there is only one window
set laststatus=2

set clipboard=unnamed

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
