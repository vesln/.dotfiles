call plug#begin('~/.config/nvim/plugged')

" Syntax
Plug('ekalinin/Dockerfile.vim')
Plug('fatih/vim-go')
Plug('kchmck/vim-coffee-script')
Plug('keith/rspec.vim')
Plug('mxw/vim-jsx')
Plug('pangloss/vim-javascript')
Plug('tpope/vim-rails')
Plug('vim-ruby/vim-ruby')

" Colors
Plug('altercation/vim-colors-solarized')
Plug('nanotech/jellybeans.vim')
Plug('noahfrederick/vim-noctu')

" Core
Plug('AndrewRadev/splitjoin.vim')
Plug('AndrewRadev/switch.vim')
Plug('Chun-Yang/vim-action-ag')
Plug('airblade/vim-gitgutter')
Plug('benekastah/neomake')
Plug('ervandew/supertab')
Plug('gcmt/taboo.vim')
Plug('int3/vim-extradite')
Plug('itspriddle/vim-marked')
Plug('janko-m/vim-test')
Plug('kana/vim-smartword')
Plug('l9')
Plug('mattn/gist-vim')
Plug('michaeljsmith/vim-indent-object')
Plug('rizzatti/dash.vim')
Plug('rking/ag.vim')
Plug('scrooloose/nerdcommenter')
Plug('scrooloose/nerdtree')
Plug('terryma/vim-expand-region')
Plug('terryma/vim-multiple-cursors')
Plug('ton/vim-bufsurf')
Plug('tpope/vim-abolish')
Plug('tpope/vim-endwise')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-surround')
Plug('tyru/open-browser.vim')
Plug('vim-scripts/YankRing.vim')
Plug('xolox/vim-misc')
Plug('xolox/vim-notes')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
