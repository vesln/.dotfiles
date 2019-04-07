" Create test file
function! CreateTestFile()
  if expand('%:p:h') =~ "__tests__"
    return
  endif

  silent exec ':e ' . expand('%:p:h') . '/__tests__/index.test.tsx'
endfunction
