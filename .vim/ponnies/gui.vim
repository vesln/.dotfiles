if !has("gui_running")
  finish
endif

" Hide toolbar and menubar
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r

" Colors
colors lin

" Font
set guifont=Monaco:h12

" Turn off blinking in normal mode
set gcr=n:blinkon0
