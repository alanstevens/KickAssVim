" loads display-related options

set number         " show line numbers
" set ruler " set in sensible.vim         " display coordinates in status bar
set rulerformat=%=%l/%L " show current line info (current/total)
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set showmode       " display the current mode in the status bar
set title          " show file in titlebar
set cursorline     " highlight current line

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Set off the other paren
highlight MatchParen ctermbg=4

"dont load csapprox if there is no gui support - silences an annoying warning
let g:CSApprox_loaded = 1

" Smoother redraws
set ttyfast

" allow lots of tabs
" set tabpagemax=20 "set in sensible.vim
"
" turn off the error beep
set vb t_vb=

"disable visual bell
set visualbell t_vb=

"add some line space for easy reading
set linespace=4

" When lines are cropped at the screen bottom, show as much as possible "
" set display=lastline " set in sensible.vim

" Removes dollar signs from end of lines
set nolist

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
" Do I need any of this since I'm using airline?
if has("statusline") && !&cp
  " set laststatus=2 set in sensible.vim " always show the status bar

  "set statusline+=%f\                                           " filename
  "set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
  "set statusline+=%h%1*%m%r%w%0*                                " flags
  "set statusline+=%=                                            " right align
  "set statusline+=%{fugitive#statusline()}                      " git status
  "set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
  "set statusline+=(%l,%c%V)\ %<%P                               " offset

  set statusline=%f\      "tail of the filename
  "set statusline+=%=     "left/right separator
  set statusline+=%c,     "cursor column
  set statusline+=%l/%L   "cursor line/total lines
  set statusline+=\ %P    "percent through file
  set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

  " TODO check for Git
  "set statusline+=[%{GitBranch()}]

  " enable narrow cursor in insert mode:
  if has('nvim')
      let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
  endif

  " augment status line
  function! ETry(function, ...)
    if exists('*'.a:function)
      return call(a:function, a:000)
    else
      return ''
    endif
  endfunction
  set statusline=[%n]\ %<%.99f\ %h%w%m%r%{ETry('CapsLockStatusline')}%y%{ETry('rails#statusline')}%{ETry('fugitive#statusline')}%#ErrorMsg#%*%=%-16(\ %l,%c-%v\ %)%P
endif
