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

" Gist setup
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" vim notes
let g:notes_directories = ['~/.vimnotes']

" Fzf prefix
let g:fzf_command_prefix = 'Fzf'

" Easy motion leader key
let g:EasyMotion_leader_key = 'm'

" Do not create default mappings
let g:NERDCreateDefaultMappings = 0

" Neomake - open the location list or the quickfix list
let g:neomake_open_list = 2

" Neomake - loclist & quickfix height
let g:neomake_list_height = 5

" Notes: disable smart quotes
let g:notes_smart_quotes = 0

let g:deoplete#enable_at_startup = 1

let g:SuperTabDefaultCompletionType = "<c-n>"
