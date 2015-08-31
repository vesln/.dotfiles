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
" * ask before creating a new session
" * .muxrc

let s:name = 'mux'
let s:session = ''
let s:initialized = 0

function! s:sendInitializedMessage()
  echohl MoreMsg | echo "Mux: Good to go." | echohl None
endfunction

function! s:created(session)
  let sessions = split(system("tmux list-sessions | cut -f 1 -d :"))

  if index(sessions, a:session) == -1
    return
  end

  let windows = split(system("tmux list-windows -t " . a:session . " | cut -f 2 -d ' ' | sed 's/.$//'"))

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
  echo a:command

  if !s:initialized
    exec ':!clear && ' . a:command
  else
    call system("tmux send-keys -t " . s:session . ":mux.1 C-l C-u " . shellescape(a:command) . " C-m")
  end
endfunction

let s:modes = {}

let s:modes.cucumber = {}
let s:modes.cucumber.matcher = '^features\/.*\.feature$'
let s:modes.cucumber.file = '"bundle exec cucumber " . expand("%")'
let s:modes.cucumber.line = '"bundle exec cucumber " . expand("%") . ":" . line(".")'
let s:modes.cucumber.all = '"bundle exec cucumber"'

let s:modes.rspec = {}
let s:modes.rspec.matcher = '_spec\.rb$'
let s:modes.rspec.file = '"bundle exec rspec --format documentation " . expand("%")'
let s:modes.rspec.line = '"bundle exec rspec --format documentation " . expand("%") . ":" . line(".")'
let s:modes.rspec.all = '"bundle exec rspec ."'

let s:modes.jest = {}
let s:modes.jest.matcher = '-test\.js$'
let s:modes.jest.file = '"NODE_ENV=test ./node_modules/.bin/jest " . expand("%") . ""'
let s:modes.jest.line = '"NODE_ENV=test ./node_modules/.bin/jest " . expand("%") . ""'
let s:modes.jest.all = '"NODE_ENV=test ./node_modules/.bin/jest"'

let s:modes.mochaRails = {}
let s:modes.mochaRails.matcher = '^spec\/javascripts\/.*\.js$'
let s:modes.mochaRails.file = '"./node_modules/.bin/mocha --opts ./spec/javascripts/mocha.opts " . expand("%") . ""'
let s:modes.mochaRails.line = '"./node_modules/.bin/mocha --opts ./spec/javascripts/mocha.opts " . expand("%") . ""'
let s:modes.mochaRails.all = '"npm test"'

let s:modes.mocha = {}
let s:modes.mocha.matcher = '^test\/.*\.js$'
let s:modes.mocha.file = '"NODE_ENV=test ./node_modules/.bin/mocha " . expand("%") . ""'
let s:modes.mocha.line = '"NODE_ENV=test ./node_modules/.bin/mocha " . expand("%") . ""'
let s:modes.mocha.all = '"NODE_ENV=test ./node_modules/.bin/mocha "'

let s:modes.python = {}
let s:modes.python.matcher = 'test_.*\.py$'
let s:modes.python.file = '"nosetests --rednose -s " . expand("%") . ""'
let s:modes.python.line = s:modes.python.file
let s:modes.python.all = '"nosetests --rednose -s tests/"'

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
    echohl ErrorMsg | echo "Mux: I have not idea how to handle that." | echohl None
  end
endfunction

command! -bang -nargs=1 Mux call s:initialize(<q-args>)
command! -bang -nargs=1 MuxSend call s:send(<q-args>)
command! -bang -nargs=1 MuxRun call s:send(<q-args>)

noremap <expr> <Plug>MuxRunFile <SID>run('file')
noremap <expr> <Plug>MuxRunLine <SID>run('line')
noremap <expr> <Plug>MuxRunAll <SID>run('all')

" vim:set et ft=vim foldmethod=marker ts=2 sts=2 sw=2
