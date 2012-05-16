" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Include the hot stuff
runtime ponnies/settings.vim
runtime ponnies/plugins.vim
runtime ponnies/functions.vim
runtime ponnies/commands.vim
runtime ponnies/autocmd.vim
runtime ponnies/mappings.vim
runtime ponnies/gui.vim

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif
