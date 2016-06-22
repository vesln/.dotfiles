function! s:OpenProject(path, name)
  exec ':tablast'
  exec ':tabe'
  exec ':lcd' . a:path
endfunction

command! Dot :call <SID>OpenProject('~/.dotfiles/', 'dotfiles')
