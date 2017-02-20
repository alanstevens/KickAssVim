" loads color-related options

if !exists("g:syntax_on")
    syntax enable     " Turn on syntax highlighting allowing local overrides
endif

" adjust highlight color
highlight CursorLine term=none cterm=none ctermbg=3

" we plan to use a dark background
set background=dark

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  " colorscheme desert256
endif

" Default color Scheme
colorscheme ir_black

" If in diff mode (vimdiff) use the inkpot color scheme
" that better highlights file differences
if &diff
  colors inkpot    " Vim Tip #1143
endif

if $COLORTERM == 'gnome-terminal'
  " set term=gnome-256color
  " colorscheme desert256
endif

" Switch between light and dark background
" call togglebg#map("<F5>")
" noremap <silent> <F5> :ToggleBG

" Rotate Color Scheme <F6>
let colorlist = ""
noremap <silent> <F6> :let newtheme = RotateColorTheme(0)<CR> :echo newtheme<CR>
noremap <silent> <S-F6> :let newtheme = RotateColorTheme(1)<CR> :echo newtheme<CR>

let themeindex = 0

function! RotateColorTheme(reverse)
  let colorlist = ["ir_black","solarized","zmrok","jellybeans","base16-default","twilight","rootwater","moria","wombat","camo","freya","darkspectrum","liquidcarbon","distinguished","pyte","github","mac_classic"]
  if a:reverse
    let g:themeindex -= 1
  else
    let g:themeindex += 1
  endif
  let themename = get(colorlist, g:themeindex, "NONE")
  if themename == "NONE"
    let g:themeindex = 0
    let themename = colorlist[0]
  endif
  :execute ":colorscheme " . themename
  :execute ":echo '" . themename . "'"
  return themename
endfunction
command! RotateColorScheme call RotateColorTheme(0)
