" OS
let os = substitute(system('uname'), "\n", "", "")

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

" OS specific configurations
if os == 'Darwin'
  runtime ponnies/mac/settings.vim
  runtime ponnies/mac/mappings.vim
  runtime ponnies/mac/commands.vim
else
  runtime ponnies/linux/settings.vim
  runtime ponnies/linux/mappings.vim
  runtime ponnies/linux/commands.vim
endif

" GUI stuff
if has('gui_running')
  runtime ponnies/gui.vim

  if os == 'Darwin'
    runtime ponnies/mac/gui.vim
  else
    runtime ponnies/linux/gui.vim
  endif
endif

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif
