" Disable netrw
let g:loaded_netrw = 1
let g:netrw_nogx = 1

" NERDTree setup
let g:NERDTreeHijackNetrw=0
let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeOpenSingleChildDir=0
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=40

" Register Flow as a test runner
let test#runners = {'JavaScript': ['Flow', 'Npmmocha']}
let g:test#runner_commands = ['Flow']

" Add a new neovim strategy
function! NeoVimHeight(cmd)
  botright new | resize 40 | call termopen(a:cmd) | startinsert
endfunction

let g:test#custom_strategies = {'neovimheight': function('NeoVimHeight')}
let g:test#strategy = 'neovimheight'

" Switch mapping
let g:switch_mapping = "<Leader>-"

" GitGutter
let g:gitgutter_enabled = 0
let g:gitgutter_grep_command = 'grep -e'

" Gist setup
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" vim notes
let g:notes_directories = ['~/.vimnotes']

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

let g:fzf_command_prefix = 'Fzf'

