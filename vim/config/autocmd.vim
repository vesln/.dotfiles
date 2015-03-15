" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" PHP - 4 spaces
au FileType php setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" Makrdown - hard wrap at 80
au FileType markdown setlocal textwidth=80

" Python
au FileType python setlocal sw=4 sts=4 et

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" JSON -> JavaScript
au BufEnter *.json setlocal filetype=javascript

" ejs -> HTML
au BufEnter *.ejs setlocal filetype=html

" TSS -> CSS
au BufEnter *.tss setlocal filetype=css

" Enable spell checking when writing a commit message
au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Enable spell checking when writing a note
au FileType notes setlocal spell

" RSpec syntax
autocmd BufNewFile,BufRead *_spec.rb set syntax=rspec

" HAMLc
autocmd BufRead,BufNewFile *.hamlc set ft=haml
