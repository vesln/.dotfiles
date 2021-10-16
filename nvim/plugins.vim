call plug#begin('~/.config/nvim/plugged')

Plug 'dag/vim-fish'                                               " Fish syntax
Plug 'ekalinin/Dockerfile.vim'                                    " Dockerfile syntax
Plug 'fatih/vim-go'                                               " Go syntax
Plug 'kchmck/vim-coffee-script'                                   " CoffeeScript syntax
Plug 'keith/rspec.vim'                                            " RSpec syntax
Plug 'HerringtonDarkholme/yats.vim'                               " JavaScript syntax
Plug 'yuezk/vim-js'                                               " More JavaScript
Plug 'tpope/vim-rails'                                            " Rails syntax
Plug 'vim-ruby/vim-ruby'                                          " Ruby syntax
Plug 'tpope/vim-haml'                                             " HAML syntax
Plug 'jparise/vim-graphql'                                        " GraphQL syntax
Plug 'moll/vim-node'                                              " Node.js
Plug 'Chun-Yang/vim-action-ag'                                    " This plugin map gag to do Ag search.
Plug 'ervandew/supertab'                                          " Allows you to use <Tab> for all your insert completion needs<Paste>
Plug 'janko-m/vim-test'                                           " A Vim wrapper for running tests on different granularities.
Plug 'junegunn/fzf.vim'                                           " A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " A command-line fuzzy finder
Plug 'vim-scripts/l9'                                             " Utility functions and commands
Plug 'michaeljsmith/vim-indent-object'                            " Defines a new text object representing lines of code at the same indent level
Plug 'rking/ag.vim'                                               " Plugin for ag
Plug 'scrooloose/nerdcommenter'                                   " Easy comments
Plug 'terryma/vim-multiple-cursors'                               " Multiple cursors
Plug 'tpope/vim-abolish'                                          " Easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-endwise'                                          " Wisely add 'end' in ruby, endfunction/endif/more in vim script, etc.
Plug 'tpope/vim-repeat'                                           " Enable repeating supported plugin maps
Plug 'tpope/vim-surround'                                         " Quoting/parenthesizing made simple
Plug 'tpope/vim-unimpaired'                                       " Pairs of handy bracket mappings
Plug 'tpope/vim-vinegar'                                          " netrw improvements
Plug 'tpope/vim-fugitive'                                         " git wrapper
Plug 'easymotion/vim-easymotion'                                  " Easy motion
Plug 'jiangmiao/auto-pairs'                                       " Auto Pairs
Plug 'SirVer/ultisnips'                                           " Snippets
Plug 'nanotech/jellybeans.vim'                                    " colors
Plug 'bkad/CamelCaseMotion'                                       " camel case motion
Plug 'christoomey/vim-sort-motion'                                " sort motion
Plug 'sbdchd/neoformat'                                           " Code formatting
Plug 'vim-scripts/DeleteTrailingWhitespace'                       " Delete trailing whitespace
Plug 'mkitt/tabline.vim'                                          " Tab labels
Plug 'Shougo/deoplete.nvim'                                       " Autocomplete
Plug 'dense-analysis/ale'                                         " Syntax checks
Plug 'NLKNguyen/papercolor-theme'                                 " Light colors
Plug 'majutsushi/tagbar'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/goyo.vim'
Plug 'rakr/vim-one'
Plug 'tomlion/vim-solidity'

call plug#end()
