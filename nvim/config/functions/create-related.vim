" Open/Create related spec/file
function! s:CreateRelated()
  let related = rails#buffer().alternate_candidates()[0]
  exec('vsplit ' . related)
endfunction

command! AC :call <SID>CreateRelated()
