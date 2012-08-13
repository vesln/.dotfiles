function! RunTests()
  if filereadable("Rakefile")
    MuxSend rake test
  elseif filereadable("Makefile")
    MuxSend make test
  else
    echohl WarningMsg | echo 'Could not locate Makefile or Rakefile.' | echohl None
  end
endfunction
