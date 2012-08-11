" Disclaimer: this thing is WIP

" A lot stolen from:
" vim-nexus
" (c) Stefan Kanev
" http://github.com/skanev/vim-nexus

" TODO:
" * drop initialized
" * separate the tmux calls from the other logic
" * handle messages better
" * last command should remember commands by type

let s:name = 'timx'
let s:session = ''
let s:initialized = 0

function! s:sendInitializedMessage()
  echohl MoreMsg | echo "Timx: Good to go." | echohl None
endfunction

function! s:created(session)
  let sessions = split(system("tmux list-sessions | cut -f 1 -d :"))

  if index(sessions, a:session) == -1
    return
  end

  let windows = split(system("tmux list-windows -t " . a:session . " | cut -f 2 -d ' '"))

  return index(windows, s:name) >= 0
endfunction

function! s:initialize(session)
  let s:session = a:session
  let s:initialized = 1

  if s:created(a:session)
    call s:sendInitializedMessage()
    return
  end

  if strlen(system('tmux new-session -d -s ' . a:session))
    call system('tmux new-window -t ' . a:session . ' -n ' . s:name)
  else
    call system('tmux rename-window -t ' . a:session . ' ' . s:name)
  end

  call s:sendInitializedMessage()
endfunction

function! s:send(command)
  if !s:initialized
    echohl WarningMsg | echo 'Timx: Not initialized yet. Run `:Timx session-name` to initialize.' | echohl None
    return
  end

  echo a:command

  call system("tmux send-keys -t " . s:session . ":timx C-l C-u " . shellescape(a:command) . " C-m")
endfunction

let s:modes = {}

let s:modes.cucumber = {}
let s:modes.cucumber.matcher = '\.feature$'
let s:modes.cucumber.file = '"bundle exec cucumber " . expand("%") . " --drb"'
let s:modes.cucumber.line = '"bundle exec cucumber " . expand("%") . ":" . line(".") . " --drb"'
let s:modes.cucumber.all = '"bundle exec cucumber"'

let s:modes.rspec = {}
let s:modes.rspec.matcher = '_spec\.rb$'
let s:modes.rspec.file = '"bundle exec rspec --format nested " . expand("%") . " --drb"'
let s:modes.rspec.line = '"bundle exec rspec --format nested " . expand("%") . " --line " . line(".") . " --drb"'
let s:modes.rspec.all = '"bundle exec rspec . --drb"'

let s:modes.mocha = {}
let s:modes.mocha.matcher = '\.test\.js$'
let s:modes.mocha.file = '"./node_modules/.bin/mocha " . expand("%") . ""'
let s:modes.mocha.line = '"./node_modules/.bin/mocha " . expand("%") . ""'
let s:modes.mocha.all = '"./node_modules/.bin/mocha"'

function! s:run(type)
  let commands = {}

  for [mode, definition] in items(s:modes)
    if match(expand("%"), definition.matcher) != -1
      let commands = definition
      break
    endif
  endfor

  if has_key(commands, a:type)
    let command = eval(commands[a:type])
    let g:lastCommand = command
    call s:send(command)
  elseif exists("g:lastCommand")
    call s:send(g:lastCommand)
  else
    echohl ErrorMsg | echo "Timx: I have not idea how to handle that." | echohl None
    return
  end
endfunction

command! -bang -nargs=1 Timx call s:initialize(<q-args>)
command! -bang -nargs=1 TimxSend call s:send(<q-args>)

noremap <expr> <Plug>TimxRunFile <SID>run('file')
noremap <expr> <Plug>TimxRunLine <SID>run('line')
noremap <expr> <Plug>TimxRunAll <SID>run('all')

" vim:set et ft=vim foldmethod=marker ts=2 sts=2 sw=2
