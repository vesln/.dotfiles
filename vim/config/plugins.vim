" Powerline symbols
let g:Powerline_symbols = 'fancy'

" NERDTree use minimal UI
let NERDTreeMinimalUI = 1

" NERDTree ignore list
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.DS_Store']

" Fancy NERDTree
let NERDTreeDirArrows = 0

" Show hidden files
let NERDTreeShowHidden = 1

" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Auto close only {}
let g:AutoPairs = {'{':'}'}

" Command-T show dot files
let g:CommandTAlwaysShowDotFiles = 1

" snipMate directory
let g:snippets_dir = expand('~/.vim/snippets/')

" Top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
