" Open/Create related spec/file
function! s:CreateRelated()
  let related = s:GetRelatedFile(expand('%'))
  call s:Open(related)
endfunction

function! s:GetRelatedFile(file)
  if match(a:file, '_spec\.rb$') != -1
    let root = match(a:file, '^spec/lib/') != -1 ? '' : 'app/'
    return substitute(substitute(a:file, "_spec.rb", ".rb", ""), 'spec/', root, '')
  else
    let root = match(a:file, '^app') != -1 ? 'app/' : ''
    return substitute(substitute(a:file, ".rb", "_spec.rb", ""), root, 'spec/', '')
  endif
endfunction

function! s:Open(file)
  exec('vsplit ' . a:file)
endfunction

command! AC :call <SID>CreateRelated()
