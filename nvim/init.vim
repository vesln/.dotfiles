runtime plugins.vim
runtime config/settings.vim
runtime config/plugins.vim
runtime config/functions.vim
runtime config/commands.vim
runtime config/autocmd.vim
runtime config/mappings.vim

if filereadable(glob('~/.config/nvim/local/init.vim'))
  runtime local/init.vim
endif
