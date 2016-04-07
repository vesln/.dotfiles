" Disable netrw
let g:loaded_netrw = 1
let g:netrw_nogx = 1

" NERDTree setup
let g:NERDTreeHijackNetrw=0
let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeOpenSingleChildDir=0
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=40

" SuperTab: Top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" CtrlP: Window settings
let g:ctrlp_match_window = 'bottom,order:ttb,min:10,max:10,results:10'

" CtrlP: Use ag
let g:ctrlp_user_command = 'ag --path-to-agignore=~/.agignore %s -l --nocolor --hidden -g ""'

" CtrlP: Do not use cachig
let g:ctrlp_use_caching = 0

" CtrlP: Ignore more stuff
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

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
