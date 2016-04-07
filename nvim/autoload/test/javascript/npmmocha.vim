if !exists('g:test#javascript#npmmocha#file_pattern')
  let g:test#javascript#npmmocha#file_pattern = '\vspec?/.*\.(js|jsx|coffee)$'
endif

function! test#javascript#npmmocha#test_file(file) abort
  return a:file =~# g:test#javascript#npmmocha#file_pattern
endfunction

function! test#javascript#npmmocha#build_position(type, position) abort
  if a:type == 'nearest'
    let name = s:nearest_test(a:position)
    if !empty(name)
      let name = '--grep '.shellescape(test#base#escape_regex(name), 1)
    endif
    return [a:position['file'], name]
  elseif a:type == 'file'
    return [a:position['file']]
  else
    return []
  endif
endfunction

function! test#javascript#npmmocha#build_args(args) abort
  let args = a:args

  if test#base#no_colors()
    let args = ['--no-colors'] + args
    let args = args + ['|', 'sed -e "s///g"']
  endif

  return args
endfunction

function! test#javascript#npmmocha#executable() abort
  return 'npm run mocha --'
endfunction

function! s:nearest_test(position)
  let name = test#base#nearest_test(a:position, g:test#javascript#patterns)
  return join(name['namespace'] + name['test'])
endfunction
