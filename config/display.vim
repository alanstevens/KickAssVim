"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme desert256
endif

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" Set off the other paren
highlight MatchParen ctermbg=4

" status bar
"set statusline+=%f\                                           " filename
"set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
"set statusline+=%h%1*%m%r%w%0*                                " flags
"set statusline+=%=                                            " right align
"set statusline+=%{fugitive#statusline()}                      " git status
"set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
"set statusline+=(%l,%c%V)\ %<%P                               " offset

"statusline setup
set statusline=%f\        "tail of the filename
"set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" TODO check for Git
"set statusline+=[%{GitBranch()}]

set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

"dont load csapprox if there is no gui support - silences an annoying warning
let g:CSApprox_loaded = 1

" adjust highlight color
highlight CursorLine term=none cterm=none ctermbg=3

" we plan to use a dark background
set background=dark

" set English language
if has('unix') || has('mac')
    language en_US.UTF-8
    language messages en_US.UTF-8
else
    language English_United States.1252
    language messages English_United States.1252
endif
set langmenu=non

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

set showbreak=...
"set wrap linebreak nolist

" Vim Tip #989: Word wrap without line breaks
set nowrap
set textwidth=80
set formatoptions=l
set lbr

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
