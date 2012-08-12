function! RunTests()
  if filereadable("Rakefile")
    TimxSend rake test
  elseif filereadable("Makefile")
    TimxSend make test
  else
    echohl WarningMsg | echo 'Could not locate Makefile or Rakefile.' | echohl None
  end
endfunction
