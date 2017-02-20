" This file manages all global editing
" settings, such as indent size, etc.

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" automatically indent lines and try to do it intelligently
set smartindent

" cursor keys also wrap
set whichwrap+=<,>,h,l

" Whitespace
set tabstop=4                     " a tab is four spaces
set shiftwidth=4                  " an autoindent (with <<) is four spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set softtabstop=4

" Vim Tip #989: Word wrap without line breaks
set nowrap                        " don't wrap lines
set textwidth=80                  " 80-character lines maximum
set linebreak                     " try not to wrap in the middle of a word
set showbreak=...

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" automatically reload a file if it's changed outside vim
set autoread

" Avoid vim complains about not written file when jumping
" between buffers using ctags
set autowrite

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

set formatoptions+=l

"dont continue comments when pushing o/O
set formatoptions-=o

" % to bounce from do to end etc.
runtime! macros/matchit.vim

"folding settings
set foldmethod=syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set grepprg=grep\ -nH\ $*

" set English language
if has('unix') || has('mac')
  language en_US.UTF-8
  language messages en_US.UTF-8
else
  language English_United States.1252
  language messages English_United States.1252
endif
set langmenu=non

" Use english for spellchecking, but don't spellcheck by default
" if version >= 700
"   set spl=en spell
"   set nospell
" endif

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
