" Keyboard-command related settings.
" does not contain plugin-specific settings,
" just 'global' ones.

" makes jk leave insert mode (like Esc)
" inoremap jk <Esc>
" inoremap kj <Esc>
inoremap jk <Nop>
inoremap kj <Nop>

"make <leader>f clear the highlight as well as redraw
" nnoremap <leader>f :nohls<CR><C-L>
" inoremap <leader>f <C-O>:nohls<CR>

" cycle between tabs
" Note that S-TAB does not work in certain consoles (i.e. KDE Konsole)
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" ;w saves a buffer
" noremap <Leader>w :w!<CR>

" ;q closes a vim-window
" noremap <Leader>q :q!<CR>

" ;x saves and closes a vim-window
" map <Leader>x :x!<CR>
" noremap <Leader>x :CloseWindow<CR>

" function! CloseWindow()
"   if winbufnr(2) == -1
"     " if this window is last on screen quit without warning
"     quit!
"   else
"     hide
"   endif
" endfunction
" command! CloseWindow call CloseWindow()

" run rubocop -a on the current file
" noremap <Leader>rua :!rubocop -a %:p<CR><CR>

" navigate viewports with hjkl
noremap <Leader>h <C-W>h
noremap <Leader>j <C-W>j
noremap <Leader>k <C-W>k
noremap <Leader>l <C-W>l

" navigate around in buffers...
noremap <Leader>n :bnext<CR>
noremap <Leader>p :bprevious<CR>

" Toggle auto-wrap with F4
noremap <F4> :set wrap!<cr>

" New Tab
" nnoremap <silent> <C-t> :tabnew<CR>

" Use the system clipboard in Unix
nnoremap <C-y> "+y
vnoremap <C-y> "+y
" nnoremap <C-p> "+gP
" vnoremap <C-p> "+gP

" Create Blank Newlines and stay in Normal mode
nnoremap <Leader>O O<Esc>
nnoremap <Leader>o o<Esc>

" make possible to navigate within wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
noremap N Nzz
noremap n nzz

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Return a path separator on the current OS
" Taken from pathogen
function! ShellSeparator()
  return !exists("+shellslash") || &shellslash ? '/' : '\'
endfunction

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
noremap <Leader>e :e <C-R>=expand("%:p:h") . ShellSeparator()<CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . ShellSeparator()<CR>

" Opens a split viewport edit command with the path of the currently edited file filled in
noremap <Leader>ve :vsplit <C-R>=expand("%:p:h") . ShellSeparator()<CR>
noremap <Leader>he :hsplit <C-R>=expand("%:p:h") . ShellSeparator()<CR>

" Adjust viewports to the same size
" noremap <Leader>= <C-w>=
" imap <Leader>= <Esc> <C-w>=

" rotate viewports
" <Leader>r is used by vroom
" noremap <Leader>r <C-w>r
" imap <Leader>r <Esc> <C-w>r

" Keep lines that do contain the last search term
nnoremap <leader>v/ :v/<c-r>//d<cr>gg

" Keep lines that do not contain the last search term
nnoremap <leader>g/ :g/<c-r>//d<cr>gg

" Shortcut to edit vimrc
if has("win32")
  nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/_vim_files/vimrc<CR>
else
  nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vim/vimrc<CR>
endif

" reload vimrc
nnoremap <silent> <Leader>rv :so $MYVIMRC<CR>

" map function keys for console usage
map <Esc>OP <F1>
map <Esc>OQ <F2>
map <Esc>OR <F3>
map <Esc>OS <F4>
map <Esc>[16~ <F5>
map <Esc>[17~ <F6>
map <Esc>[18~ <F7>
map <Esc>[19~ <F8>
map <Esc>[20~ <F9>
map <Esc>[21~ <F10>
map <Esc>[23~ <F11>
map <Esc>[24~ <F12>

" use C-j and C-k to 'bubble' lines (see
" http://vimcasts.org/episodes/bubbling-text/)
" noremap <C-j> ddp
" noremap <C-k> ddkP

" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
" noremap ' `
" noremap ` '

" Toggle paste mode
" nnoremap <silent> <F8> :set invpaste<CR>:set paste?<CR>
" inoremap <silent> <F8> <ESC>:set invpaste<CR>:set paste?<CR>

"-----------------------------------------------------------------------------------------------

" shortcut for alt-tabbing buffers
" map <M-`> :b#<cr>
" imap <M-`> :b#<cr>

" Space will toggle folds!
" nnoremap <space> za

" if has("gui_mac") || has("gui_macvim")
"   "Key mapping for textmate-like indentation
"   nmap <D-[> <<
"   nmap <D-]> >>
"   vmap <D-[> <gv
"   vmap <D-]> >gv
"
"   " Command-][ to increase/decrease indentation
"   vmap <D-]> >gv
"   vmap <D-[> <gv
"
"   " Fullscreen takes up entire screen
"   set fuoptions=maxhorz,maxvert
"
"   " Command-Return for fullscreen
"   macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
" endif

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
" cmap <C-P> <C-R>=expand("%:p:h")<CR>

" Force gf to open in new tabs
" nnoremap gf <C-W>gf

" change the file format to unix
" map <Leader>nix :setlocal ff=unix<CR> :w!<CR>

" upper/lower word
" nmap <leader>uc mQviwU`Q
" nmap <leader>lc mQviwu`Q

" upper/lower first char of word
" proper-case word
" nmap <leader>U mQgewvU`Q
" nmap <leader>L mQgewvu`Q

" Some helpers to edit mode
" http://vimcasts.org/e/14
" nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
" nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
" nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
" nmap <leader>et :tabe <C-R>=expand(':h').'/'<cr>

" Swap two words
" nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
" nmap <silent> <leader>ul :t.<CR>Vr=

" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" After whitespace, insert the current directory into a command-line path
" cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : :"\<C-P>"

"map Q to something useful
" noremap Q gq

"key mapping for vimgrep result navigation
" map <A-o> :copen<CR>
" map <A-q> :cclose<CR>
" map <A-j> :cnext<CR>
" map <A-k> :cprevious<CR>
