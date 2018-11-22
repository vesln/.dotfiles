" Add a new neovim strategy
function! NeoVimHeight(cmd)
  botright new | resize 40 | call termopen(a:cmd) | startinsert
endfunction
let g:test#custom_strategies = {'neovimheight': function('NeoVimHeight')}
let g:test#strategy = 'neovimheight'
let test#runners = {'JavaScript': ['Npmmocha']}

" Fzf prefix
let g:fzf_command_prefix = 'Fzf'

" Do not create default mappings
let g:NERDCreateDefaultMappings = 0

" Neomake - open the location list or the quickfix list
let g:neomake_open_list = 0

" Neomake - loclist & quickfix height
let g:neomake_list_height = 5
let g:neomake_verbose = 0

" Default completion settings
let g:SuperTabDefaultCompletionType = "<c-n>"

" Do not require a .jsx ext
let g:jsx_ext_required = 0

" Easy motion leader key
let g:EasyMotion_leader_key = ',m'

" Enable smart case
let g:EasyMotion_smartcase = 1

" Disable the shade
let g:EasyMotion_do_shade = 1

" The keys to be used for motion targets (defaults minus ;)
let g:EasyMotion_keys = 'asdfghjklqwertyuiop'

" UltiSnips mappings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'UltiSnipsPrivate']

" Do not map any keys, toggle list
let g:toggle_list_no_mappings = 1

" Allow netrw to delete directory with files
let g:netrw_localrmdir='rm -r'

let g:nvim_typescript#diagnostics_enable = 0
