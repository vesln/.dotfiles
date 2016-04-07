function! s:OpenProject(path, name)
  exec ':tablast'
  exec ':tabe'
  exec ':lcd' . a:path
  exec ':NERDTree'
  exec ':TabooRename ' . a:name
endfunction

command! Dot :call <SID>OpenProject('~/.dotfiles/', 'dotfiles')
command! Mux :call <SID>OpenProject('~/.tmuxinator/', 'tmuxinator')
command! Priv :call <SID>OpenProject('~/.dotpriv/', 'dotpriv')
command! OpenNotes :call <SID>OpenProject('~/.vimnotes/', 'vim-notes')
