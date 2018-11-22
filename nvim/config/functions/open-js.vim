function! s:error(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
  let v:errmsg = a:msg
endfunction

function! s:findJsPath(name, from)
  let dir = isdirectory(a:from) ? a:from : fnamemodify(a:from, ":h")

  if a:name !~# '^\v(/|\./|\.\./)' && filereadable(dir . "/" . a:name)
    return dir . "/" . a:name
  else
    return node#lib#find(a:name, dir)
  end
endfunction

function! s:OpenJS(name, from, ...)
  if empty(a:name) | return | endif

  let path = s:findJsPath(a:name, a:from)

  if empty(path) && exists('g:js_base_path')
    let path = s:findJsPath(g:js_base_path . substitute(a:name, '\~\/', '/', ''), a:from)
  endif

  if empty(path)
    return s:error("E447: Can't find file \"" . a:name . "\" in path")
  endif

  exe "e " . fnameescape(path)
endfunction

function! s:CreateJS(name, from, ...)
  if empty(a:name) | return | endif

  let dir = isdirectory(a:from) ? a:from : fnamemodify(a:from, ":h")

  if a:name !~# '^\v(/|\./|\.\./)'
    exe "e " . fnameescape(dir . "/" . a:name)
  endif
endfunction

command! OpenJS :call <SID>OpenJS(expand("<cfile>"), bufname("%"))
command! CreateJS :call <SID>CreateJS(expand("<cfile>"), bufname("%"))
