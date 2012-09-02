" Load all files in functions/
for file in split(glob(expand('<sfile>:p:h') . '/functions/*.vim'), '\n')
  exe 'source' file
endfor
