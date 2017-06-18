" Keyboard-command related settings.
" does not contain plugin-specific settings,
" just 'global' ones.

" run javascript files
noremap <F5> :call RunJS() <cr>
function! RunJS()
    exec "! node %"
endfunction

" Move to the start and end of a line like read line
nnoremap <c-a> ^
nnoremap <c-e> $
imap <c-a> <esc>^i
imap <c-e> <esc>$i<right>

" cycle between tabs
" Note that S-TAB does not work in certain consoles (i.e. KDE Konsole)
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" quickly fix spelling errors
imap <c-f> <c-g>u<esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

" navigate viewports with hjkl
noremap <leader>h <C-W>h
noremap <leader>j <C-W>j
noremap <leader>k <C-W>k
noremap <leader>l <C-W>l

" navigate around in buffers...
noremap <leader>n :bnext<cr>
noremap <leader>p :bprevious<cr>

" Toggle auto-wrap with F4
noremap <F4> :set wrap!<cr>

" Create Blank Newlines and stay in Normal mode
nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

" make possible to navigate within wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <esc>gka
inoremap <silent> <Down> <esc>gja

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
noremap N Nzz
noremap n nzz

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<cr>

" Return a path separator on the current OS
" Taken from pathogen
function! ShellSeparator()
  return !exists("+shellslash") || &shellslash ? '/' : '\'
endfunction

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <leader>e
noremap <leader>e :e <C-R>=expand("%:p:h") . ShellSeparator()<cr>

" epens a tab edit command with the path of the currently edited file filled in
" Normal mode: <leader>t
noremap <leader>te :tabe <C-R>=expand("%:p:h") . ShellSeparator()<cr>

" Opens a split viewport edit command with the path of the currently edited file filled in
noremap <leader>ve :vsplit <C-R>=expand("%:p:h") . ShellSeparator()<cr>
noremap <leader>he :split <C-R>=expand("%:p:h") . ShellSeparator()<cr>

" Adjust viewports to the same size
" noremap <leader>= <C-w>=
" imap <leader>= <esc> <C-w>=

" rotate viewports
" <leader>r is used by vroom
" noremap <leader>r <C-w>r
" imap <leader>r <esc> <C-w>r

" Shortcut to edit vimrc
if has('win32') || has ('win64')
  nnoremap <silent> <leader>ev :tabnew<cr>:e ~/vimfiles/vimrc<cr>
else
  nnoremap <silent> <leader>ev :tabnew<cr>:e ~/.vim/vimrc<cr>
endif

" reload vimrc
nnoremap <silent> <leader>rv :so $MYVIMRC<cr>

" map function keys for console usage
map <esc>OP <F1>
map <esc>OQ <F2>
map <esc>OR <F3>
map <esc>OS <F4>
map <esc>[16~ <F5>
map <esc>[17~ <F6>
map <esc>[18~ <F7>
map <esc>[19~ <F8>
map <esc>[20~ <F9>
map <esc>[21~ <F10>
map <esc>[23~ <F11>
map <esc>[24~ <F12>


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
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<cr>
