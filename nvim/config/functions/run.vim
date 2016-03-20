function! Run(cmd)
  botright new | resize 40 | call termopen(a:cmd) | startinsert
endfunction

command! -nargs=* -bar Run call Run(<q-args>)
