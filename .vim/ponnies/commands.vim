" Promotes a variable to RSpec let
command! PromoteToLet :call PromoteToLet()

" Open GitX
" TODO: update, it should work with gitk if no gitx is found
command! Gx execute "!gitx ."

" Toogle cursor column
command! Cc :set cursorcolumn!

" Refresh vimrc
command! CRefresh source $MYVIMRC
