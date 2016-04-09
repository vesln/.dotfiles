call plug#begin('~/.config/nvim/plugged')

" Dockerfile syntax
Plug('ekalinin/Dockerfile.vim')

" Go syntax
Plug('fatih/vim-go')

" CoffeeScript syntax
Plug('kchmck/vim-coffee-script')

" RSpec syntax
Plug('keith/rspec.vim')

" JSX syntax
Plug('mxw/vim-jsx')

" JavaScript syntax
Plug('pangloss/vim-javascript')

" Rails syntax
Plug('tpope/vim-rails')

" Ruby syntax
Plug('vim-ruby/vim-ruby')

" Colors: Solarized
Plug('altercation/vim-colors-solarized')

" Colors: jellybeans
Plug('nanotech/jellybeans.vim')

" This plugin map gag to do Ag search.
Plug('Chun-Yang/vim-action-ag')

" A plugin for asynchronous :make
Plug('benekastah/neomake')

" Allows you to use <Tab> for all your insert completion needs<Paste>
Plug('ervandew/supertab')

" Taboo aims to ease the way you set the vim tabline
Plug('gcmt/taboo.vim')

" Open the current Markdown buffer in Marked
Plug('itspriddle/vim-marked')

" A Vim wrapper for running tests on different granularities.
Plug('janko-m/vim-test')

" A command-line fuzzy finder
Plug('junegunn/fzf.vim')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Marks management
Plug('kshenoy/vim-signature')

" Utility functions and commands
Plug('l9')

" GitHub gists
Plug('mattn/gist-vim')

" Undo history visualize
Plug('mbbill/undotree')

" Defines a new text object representing lines of code at the same indent level
Plug('michaeljsmith/vim-indent-object')

" Plugin for ag
Plug('rking/ag.vim')

" Easy comments
Plug('scrooloose/nerdcommenter')

" File browser
Plug('scrooloose/nerdtree')

" Allows you to visually select increasingly larger regions of text using the same key combination
Plug('terryma/vim-expand-region')

" Multiple cursors
Plug('terryma/vim-multiple-cursors')

" Enables surfing through buffers based on viewing history per window
Plug('ton/vim-bufsurf')

" Easily search for, substitute, and abbreviate multiple variants of a word
Plug('tpope/vim-abolish')

" Wisely add "end" in ruby, endfunction/endif/more in vim script, etc.
Plug('tpope/vim-endwise')

" Git
Plug('tpope/vim-fugitive')

" Enable repeating supported plugin maps with "."
Plug('tpope/vim-repeat')

" Quoting/parenthesizing made simple
Plug('tpope/vim-surround')

" Pairs of handy bracket mappings
Plug('tpope/vim-unimpaired')

" Open URI
Plug('tyru/open-browser.vim')

" Maintains a history of previous yanks, changes and deletes
Plug('vim-scripts/YankRing.vim')

" Miscellaneous auto-load Vim scripts
Plug('xolox/vim-misc')

" Easy note taking in Vim
Plug('xolox/vim-notes')

call plug#end()
