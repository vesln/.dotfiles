" Disable netrw
let g:loaded_netrw = 1
let g:netrw_nogx = 1
let g:NERDTreeHijackNetrw=0

let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeOpenSingleChildDir=0
let g:NERDTreeQuitOnOpen=1

" Top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Window settings
let g:ctrlp_match_window = 'top,order:ttb,min:20,max:20,results:20'

" Use ag
let g:ctrlp_user_command = 'ag --path-to-agignore=~/.agignore %s -l --nocolor --hidden -g ""'

" Do not use cachig
let g:ctrlp_use_caching = 0

" Ignore more stuff
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" Register Flow as a test runner
let test#runners = {'JavaScript': ['Flow']}
let g:test#runner_commands = ['Flow']

" Add a new neovim strategy
function! NeoVimHeight(cmd)
  botright new | resize 40 | call termopen(a:cmd) | startinsert
endfunction

let g:test#custom_strategies = {'neovimheight': function('NeoVimHeight')}
let g:test#strategy = 'neovimheight'

" Switch mapping
let g:switch_mapping = "-"

" Enable deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" AutoPairs - do not center line
let g:AutoPairsCenterLine = 0

" AutoPairs
let g:AutoPairs = {'{':'}',"'":"'",'"':'"', '`':'`'}

let g:gitgutter_enabled = 0
let g:gitgutter_grep_command = 'grep -e'
