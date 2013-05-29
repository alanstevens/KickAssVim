" loads display-related options

if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme desert256
endif

set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" Set off the other paren
highlight MatchParen ctermbg=4

"dont load csapprox if there is no gui support - silences an annoying warning
let g:CSApprox_loaded = 1

syntax enable         " Turn on syntax highlighting allowing local overrides

" adjust highlight color
highlight CursorLine term=none cterm=none ctermbg=3

" we plan to use a dark background
set background=dark

" Smoother redraws
set ttyfast

" If in diff mode (vimdiff) use the inkpot color scheme
" that better highlights file differences
if &diff
    colors inkpot    " Vim Tip #1143
endif

" turn off the error beep
set vb t_vb=

"disable visual bell
set visualbell t_vb=

"add some line space for easy reading
set linespace=4

" I don't know what this does HAS
"let g:rct_completion_use_fri = 1

" WTF does this do? HAS
"let ScreenShot = {'Icon':0, 'Credits':0, 'force_background':'#FFFFFF'}

"define :HighlightLongLines command to highlight the offending parts of
"lines that are longer than the specified length (defaulting to 80)
command! -nargs=? HighlightLongLines call s:HighlightLongLines('<args>')

function! s:HighlightLongLines(width)
    let targetWidth = a:width != '' ? a:width : 79
    if targetWidth > 0
        exec 'match Todo /\%>' . (targetWidth) . 'v/'
    else
        echomsg "Usage: HighlightLongLines [natural number]"
    endif
endfunction

" shortmess settings:
" f - use "(3 of 5)" instead of "(file 3 of 5)"
" i - use "[noeol]" instead of "[Incomplete last line]"
" l - use "999L, 888C" instead of "999 lines, 888 characters"
" m - use "[+]" instead of "[Modified]"
" n - use "[New]" instead of "[New File]"
" r - use "[RO]" instead of "[readonly]"
" x - use "[dos]" instead of "[dos format]", "[unix]" instead of "[unix
" format]", and "[mac]" instead of "[mac format]"
" t - truncate file message at the start if it is too long to fit on the
" command-line, "<" will appear in the left most column.
" T - trunctate other messages in the middle if they are too long to fit on
" the command line. "..." will appear in the middle.
" I - don't give the intro message when starting Vim.
set shortmess=filmnrxtTI

" status bar

if has("statusline") && !&cp
  set laststatus=2 " always show the status bar

  "set statusline+=%f\                                           " filename
  "set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
  "set statusline+=%h%1*%m%r%w%0*                                " flags
  "set statusline+=%=                                            " right align
  "set statusline+=%{fugitive#statusline()}                      " git status
  "set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
  "set statusline+=(%l,%c%V)\ %<%P                               " offset

  " Janus default
  " set statusline=%f\ %m\ %r
  " set statusline+=Line:%l/%L[%p%%]
  " set statusline+=Col:%v
  " set statusline+=Buf:#%n
  " set statusline+=[%b][0x%B]

  set statusline=%f\      "tail of the filename
  "set statusline+=%=     "left/right separator
  set statusline+=%c,     "cursor column
  set statusline+=%l/%L   "cursor line/total lines
  set statusline+=\ %P    "percent through file
  set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

  " TODO check for Git
  "set statusline+=[%{GitBranch()}]
endif
