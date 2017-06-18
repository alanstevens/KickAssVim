" loads color-related options

" this is set in sensible.vim
" if !exists("g:syntax_on")
"     syntax enable     " Turn on syntax highlighting allowing local overrides
" endif

" adjust highlight color
highlight CursorLine term=none cterm=none ctermbg=3

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
endif

" If in diff mode (vimdiff) use the inkpot color scheme
" that better highlights file differences
if &diff
  colors inkpot    " Vim Tip #1143
endif

" Rotate Color Scheme <F6>
let colorlist = ""
"if has("gui_mac") || has("gui_macvim")
if has("gui_running")
    noremap <silent> <F6> :let newtheme = RotateColorTheme(0)<CR> :echo newtheme<CR>
    noremap <silent> <S-F6> :let newtheme = RotateColorTheme(1)<CR> :echo newtheme<CR>
endif

let themeindex = 0

function! RotateColorTheme(reverse)
  let colorlist = ["ir_black","gruvbox","badwolf","solarized","zmrok","jellybeans","base16-default","twilight","rootwater","moria","wombat","camo","freya","darkspectrum","liquidcarbon","pyte","github","mac_classic"]
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

" Neovim
if has('nvim')
    set termguicolors
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
endif
