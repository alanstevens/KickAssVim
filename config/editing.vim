""""""""""""""""""""""""""""""""""""""""
"" This file manages all global editing
"" settings, such as indent size, etc.
""""""""""""""""""""""""""""""""""""""""

" automatically indent lines and try to do it intelligently
set autoindent
set smartindent

" allow backspacing over everything in insert mode
" backspace behaves 'normally'
set backspace=indent,eol,start

set whichwrap+=<,>,h,l   " cursor keys also wrap

" spaces instead of tabs
" prefer 4 spaces
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" automatically reload a file if it's changed outside vim
set autoread

" Avoid vim complains about not written file when jumping
" between buffers using ctags
set autowrite

" wrap settings
set nowrap       " wrap lines rather than use horiz. scrolling
set linebreak    " try not to wrap in the middle of a word
set textwidth=80 " 80-character lines maximum

" format settings
" t - Auto-wrap text using textwidth
" c - Auto-wrap comments using textwidth, inserting the current comment
"     leader automatically.
" r - Automatically insert the current comment leader after hitting <Enter>
"     in Insert mode.
" q - Allow formatting of comments with "gq".
"     Note that formatting will not change blank lines or lines containing
"     only the comment leader. A new paragraph starts after such a line,
"     or when the comment leader changes.
" n - When formatting text, recognize numbered lists.
" 2 - When formatting text, use the indent of the second line of a paragraph
"     for the rest of the paragraph, instead of the indent of the first line.
" 1 - Don't break a line after a one-letter word. It's broken before it
"     instead (if possible).
" set formatoptions=tcrqn21

"dont continue comments when pushing o/O
set formatoptions-=o

" % to bounce from do to end etc.
runtime! macros/matchit.vim

"folding settings
"set foldmethod=marker
"set foldmethod=indent   "fold based on indent
"set fo=l
set foldmethod=syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set grepprg=grep\ -nH\ $*

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Enable mouse support in console
set mouse=a
set ttymouse=xterm2

if $COLORTERM == 'gnome-terminal'
    let g:clipbrdDefaultReg = '+'
endif

" Universal clipboard
set clipboard=unnamed

" Use modeline overrides
set modeline
set modelines=10

" Press F5 to compile and open the error window if there are errors
" map <F5> <ESC>:make<CR><ESC>:botright cwindow<CR>
