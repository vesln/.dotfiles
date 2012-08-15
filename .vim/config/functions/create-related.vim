" Open/Create related spec/file
function! s:CreateRelated()
  let related = s:GetRelatedFile(expand('%'))
  call s:Open(related)
endfunction

function! s:GetRelatedFile(file)
  if match(a:file, '_spec\.rb$') != -1
    return substitute(substitute(a:file, "_spec.rb", ".rb", ""), 'spec/', 'app/', '')
  else
    return substitute(substitute(a:file, ".rb", "_spec.rb", ""), 'app/', 'spec/', '')
  endif
endfunction

function! s:Open(file)
  exec('vsplit ' . a:file)
endfunction

command! AC :call <SID>CreateRelated()
