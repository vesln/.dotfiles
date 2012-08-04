for file in split(glob(expand('<sfile>:p:h') . '/functions/*.vim'), '\n')
  exe 'source' file
endfor
