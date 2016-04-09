let g:projects = []

" Load all project files
for file in split(glob(expand('<sfile>:p:h') . '/projects/*.vim'), '\n')
  exe 'source' file
endfor

" Setup the current project
function! s:SetupProject() abort
  let l:path = expand('%:p')

  for project in g:projects
    let project_path = projects#{project}#path()

    if l:path =~ project_path
      let g:project = project
      call projects#{project}#setup()
    endif
  endfor
endfunction

au! BufReadPost,BufNewFile * call <SID>SetupProject()
