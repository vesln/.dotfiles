set background=dark
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if !empty($LIGHT_COLORS)
  set background=light
  colorscheme one
else
  let g:jellybeans_overrides = {
        \    'background': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' },
        \    'SignColumn': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' },
        \}

  colorscheme jellybeans
endif
