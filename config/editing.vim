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
set list                          " Show invisible characters

" Vim Tip #989: Word wrap without line breaks
set nowrap                        " don't wrap lines
set textwidth=80                  " 80-character lines maximum
set linebreak                     " try not to wrap in the middle of a word
set showbreak=...

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" automatically reload a file if it's changed outside vim
" set autoread " set in sensible.vim

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

" Don't continue comments when pushing o/O
set formatoptions-=o

" % to bounce from do to end etc.
" runtime! macros/matchit.vim " set in sensible.vim

"folding settings
set foldmethod=syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "don't fold by default

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

" Use English for spellchecking, but don't spellcheck by default
if version >= 700
  " set spl=en spell
  " set spell spelllang=en_us
  " set spell

  " press CTRL-N or CTRL-P in insert-mode to complete the word you're typing
  set complete+=kspell

  " Notes on spell:
  " cursor over a misspelled word and type zg to add it to the dictionary.
  " use z=, and Vim will suggest a list of alternatives
  " hit Enter if none of the suggestions work, or enter the number for the correct word.
  " ]s will move the cursor to the next misspelled word. [s will move the cursor back previous misspelled words.
endif

" toggle spell checking
nn <F7> :set spell! spell? spelllang=en_us<CR>
" turn off spelling by default
set nospell

" Enable mouse support in console
" This will not work if you have: set term=ansi
set mouse=a

if $COLORTERM == 'gnome-terminal'
  let g:clipbrdDefaultReg = '+'
endif

" Universal clipboard
set clipboard=unnamed

" Use the system clipboard in Unix
nnoremap <C-y> "+y
vnoremap <C-y> "+y
" nnoremap <C-p> "+gP
" vnoremap <C-p> "+gP

" Use modeline overrides
set modeline
set modelines=10

