call plug#begin('~/.config/nvim/plugged')

Plug('dag/vim-fish')                                              " Fish syntax
Plug('ekalinin/Dockerfile.vim')                                   " Dockerfile syntax
Plug('fatih/vim-go')                                              " Go syntax
Plug('kchmck/vim-coffee-script')                                  " CoffeeScript syntax
Plug('keith/rspec.vim')                                           " RSpec syntax
Plug('mxw/vim-jsx')                                               " JSX syntax
Plug('pangloss/vim-javascript')                                   " JavaScript syntax
Plug('tpope/vim-rails')                                           " Rails syntax
Plug('vim-ruby/vim-ruby')                                         " Ruby syntax
Plug('digitaltoad/vim-pug')                                       " jade/pug syntax
Plug('flazz/vim-colorschemes')                                    " Colors
Plug('felixhummel/setcolors.vim')                                 " set colors
Plug('Chun-Yang/vim-action-ag')                                   " This plugin map gag to do Ag search.
Plug('benekastah/neomake')                                        " A plugin for asynchronous :make
Plug('ervandew/supertab')                                         " Allows you to use <Tab> for all your insert completion needs<Paste>
Plug('gcmt/taboo.vim')                                            " Taboo aims to ease the way you set the vim tabline
Plug('itspriddle/vim-marked')                                     " Open the current Markdown buffer in Marked
Plug('janko-m/vim-test')                                          " A Vim wrapper for running tests on different granularities.
Plug('junegunn/fzf.vim')                                          " A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " A command-line fuzzy finder
Plug('l9')                                                        " Utility functions and commands
Plug('mattn/gist-vim')                                            " GitHub gists
Plug('mbbill/undotree')                                           " Undo history visualize
Plug('michaeljsmith/vim-indent-object')                           " Defines a new text object representing lines of code at the same indent level
Plug('rking/ag.vim')                                              " Plugin for ag
Plug('scrooloose/nerdcommenter')                                  " Easy comments
Plug('scrooloose/nerdtree')                                       " File browser
Plug('terryma/vim-expand-region')                                 " Allows you to visually select increasingly larger regions of text using the same key combination
Plug('terryma/vim-multiple-cursors')                              " Multiple cursors
Plug('ton/vim-bufsurf')                                           " Enables surfing through buffers based on viewing history per window
Plug('tpope/vim-abolish')                                         " Easily search for, substitute, and abbreviate multiple variants of a word
Plug('tpope/vim-endwise')                                         " Wisely add 'end' in ruby, endfunction/endif/more in vim script, etc.
Plug('tpope/vim-fugitive')                                        " Git
Plug('tpope/vim-git')                                             " Git
Plug('tpope/vim-repeat')                                          " Enable repeating supported plugin maps
Plug('tpope/vim-surround')                                        " Quoting/parenthesizing made simple
Plug('tpope/vim-unimpaired')                                      " Pairs of handy bracket mappings
Plug('tyru/open-browser.vim')                                     " Open URI
Plug('xolox/vim-misc')                                            " Miscellaneous auto-load Vim scripts
Plug('xolox/vim-notes')                                           " Easy note taking in Vim
Plug('easymotion/vim-easymotion')                                 " Easy motion
Plug('Shougo/deoplete.nvim')                                      " Autocomplete
Plug('godlygeek/tabular')                                         " Text filtering and alignment

call plug#end()
