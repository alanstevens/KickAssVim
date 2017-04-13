" Keyboard-command related settings.
" does not contain plugin-specific settings,
" just 'global' ones.

" run javascript files
noremap <F5> :call RunJS() <CR>
function! RunJS()
    exec "! node %"
endfunction

" cycle between tabs
" Note that S-TAB does not work in certain consoles (i.e. KDE Konsole)
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" quickly fix spelling errors
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

" navigate viewports with hjkl
noremap <Leader>h <C-W>h
noremap <Leader>j <C-W>j
noremap <Leader>k <C-W>k
noremap <Leader>l <C-W>l

" navigate around in buffers...
noremap <Leader>n :bnext<CR>
noremap <Leader>p :bprevious<CR>

" Toggle auto-wrap with F4
noremap <F4> :set wrap!<CR>

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

" epens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . ShellSeparator()<CR>

" Opens a split viewport edit command with the path of the currently edited file filled in
noremap <Leader>ve :vsplit <C-R>=expand("%:p:h") . ShellSeparator()<CR>
noremap <Leader>he :split <C-R>=expand("%:p:h") . ShellSeparator()<CR>

" Adjust viewports to the same size
" noremap <Leader>= <C-w>=
" imap <Leader>= <Esc> <C-w>=

" rotate viewports
" <Leader>r is used by vroom
" noremap <Leader>r <C-w>r
" imap <Leader>r <Esc> <C-w>r

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


" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
" noremap ' `
" noremap ` '

" Space will toggle folds!
" nnoremap <space> za

" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
