" NERDTree-specific settings.

if has("gui_running")
  noremap <F2> :NERDTreeTabsToggle<CR>
  inoremap <F2> <ESC>:NERDTreeTabsToggle<cr>i
else
  noremap <F2> :NERDTreeToggle<CR>
  inoremap <F2> <ESC>:NERDTreeToggle<cr>i
  " :NERDTreeMirror<CR>
endif


let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2
" show hidden files
" use I to show/hide hidden files and directories
" let NERDTreeShowHidden=1

" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
"
" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
autocmd FocusGained * call s:UpdateNERDTree()

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction
