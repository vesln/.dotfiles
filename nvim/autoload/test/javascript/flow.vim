function! test#javascript#flow#executable() abort
  return 'node_modules/.bin/flow'
endfunction

function! test#javascript#flow#build_args(args)
  return a:args
endfunction

function! test#javascript#flow#build_position(type, position)
  return []
endfunction

function! test#javascript#flow#test_file(file) abort
  return 0
endfunction