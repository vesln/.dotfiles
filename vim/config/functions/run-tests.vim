function! RunTests()
  if filereadable("Rakefile")
    MuxRun rake test
  elseif filereadable("package.json")
    MuxRun npm test
  elseif filereadable("setup.py")
    MuxRun nosetests --rednose -s tests/
  else
    echohl WarningMsg | echo 'Could not locate package.json or Rakefile.' | echohl None
  end
endfunction
