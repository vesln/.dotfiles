set background=dark
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if !empty($LIGHT_COLORS)
  set background=light
  let g:solarized_contrast=1
  colorscheme PaperColor

  let g:terminal_color_0 = "#002b36"
  let g:terminal_color_1 = "#dc322f"
  let g:terminal_color_2 = "#719e07"
  let g:terminal_color_3 = "#b58900"
  let g:terminal_color_4 = "#268bd2"
  let g:terminal_color_5 = "#d33682"
  let g:terminal_color_6 = "#2aa198"
  let g:terminal_color_7 = "#eee8d5"
  let g:terminal_color_8 = "#002b36"
  let g:terminal_color_9 = "#cb4b16"
  let g:terminal_color_10 = "#586e75"
  let g:terminal_color_11 = "#657b83"
  let g:terminal_color_12 = "#839496"
  let g:terminal_color_13 = "#d33682"
  let g:terminal_color_14 = "#93a1a1"
  let g:terminal_color_15 = "#fdf6e3"
else
  let g:jellybeans_overrides = {
        \    'background': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' },
        \    'SignColumn': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' },
        \}

  colorscheme jellybeans
endif
