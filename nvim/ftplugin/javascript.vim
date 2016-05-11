" Console log from insert mode; Puts focus inside parentheses
imap <buffer> cll console.log();<Esc>==f(a

" Console log from visual mode on next line, puts visual selection inside parentheses
vmap <buffer> cll yocll<Esc>p

" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap <buffer> cll yiwocll<Esc>p

nmap <buffer> gf :OpenJS<CR>
