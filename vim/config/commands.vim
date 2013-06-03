" Close hidden buffers
command! CloseHiddenBuffers :call CloseHiddenBuffers()

" Toogle cursor column
command! Cc :set cursorcolumn!

" iPhone build
command! Tiphone :MuxRun titanium build --platform ios --device-family iphone

" iPad build
command! Tipad :MuxRun titanium build --platform ios --device-family ipad

" Titanium clean
command! Tclean :MuxRun titanium clean
