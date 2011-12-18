""""""""""""""""""""""""""""""""""""""""
"" Keyboard-command related settings.
"" does not contain plugin-specific
"" settings, just 'global' ones.
""""""""""""""""""""""""""""""""""""""""

" fix arrow keys in console mode
if !(has('gui_running') || has('win32'))
    set term=ansi
endif


" Note that S-TAB does not work in certain consoles (i.e. KDE Konsole)
nnoremap <Tab> gt
nmap <S-Tab> gT

" ;w saves a buffer
map <Leader>w :w!<CR>

" ;q closes a vim-window
map <Leader>q :q!<CR>

" ;x saves and closes a vim-window
map <Leader>x :x!<CR>

" navigate among windows using ;[hjkl]
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

" Toggle auto-wrap with F4
map <F4> :set wrap!<cr>

" makes jk leave insert mode (like Esc)
inoremap jk <Esc>
inoremap kj <Esc>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"key mapping for vimgrep result navigation
map <A-o> :copen<CR>
map <A-q> :cclose<CR>
map <A-j> :cnext<CR>
map <A-k> :cprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Use the system clipboard in Unix
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" Force gf to open in new tabs
nnoremap gf <C-W>gf

" Create Blank Newlines and stay in Normal mode
nnoremap <Leader>O O<Esc>
nnoremap <Leader>o o<Esc>

if has("win32")
    nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/_vimrc<CR>
    nnoremap <silent> <Leader>eg :tabnew<CR>:e ~/_gvimrc<CR>
else
    nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>
    nnoremap <silent> <Leader>eg :tabnew<CR>:e ~/.gvimrc<CR>
endif

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

" Fix email paragraphs
nnoremap <leader>par :%s/^>$//<CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h")<CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h")<CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h")<CR>

" Keep lines that do (or do not) contain last search term
nmap <leader>v/ :v/<c-r>//d<cr>gg
nmap <leader>g/ :g/<c-r>//d<cr>gg

" Rotate Color Scheme <F6>
let colorlist = ""
nnoremap <silent> <F6> :let newtheme = RotateColorTheme(0)<CR> :echo newtheme<CR>
nnoremap <silent> <S-F6> :let newtheme = RotateColorTheme(1)<CR> :echo newtheme<CR>

let themeindex = 0

function! RotateColorTheme(reverse)
    let colorlist = ["ir_black","solarized","mac_classic","darkspectrum","inkpot","freya","twilight","darkZ","herald","jammy","tir_black","zmrok","camo","earendel","jellybeans","moria","rootwater","vividchalk","wombat","desert","desert256"]
    if a:reverse
        let g:themeindex -= 1
    else
        let g:themeindex += 1
    endif
    let themestring = get(colorlist, g:themeindex, "NONE")
    if themestring == "NONE"
        let g:themeindex = 0
        let themestring = colorlist[0]
    endif
    :execute ":colorscheme ".themestring
    return themestring
endfunction

" Open Url on this line with the browser \w
" TODO: set the browser based on the platform. HAS
"map <Leader>w :call Browser ()<CR>

"function! Browser ()
"    let line = getline (".")
"    let line = matchstr (line, "http[^   ]*")
"    exec "!konqueror ".line
"endfunction

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

" Paste Mode!  Dang! <F10>
nnoremap <silent> <F10> :call Paste_on_off()<CR>
set pastetoggle=<F10>

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

if has("gui_mac") || has("gui_macvim")
    "mapping for command key to map navigation thru display lines instead
    "of just numbered lines
    vmap <D-j> gj
    vmap <D-k> gk
    vmap <D-4> g$
    vmap <D-6> g^
    vmap <D-0> g^
    nmap <D-j> gj
    nmap <D-k> gk
    nmap <D-4> g$
    nmap <D-6> g^
    nmap <D-0> g^

    "Key mapping for textmate-like indentation
    nmap <D-[> <<
    nmap <D-]> >>
    vmap <D-[> <gv
    vmap <D-]> >gv

    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert

    " Command-Return for fullscreen
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

    " Command-][ to increase/decrease indentation
    vmap <D-]> >gv
    vmap <D-[> <gv

    " Map Command-# to switch tabs
    map  <D-0> 0gt
    imap <D-0> <Esc>0gt
    map  <D-1> 1gt
    imap <D-1> <Esc>1gt
    map  <D-2> 2gt
    imap <D-2> <Esc>2gt
    map  <D-3> 3gt
    imap <D-3> <Esc>3gt
    map  <D-4> 4gt
    imap <D-4> <Esc>4gt
    map  <D-5> 5gt
    imap <D-5> <Esc>5gt
    map  <D-6> 6gt
    imap <D-6> <Esc>6gt
    map  <D-7> 7gt
    imap <D-7> <Esc>7gt
    map  <D-8> 8gt
    imap <D-8> <Esc>8gt
    map  <D-9> 9gt
    imap <D-9> <Esc>9gt

    " Command-Option-ArrowKey to switch viewports
    map <D-M-Up> <C-w>k
    imap <D-M-Up> <Esc> <C-w>k
    map <D-M-Down> <C-w>j
    imap <D-M-Down> <Esc> <C-w>j
    map <D-M-Right> <C-w>l
    imap <D-M-Right> <Esc> <C-w>l
    map <D-M-Left> <C-w>h
    imap <D-M-Left> <C-w>h

    " Adjust viewports to the same size
    map <Leader>= <C-w>=
    imap <Leader>= <Esc> <C-w>=
endif
