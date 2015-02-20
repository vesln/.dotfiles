" Powerline symbols
let g:Powerline_symbols = 'fancy'

" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

let g:AutoPairs = {}

" Top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

 let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*,**/vendor/*"
 let g:CommandTFileScanner="find"

" Command-T settings for iTerm
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" Command-T min height
let g:CommandTMinHeight = 7

" Switch vim default mapping
let g:switch_mapping = "-"
