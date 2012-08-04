" OS
let os = substitute(system('uname'), "\n", "", "")

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Include the hot stuff
runtime config/settings.vim
runtime config/plugins.vim
runtime config/functions.vim
runtime config/commands.vim
runtime config/autocmd.vim
runtime config/mappings.vim

" OS specific configurations
if os == 'Darwin'
  runtime config/mac/settings.vim
  runtime config/mac/mappings.vim
  runtime config/mac/commands.vim
else
  runtime config/linux/settings.vim
  runtime config/linux/mappings.vim
  runtime config/linux/commands.vim
endif

" GUI stuff
if has('gui_running')
  runtime config/gui.vim

  if os == 'Darwin'
    runtime config/mac/gui.vim
  else
    runtime config/linux/gui.vim
  endif
endif

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif
