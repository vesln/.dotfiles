" Insert React display name
"
" Usage:
"
"```
" inoremap <C-d> <C-R>=ReactDisplayName()<CR>
"```
"
" Then press ctrl+d in insert mode
function! ReactDisplayName()
  let displayName = s:GetDisplayName(expand('%:r'))
  return "displayName: '" . displayName . "',"
endfunction

function! s:GetDisplayName(file)
  return substitute(substitute(substitute(a:file, '.*components/', '\1', ''), '\/', '.', 'g'), '\.index$', '', '')
endfunction
