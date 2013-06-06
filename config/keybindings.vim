" Keyboard-command related settings.
" does not contain plugin-specific settings,
" just 'global' ones.

" fix arrow keys in console mode
if !(has('gui_running') || has('win32'))
  set term=ansi
endif

" After whitespace, insert the current directory into a command-line path
" cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

" Kills Trailing Whitespaces
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

function! SaveCursor()
  " Preparation: save last search, and cursor position.
  let s:_s=@/
  let s:l = line(".")
  let s:c = col(".")
endfunction
command! SaveCursor call SaveCursor()

function! RestoreCursor()
  " Clean up: restore previous search history, and cursor position
  let @/=s:_s
  call cursor(s:l, s:c)
endfunction
command! RestoreCursor call RestoreCursor()

" format the entire file
nmap <silent> <leader>kd :SaveCursor<CR>ggVG=<CR>:KillWhitespace<CR>:nohls<CR>:RestoreCursor<CR>
"

" upper/lower word
nmap <leader>uc mQviwU`Q
nmap <leader>lc mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" Some helpers to edit mode
" http://vimcasts.org/e/14
" nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
" nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
" nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
" nmap <leader>et :tabe <C-R>=expand(':h').'/'<cr>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

"make <c-l> clear the highlight as well as redraw
nnoremap <leader>f :nohls<CR><C-L>
inoremap <leader>f <C-O>:nohls<CR>

" cycle between tabs
" Note that S-TAB does not work in certain consoles (i.e. KDE Konsole)
nnoremap <Tab> gt
nmap <S-Tab> gT

" ;w saves a buffer
map <Leader>w :w!<CR>

" ;q closes a vim-window
map <Leader>q :q!<CR>

" ;x saves and closes a vim-window
map <Leader>x :x!<CR>


map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l

" change the file format to unix
map <Leader>nix :setlocal ff=unix<CR> :w!<CR>

" navigate around in buffers...
map <Leader>n :bnext<CR>
map <Leader>p :bprevious<CR>

" shortcut for alt-tabbing buffers
map <M-`> :b#<cr>
imap <M-`> :b#<cr>

" close all buffers but this one
map <Leader>bo :BufOnly<CR>

" Toggle auto-wrap with F4
map <F4> :set wrap!<cr>

" makes jk leave insert mode (like Esc)
inoremap jk <Esc>
inoremap kj <Esc>

"make Y consistent with C and D
nnoremap Y y$

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Use the system clipboard in Unix
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" Create Blank Newlines and stay in Normal mode
nnoremap <Leader>O O<Esc>
nnoremap <Leader>o o<Esc>

"try to make possible to navigate within lines of wrapped lines
" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Space will toggle folds!
nnoremap <space> za

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h")<CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h")<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Opens a split viewport edit command with the path of the currently edited file filled in
map <Leader>ve :vsplit <C-R>=expand("%:p:h")<CR>
map <Leader>he :hsplit <C-R>=expand("%:p:h")<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=
imap <Leader>= <Esc> <C-w>=

" rotate viewports
map <Leader>r <C-w>r
imap <Leader>r <Esc> <C-w>r

if has("gui_mac") || has("gui_macvim")
  "Key mapping for textmate-like indentation
  nmap <D-[> <<
  nmap <D-]> >>
  vmap <D-[> <gv
  vmap <D-]> >gv

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv

  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
endif

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h")<CR>

" Keep lines that do (or do not) contain last search term
nmap <leader>v/ :v/<c-r>//d<cr>gg
nmap <leader>g/ :g/<c-r>//d<cr>gg

" Shortcut to edit vimrc
if has("win32")
  nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/_vim_files/vimrc<CR>
  nnoremap <silent> <Leader>eg :tabnew<CR>:e ~/_gvimrc<CR>
else
  nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vim/vimrc<CR>
  nnoremap <silent> <Leader>eg :tabnew<CR>:e ~/.gvimrc<CR>
endif

" TODO Mode
nnoremap <silent> <Leader>todo :execute TodoListMode()<CR>

function! TodoListMode()
  e ~/.todo.otl
  Calendar
  wincmd l
  set foldlevel=1
  tabnew ~/.notes.txt
  tabfirst
  " or 'norm! zMzr'
endfunction

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" Paste Mode!  Dang!
nnoremap <silent> <F8> :call Paste_on_off()<CR>
set pastetoggle=<F8>

let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
  if g:paste_mode == 0
    set paste
    let g:paste_mode = 1
  else
    set nopaste
    let g:paste_mode = 0
  endif
  return
endfunc

"map Q to something useful
noremap Q gq

"key mapping for vimgrep result navigation
map <A-o> :copen<CR>
map <A-q> :cclose<CR>
map <A-j> :cnext<CR>
map <A-k> :cprevious<CR>

" Force gf to open in new tabs
nnoremap gf <C-W>gf

" Fix email paragraphs
nnoremap <leader>par :%s/^>$//<CR>

" use C-j and C-k to 'bubble' lines (see
" http://vimcasts.org/episodes/bubbling-text/)
map <C-j> ddp
map <C-k> ddkP

" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
noremap ' `
noremap ` '
