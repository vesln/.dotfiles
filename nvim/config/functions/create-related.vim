" Open/Create related spec/file, note that this requires the rails plugin
function! s:CreateRelated() abort
  let l:candidates = rails#buffer().alternate_candidates()

  if len(l:candidates) == 0
    echoerr 'No alterantive candidates'
    return
  end

  for candidate in candidates
    if candidate =~ '_spec.rb'
      exec('vsplit ' . candidate)
      return
    endif
  endfor

  exec('vsplit ' . l:candidates[0])
endfunction

command! AC :call <SID>CreateRelated()
