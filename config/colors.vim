" loads color-related options

" we plan to use a dark background
set background=dark

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
  let colorlist = ["ir_black","mac_classic","solarized","base16-default","github","pyte","liquidcarbon","rootwater","twilight","darkspectrum","zmrok","jellybeans","moria","getafe","wombat","freya","camo","desert","desert256","jammy"]
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
