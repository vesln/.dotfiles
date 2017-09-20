call plug#begin('~/.config/nvim/plugged')

Plug 'dag/vim-fish'                                               " Fish syntax
Plug 'ekalinin/Dockerfile.vim'                                    " Dockerfile syntax
Plug 'fatih/vim-go'                                               " Go syntax
Plug 'kchmck/vim-coffee-script'                                   " CoffeeScript syntax
Plug 'keith/rspec.vim'                                            " RSpec syntax
Plug 'mxw/vim-jsx'                                                " JSX syntax
Plug 'pangloss/vim-javascript'                                    " JavaScript syntax
Plug 'tpope/vim-rails'                                            " Rails syntax
Plug 'vim-ruby/vim-ruby'                                          " Ruby syntax
Plug 'moll/vim-node'                                              " Node.js
Plug 'digitaltoad/vim-pug'                                        " jade/pug syntax
Plug 'Chun-Yang/vim-action-ag'                                    " This plugin map gag to do Ag search.
Plug 'benekastah/neomake'                                         " A plugin for asynchronous :make
Plug 'ervandew/supertab'                                          " Allows you to use <Tab> for all your insert completion needs<Paste>
Plug 'janko-m/vim-test'                                           " A Vim wrapper for running tests on different granularities.
Plug 'junegunn/fzf.vim'                                           " A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " A command-line fuzzy finder
Plug 'l9'                                                         " Utility functions and commands
Plug 'michaeljsmith/vim-indent-object'                            " Defines a new text object representing lines of code at the same indent level
Plug 'rking/ag.vim'                                               " Plugin for ag
Plug 'scrooloose/nerdcommenter'                                   " Easy comments
Plug 'terryma/vim-multiple-cursors'                               " Multiple cursors
Plug 'ton/vim-bufsurf'                                            " Enables surfing through buffers based on viewing history per window
Plug 'tpope/vim-abolish'                                          " Easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-endwise'                                          " Wisely add 'end' in ruby, endfunction/endif/more in vim script, etc.
Plug 'tpope/vim-repeat'                                           " Enable repeating supported plugin maps
Plug 'tpope/vim-surround'                                         " Quoting/parenthesizing made simple
Plug 'tpope/vim-unimpaired'                                       " Pairs of handy bracket mappings
Plug 'easymotion/vim-easymotion'                                  " Easy motion
Plug 'godlygeek/tabular'                                          " Text filtering and alignment
Plug 'jiangmiao/auto-pairs'                                       " Auto Pairs
Plug 'SirVer/ultisnips'                                           " Snippets
Plug 'tpope/vim-vinegar'                                          " netrw improvements
Plug 'milkypostman/vim-togglelist'                                " toggle the location list
Plug 'tpope/vim-fugitive'                                         " toggle the location list
Plug 'nanotech/jellybeans.vim'                                    " colors
Plug 'AndrewRadev/switch.vim'                                     " switch
Plug 'bkad/CamelCaseMotion'                                       " camel case motion
Plug 'christoomey/vim-sort-motion'                                " sort motion
Plug 'AndrewRadev/splitjoin.vim'                                  " Multiple/single-line transitions
Plug 'jparise/vim-graphql'
Plug 'sbdchd/neoformat'

call plug#end()
