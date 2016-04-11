let g:projects = []

" Load all project files
for file in split(glob(expand('~/.dotpriv/vim') . '/projects/*.vim'), '\n')
  exe 'source' file
endfor

" Setup the current project
function! s:SetupProject() abort
  if expand('%:p')
    let l:path = expand('%:p')
  else
    let l:path = getcwd()
  end

  for project in g:projects
    let project_path = projects#{project}#path()

    if l:path =~ project_path
      let g:project = project

      if !exists('g:projects#'.project.'#initialized')
        if exists('*projects#'.project.'#initialize')
          call projects#{project}#initialize()
        endif

        let g:projects#{project}#initialized = 1
      endif

      if exists('*projects#'.project.'#setup')
        call projects#{project}#setup()
      endif
    endif
  endfor
endfunction

au! BufReadPost,BufNewFile,VimEnter * call <SID>SetupProject()
